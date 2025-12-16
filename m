Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C59732D440
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765878234; cv=none; b=OQ41QxjLq8Ddbdv7/K7ELUp8wg8O6cL7DISWC8V8Ly/EcraibvBL/R6DzhQW34pbdR6FD2w6elHuDwQXf8iLv8di6RvmM62O1eFpCcPIb9qSVrVg2yhcjWdp8kxVaW5cG9wP8aCg1s0swqX9Xog9Bajvy3TMQLthbJLU9y9sRN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765878234; c=relaxed/simple;
	bh=rP2JVc5i2Z0EeNMYylNLA3ZFra35lEORMi1APWjZuNw=;
	h=To:Subject:From:Message-Id:Date; b=QTtVnf3mzGcJLLog9KLNAWlW62e/YD6Wm5SuNGRF9B55dUMzZzwyFAsEL8PBA3vOFfkr9cxXTilTHT6HdmqYrmoOhrRWzmFZtJH6l5DPH4rOQ8A9J2NKt/AARaTpAtPQXdNf5yNsvyixesZtD5LOMEmHeto1b/QMJ5X7rrdSLFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AIJzmVGx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AIJzmVGx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6140C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765878233;
	bh=rP2JVc5i2Z0EeNMYylNLA3ZFra35lEORMi1APWjZuNw=;
	h=To:Subject:From:Date:From;
	b=AIJzmVGxAJqdO0a+v+hOuSkvMM1r9+yJGzwHbTQMbxhqClWADbD4J10sDKPdx4Flu
	 b3YhAhvhtgJWvQF0gPt6rsRG5o+fMQ13Eh5WKez91yl3fIBLvB2SoDDTm5emfP6QxB
	 LXAvQ46xbVrEVD+6krA1XbpJx/GRV4VGW98mEG1xbCXJ80XpYWl4s6Kpe+IcPGRNyB
	 e8GFAcGoI5CbEX3rP2IXzimOFiG0tMQYKD5AtNqK4NNs4gtv9GwxdV6bY+8XZA9/r3
	 dDEAZ6kD6EYO57gKGrbPcVut3Cn9rutDeAXqi4cdBlWLHPtxP0yjupBaaS1E/qIJDe
	 yZzjTINQE63Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967B0D5CC9D
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176587823360.1378.2169296495378572224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1347036bd759329c0f1856953a944dd460dffebb5e30c625b09d3a8e306d709d
Date: Tue, 16 Dec 2025 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765878233
