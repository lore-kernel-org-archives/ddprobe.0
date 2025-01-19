Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FEE318C32C
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737310554; cv=none; b=YbCaFMFscrROUVYkpcokbiQNJuDFR0HDbqsG22iH6IkuQgjjxKCnDjfxW5lxIrqLlL1aJgCQmjKBO6A4luajf/9s1GCwe3v9IqmPiQuOLdnH3XmlQb43IG8iC2ENVt2hidTb+9YbDZRFMxAm9vn3z/W9dPqaHpy/4BQKzUVLjxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737310554; c=relaxed/simple;
	bh=Ty12kf+KiaX/KypEAJTlTTn9svKzAhUqAh8i4e+BoVQ=;
	h=To:Subject:From:Message-Id:Date; b=WrtDhjGQTJnmEPZ0qtXWak0yMZI7S0ijts+LosGkDHQBWrNDnqdHVY00VA52dIsLz6pYMPBPM47bF713oirZeTCW+O+ni4XXby/xcGA3A4VuGwbZHrHeKm2ZUiHlv/nXyR5/zpeGKkEm7Xq1YaDGZ6+aQ+FWVY1CFX2l8aJxz1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T6P550FM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T6P550FM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F99C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737310553;
	bh=Ty12kf+KiaX/KypEAJTlTTn9svKzAhUqAh8i4e+BoVQ=;
	h=To:Subject:From:Date:From;
	b=T6P550FMz7UfdcBV92aI9YKFmxd1KrKnTlag0ddhMGF7xDWS1wv37h68cYIogyME9
	 rWL2H8zuGfM0kqgwIMb4RewYx7BSsbDYQSsEGiFwPueQR2ZpVzPkeJRRGr/5uKKONL
	 MiwdZWPPsG9H79ZxpMtJUQvC3p+ON5PMkiIOagWynFz5QvGXvAFebohVkUzT8zkPF2
	 qxBe0X5l71yVoYjev5eW9XxPQIikvi9UMSd7cCvtF+X3qTufLE7kaKMaeLiJT8s5gU
	 c91A1p7eIU77FMwnbdj+t2ZUdVC6kNybbsBLFiKpwPs3ggkRTjeQiFJ6Y7xXCdAkr1
	 GlGhQ46uq59Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97158C02187
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173731055359.31920.15357870353115990188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3632379d58f1f2b6d62f0cfdd77d76a53ef48c7df2881d3d5ef6db77b8aecd38
Date: Sun, 19 Jan 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737310553
