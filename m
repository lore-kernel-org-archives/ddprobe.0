Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C08F2620E5
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 18:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741717135; cv=none; b=XMCTMn3MDpQThtMoSHYI2DjvrMRXEIlasnlj5N5G8E8c/SRLJcYrKr34U/UsBhO5IwpRZbrUtMXf0vv0DZZ+YUMYNL4VYjc5DtLpoYdDQXCoGvk3AxLSIowSMl5h+885FOePpqxVjQfV9Ni/nUofHhcIijBae6TM3hLrj0NKBxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741717135; c=relaxed/simple;
	bh=LyPyEaLHkOEBJt8GGbxfH0wzIPdLneejgHAFzJST7Ic=;
	h=To:Subject:From:Message-Id:Date; b=MV7Jft1Q5hJr+ZsW40Ep3Q5yUC09pYhg46kvZj124Axf7JiFY+/e7KPwDzhtwGt1UTG3ImvAUV/fHhVfmFq4U3Q+CY2VG23dNvNyVFR5qSDZ+BTmXpfrlGp9BBv6Vu+X1TjJHar6Y5/TBpoXsndqoSeogqXT2/wvf0UPjdyexTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a44gRU6W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a44gRU6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62FAC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 18:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741717133;
	bh=LyPyEaLHkOEBJt8GGbxfH0wzIPdLneejgHAFzJST7Ic=;
	h=To:Subject:From:Date:From;
	b=a44gRU6WwBOZSFWvaC3mZV+ijyM0/hCIqB+WDDMAGSKEZGuNG44HTfNlD/GRaEjA+
	 dv968IdII+xeojg6/fGj6GZ0ELR93S/6g5qM/z73QACeNr+dI0pKcensqv7loTCpR2
	 CBOxTY766XrG047CGEFVU98vQ7qiO5p9dxnDjfIOjDFHDWkEwX0QJONu8PA5HxHmVa
	 QDw3iiv0lvL0TVnLuCWoHjZ1UbLs3pz4xqTLzbhg/yzEuo0o2nBqVquFSbKrnJQCBm
	 adhB29fWwgChyCQp+e2OD9CYM20xR59DFQOn/cyDZirG3zkv8qBxZ63SHf6sze3XzA
	 yikxe1hZnUsrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F92C35FF2
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 18:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174171713359.20834.18370270958662308462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a0f65ef976c61e988172e0013771aee1ab5644d3a13f0c8785281effa3064f4
Date: Tue, 11 Mar 2025 18:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741717133
