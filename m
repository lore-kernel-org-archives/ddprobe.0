Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4EB24469B
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745443794; cv=none; b=jBp3mduwTpotgyJSW0FX9S2+8+G2/TijZiN2QwuF7pTTIOa1af7LmQjnU1clKUjBxpTlVFZOnBBKJPxADNK92G8zOH45QRSajU19V4vMmfE4E3PUWZ3lXT6qzaeT+rMMCfZcO88TC+N2YZTSPFf3Twtur/LbKecOx5bQ6seG9mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745443794; c=relaxed/simple;
	bh=Jkv/CswvSncRvfSGymGFMmQ/XS28zkadst0IndAITOA=;
	h=To:Subject:From:Message-Id:Date; b=jyZ2NKXOKCMNlUZohw5NYVwvyyHrpU6c9070JAH0pzr2e2nsmX5/h18eW420hLy4mBS/zoJMcIkcoPBLMaQxRRGNmLHf0U8QAeX873COSQVAP8yEgNAAtu3BTG1J2Y0bz1yEahvGJtoAWgH/fXZ+8LZDNz5R0Xcu/BmeKQAJdp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmEV4/pi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmEV4/pi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0288C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745443793;
	bh=Jkv/CswvSncRvfSGymGFMmQ/XS28zkadst0IndAITOA=;
	h=To:Subject:From:Date:From;
	b=dmEV4/piZ8KbTBqJ0Cxk+MwPGS9lHespvZyabe9ujArs6ZfWkt/R3h0J4CMlf2xd/
	 hw66CBt2eqmu+u8PPWYzimMWTlX4eIohCl8qHi5nOZs2Y5vZOmSrxM/YIivfvxYHHW
	 cgqiMxYyTBTWuj5erxvMEZ1E5Ztkrc/2WA5+mscAW16jsq0U0MV8/jV2F6BKBDYPb4
	 SLZMWoSmDY9S4qsyPiGxraQdfwzI7j+3bPwVmbwqUvXhs7wgspOSyzjfERIOLahEdX
	 HXk8MSSQMvoG43WBXteM1e2FJhQOHXS5NsHZfbd092Zzexs3KDtdBDMfVwzX++JCyr
	 fwovJy0mw80dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1AEC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174544379357.4687.12052590436013400383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 191fbaf01538d6746ea3a8c440c3acb8a47d94d0193fa9f148017ef986ea9cd8
Date: Wed, 23 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745443793
