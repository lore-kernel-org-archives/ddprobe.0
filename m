Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CAB323BE
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 12:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720269323; cv=none; b=hWXnsV1dJsw6p2dtvF94ub5aDoeEHayCnW8c4CrBApM6d9aPKVwnTWFtqSWdhAs4EHeTZybFutYTDETqoUV6oJU9lw0mqRtfKn7tUgftb9OcWEySSQvVe3WHajWbo4JuVBesM1EqeA6HirNn47EaJRuY0SkCSUtfSWmfjT0aX14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720269323; c=relaxed/simple;
	bh=qogME41+Dfr3DnNNPb7ft0WGPfyQ+EPUTMu9OAIp3Os=;
	h=To:Subject:From:Message-Id:Date; b=UcRqHDRRTIhkTfJpb/nyzfc0KuI0sDMdkpw5HjxX5yjU4QP5ewFLK8WOV/3qomnqiZYzdMFATWEI5r677GrUWFreX3i0+V+jLd975UvJFqv3QT371P2o7mVgSZajwn4ciMLGR+Cq/wRsJvePEhKIn0GQ+15i5E5gYg7/5xdQ9Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJmG4z7O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJmG4z7O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA41EC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 12:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720269322;
	bh=qogME41+Dfr3DnNNPb7ft0WGPfyQ+EPUTMu9OAIp3Os=;
	h=To:Subject:From:Date:From;
	b=nJmG4z7OjvArodwIEw8cXcRz22TkS74l5hkmIDQxMyF4sEUY9kedfcnnBbrXGzc/H
	 XUuxysNloWaTigAfbOjZn+oI27iplVRxyUIsUx8iSx7iA0Yw+jZ5iJmSusFYoi4mIT
	 wUreoMHz5gGr8WnLROrmZRota2XrX4g3ha8XZ59s6FHxjXFdJNJgNlOzy3wNm562v2
	 hTSMtXKaDLPkr/ClBwqCnQ4bwr/iM9Di1HhvgLzSOtItjJAxpUxeUBLmouR0F/Uy1U
	 aBYHmw1FCIaFxNl/GhYY5BYUqu9XzdJPROfzOnUc3uitoTxRfcu6dauePQvxJOOiJc
	 G9NSbtZVwDeFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F64C38150
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 12:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172026932276.27883.17218191130225550875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26e43ee53e93580a1fc4bf318a06d5810bf494e2b55d9fc06901e070035c678f
Date: Sat, 06 Jul 2024 12:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720269322
