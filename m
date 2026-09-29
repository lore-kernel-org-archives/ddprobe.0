Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B03D46EF6A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790722834; cv=none; b=MD+mfoOpZmcfVDNgsogGByfbK5xZbRiZwQRDkhGnqF81vGrFNPOYz+LFZDrP51L/RnJlqwN6GPJ7UNaYwcd/Lzd8sDiMl6R3gBws7eBf8CkLP9OWnZOebD6SgCa2Z9liFGWAx86xNy7/JnNCafwLPafQTTVuct0/yYaixm0dstA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790722834; c=relaxed/simple;
	bh=T/heI7LSlDBUcTR8pGFeikm77D250Hwq6yqs+bk/OS0=;
	h=To:Subject:From:Message-Id:Date; b=cQkM+yxbK8u64/C+1l3qjCHDbtgbpR5yCN8NRxzhkVESw7Esz3Zv13VZrMWEvaY9sDfKVk2fe0O0mLjznh1YYJb6r4OtSOeb4LfVHaSxsM0mw3iTWZzCNjUetcmEzNT/3dhoq3P9xOJ3B6xAI7BkTOYoHMsKx9m4zpkj1RQKcxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtyjrOZr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtyjrOZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6E5C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790722833;
	bh=T/heI7LSlDBUcTR8pGFeikm77D250Hwq6yqs+bk/OS0=;
	h=To:Subject:From:Date:From;
	b=EtyjrOZr8AY58CssTdQv3nMr28WiiwrQOqVjkcHI85zT0ZiNG0n2Fsb4KBpDKSEKW
	 x47uHPIcpRnpvPJVwqFQsonL3R/do3HoQ5tKBJZTLq7RT9VR2tQsNH/70ktFvqkqBU
	 1Nv5Dg04/btqUVsLvPVSsZ4elECfLyKJDN8VPE1m8OEvJVAccyeBjWsNx1v0AnE1Vp
	 9E6DSYR1Vsl06EbC3tmasNshhbJI6YKYT9C8d0qi/V6uRdw/kVRQ1o3GzOnr4dJlGa
	 2GnOWxsfiblklEV4C8DhlnRrosUJt5AJfHHvUGKmIz0s6AbVdEALN2nFG+G5UeZlyB
	 YAyDbjXYlQElg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9643CA5FB1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179072283368.17142.7927741762730237111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9421dc27cc4a12ab08ae7d49fc5db722e36b16f9181fb674f93b09b71c01a896
Date: Tue, 29 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790722833
