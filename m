Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189F913A265
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757434194; cv=none; b=c0U/zYu2g/aSA/CllpleUw8wmkFsLwP2G80K3z1qVicNaf5rE7EKqV5lguiVXqnL449LTKEKUnSULnU8mKtVOJ//lUevzsWH6CtTqQhfr6/xE8cPS2MAMTqH05z31l0/Cr5B53m3zd+PdbrL3v/KASHBryYO3JzZIPSi8hYK0Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757434194; c=relaxed/simple;
	bh=xE4R2WWrotoqBrKgPxdxU1heLXkczUNY9704lG6ZAKY=;
	h=To:Subject:From:Message-Id:Date; b=u+cSNLph7srq7BPIzr/n6G/0WXyYNDUiYZduqkXI77ZkC39p9HT94dpK+HOBzturOoKBNoS4zKgSvXN3KoM9Ssdx46+L6ovNMuRMbhUh4EOCuGFTb8WYpLQwfVyRlv6i9KRtaD+kUuv6W0MOygFiZKtGRV+7eXfc1jFVTlMBLT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WtrSVZKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WtrSVZKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A474AC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757434193;
	bh=xE4R2WWrotoqBrKgPxdxU1heLXkczUNY9704lG6ZAKY=;
	h=To:Subject:From:Date:From;
	b=WtrSVZKGj+AvrpAXNjHgJB2DdLu6TYihorMLU9xeOlPMG55NNdKF23HQ/wkDo05bs
	 cgE4acP6cIWjOgQyJXxcpFDEkxqALyWbiRN2MsEr8laYvb86IIL+UbKeLOJ7K2vKwY
	 /HLtgwO3ddmaVD/c+kor6al0NVHTIvKUdp5P8seFp2Co12NeU+9ttYI/2Fl8f8YV1/
	 SfOOKuLKLhuTTdP6Jmt+VwigzJvjonjGfH61pbo4LGZSfJMk/SOhxnXHYmB0eraO5b
	 1ANDWNzElkTjiPdid0OVeZW7iNXJ4mijSh5q0YzPPG6hIdAwcpw+nikfF36rdoVxDF
	 9PP7fSCBEUvfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929ECCAC583
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175743419358.32502.3423753690761376267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 224bac1288890b2710fe240f5080a137db3b9d4243fd142a561226f34ddc9863
Date: Tue, 09 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757434193
