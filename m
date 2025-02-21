Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0301FECA2
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 06:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740121134; cv=none; b=V07doDnRAJxu55N5r4bDTSn0oMqRBaWHCIhad3Lf1Gay8hSrDJWAbzYkjkWnW9A3UddzqfvG4RdAWsRKW58ONF4W332XPEAVBXtyBnTOrJHVLd4SyaLJgrQhH/SEU9t8Kwa5eyd/F1vHP/qj4zA1d67w/pbk+m9ttZFtZ5Vd41A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740121134; c=relaxed/simple;
	bh=mvMG4XQqSCOeAKc+VoCNJ5865b5Y9XbP7UdOK4SGzIw=;
	h=To:Subject:From:Message-Id:Date; b=Bpa1zGGvf2S8ABd+dBA4hS1zWewbgRkWByRKIwZA8aMqrciUghQvSdqGldZz+VlLu6b8utaTGcfgBfpCQf5H4u6DuVJFSATiFX2hEivbkK8HZ00QdYThZxrdcsnUXBTXu94C9Nz+2z+UtsjO6+Jn+yH66bjAXu5bkd92iRRBRIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2Oeq21h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2Oeq21h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB1CC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 06:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740121133;
	bh=mvMG4XQqSCOeAKc+VoCNJ5865b5Y9XbP7UdOK4SGzIw=;
	h=To:Subject:From:Date:From;
	b=b2Oeq21hylg/G6jUw8EGMGZmqK/Rkjf7nYf6vI9pTEofQgZ+njcs0FcdvAeicERU5
	 r+f131nhivd7xQlo6JSijD4kw0IGj/bRAVsD+BbAeb8siAfdZgeYuLVnJceHDrjV5u
	 hRIFIQIap1CDHMyzsT7TlE+58j6kh8MndbPYK5I3M7re+5BSeklqgT4W7lP36Sgrab
	 Ojc2dYOO5jouCoAywbVC6Uw/ZET/B2C0oQl021zMJsKijRQwAHueeJd2OqEBnmU4ow
	 aVzS9oLicEt+WWnGRNKj8TsE8ypcNp0/SETOKOIzz6J+o+wFFFpfafyF2InHHpZCPF
	 6iuNELc+7b/cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924A2C021AA
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 06:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174012113359.31685.16727582395731660428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a8cfd59861fe8ec6ee9aa48e72c381fe3352a3ca1f483ac22d6510ea63c2cfe
Date: Fri, 21 Feb 2025 06:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740121133
