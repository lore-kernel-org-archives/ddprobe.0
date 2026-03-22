Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8551B7F4
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774196094; cv=none; b=OtG1VhMGMvuMczqYNMW6q2WiiImiZ+v3BQhzslCO9WZ0/NB/Ym7GcVvUprNR+0kyHT1vveMKsO5lkdS1Y8wY/uBUqyUhjo9lUVmCacbJ+f5jYmSxfIMBS7iLuHyqTcotAZoQKXuAYJXBAmpKpTVA6l+Q+g7qNacRsCyUi2X0I4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774196094; c=relaxed/simple;
	bh=HKMGdwWuww2PUH0z4u/YiJmzDyfZBmEIGGisrw4Zlqs=;
	h=To:Subject:From:Message-Id:Date; b=he5hkXbWjyqSKDWDuvvCNnKqGbB5FtGEbtuTEii3MOwS4RJf6ecIPZb8KVVQhFxxCZjmXzQ2LA3UBJdeJKwoAHEiXPxcVAbZgtkNOSF3kyVuT4m3rT6HKmAw1BSV3YwcyTbMm09xwvOseO29EPSZaFLUBHibs+2oTo+YIo/BthM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApJ/yAVe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApJ/yAVe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CEEC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774196093;
	bh=HKMGdwWuww2PUH0z4u/YiJmzDyfZBmEIGGisrw4Zlqs=;
	h=To:Subject:From:Date:From;
	b=ApJ/yAVeFmcu1dJ6/e3YzSB410Zf4DPa/dcS+H2OHiXWEbG3q6DzAfadyuWNacse6
	 Z4eUx8V1MTSr88xbgK69I8s1W4pOacpYtkLwBpZnkq/14ql6alIQfP2Jz6c0Fs3B8D
	 WlfgxRnfWAo5S9V2EpN3alDgNOs9Nq5kYQt0p7VK1OsVINcWlF44u9jYyDM+KS2P9f
	 sLiTLIxqiIWWmrVyPXx25F+3QYILnvOT9mO4mvM3IbsvW9CkdmC0QroCzclKR+Pw+Q
	 Fj3pZT8JtdopWbfEnOUDUZnvuMmKQPud7U0wgTyFAxOjlWwQDKX67tFfnqMYR3jkAu
	 luxIluE1vBjxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965E2FC72C4
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177419609358.29066.10400420850795701403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0ef823c97dad953a0bf2094c6d88d5115ad174d1d8f39f3579852a16107d13c
Date: Sun, 22 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774196093
