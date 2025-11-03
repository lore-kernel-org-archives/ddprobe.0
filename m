Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158981EA84
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762191594; cv=none; b=qje41ad/c064YemqWBYD8Ke50cFac5AHFhaEXBXKKKxOhJDvpplAO6xgj9RHcky2STpZuqeoilyJP34MO0RcAEJ86hdxnUh/Esg9uJOLdWLSagz+HE+T667AGwLZPAnc+DEpKmiFIZgn4jSVspn+3LdetMAPoRNaCO2RgLA6+WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762191594; c=relaxed/simple;
	bh=LEG5CRLLAEsCpmTyUVR2veKbitMDQjXiSR9LQRZl7lA=;
	h=To:Subject:From:Message-Id:Date; b=tJs8BaF3/Ab2tE8ZaGSuf+Nj6NFzc8+6YMwxBDbz1+n2VSOIVVioBvhxx/NiQJwRaRJVsqy+0F6DAUj/F90/f5fPYjGfltd9FYoMK/TT+cy0hz6cF2MRbxIY+4MoHEEqGW8chTPm442ep8ylchcthJl3e7baLXciv/kSsCgNAP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rR1oanPa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rR1oanPa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D175C4CEFD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762191593;
	bh=LEG5CRLLAEsCpmTyUVR2veKbitMDQjXiSR9LQRZl7lA=;
	h=To:Subject:From:Date:From;
	b=rR1oanPakZDp/5Ti8JFwL0S2pZoKxW+ccKS3G6VQYtV/oycPxtAgEtvKX76CVom4W
	 SE5uXrryMq7AQehBNo4R+Ca2Nn0ale9e5TLmNh255E38Q50P/Ygy9Dbds3XRUGz7aa
	 22RBmGhwq0xczCafDwEHf90hpLmR8xXNAoEkZeymLi02KUXhv1F5tkXicHzRLyh9hQ
	 PYy+6tF1xrXTT7yudcXVgReWNgHL/HHpRb2RfKqzKeBKFZTNPNcrgsUWDxj63czSKM
	 dQT4kvVfzsMLBnd9uMWdXyG6xktY3PRIMeVztW1dpceO0kCgfxZ37UfqY/OHRcOnnT
	 GXiY71SrOVmWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F96ECCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176219159358.11406.10114479436453400203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47c5318ced57b8fc09d675720ebfcfcdfbbcf6f1521756245115cd76550e6ac7
Date: Mon, 03 Nov 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762191593
