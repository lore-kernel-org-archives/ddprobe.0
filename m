Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022BD5FB92
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 11:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713181163; cv=none; b=UmsU98CCBxZtoNBTX2f9yqmbPiv1k1UrPzRDUO5lISMFNsy9glBCzlhb2HAEG65pQiW71HDBwru+9RE8pqLt1Hqyx9z8eaP8w8ZRa35e+/9Jtpu6BYFWn8dOZzUeZYfy+Wpx+EuPEf1IgpGx1eSwIBsASfAwItSKlPN6tYdL1BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713181163; c=relaxed/simple;
	bh=8v3qwiHlUr9ImgzLOZ2EOsZbyrZLzXjGryUG+f/+d/U=;
	h=To:Subject:From:Message-Id:Date; b=ABEVJT+V2gBAUGtbQU9z2QDGO1Cg7WmtAOaBMZAd+zjK54wL9oXJpLJ9Uv6VQ0HWYcozjMkQVGMQ1rK/W50iPtC6DjbenovFzd10jCNpZTA/MKuzm4qWCN+Y0E8ulO1eW8ZD9eLjzwF9Xl+S+xgo6ef64Byo9aeEt0x7u6FjJXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WL0PllrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WL0PllrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D352BC113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 11:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713181162;
	bh=8v3qwiHlUr9ImgzLOZ2EOsZbyrZLzXjGryUG+f/+d/U=;
	h=To:Subject:From:Date:From;
	b=WL0PllrAuOQT78h2dsLwuXCAEp8Ngye//hwWk4rGSCjOKvH/6HPdYlvTusx2IWRBM
	 /qXMdfz/8uCYnhNSP+8I6n/BPyvv3OPKWuwoCuTUX1SpArfcU+DjC5kaKRWsl0tjVA
	 XckwxPfGQfGXP2508tL9+Y8Iu+CN7F3eIZVNIfvuvRWFv01+eeMIHdG22klXDUev3n
	 VYV58BMhIdf569N1HBgXK3m9PsIsw1u4gDf5S++8U+nrgqIZBo/VfI2UNtlWQaTxwj
	 VvJ7uGBWkJucoA1RpdJsz/gbxJBr17G+BVBNnO9GG4lf8boiJLu3QUhPRfPfx0JGEF
	 wDOxMaEOZhk+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C46DFC4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 11:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171318116277.23813.6921620540559766549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f24a769be8101a2ffc3641badfbd816bae9f4fcc941966a55e55526ce70b07c9
Date: Mon, 15 Apr 2024 11:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713181162
