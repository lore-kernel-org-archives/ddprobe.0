Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32628433B1
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734324954; cv=none; b=UMLNeU0uckJcngYcX/DaY4YeNpmBsgGt/RnRv8RwgQ/U6yNgP2/E89HFB11317sK4QdIv+LEytUU9am23WgbNLJIZ8oymyuWKQsIAmUWhQKzaM1rSyEnDO5vWmTaj9SIKU3HdLPN8hzv7RZANimlxkHKhYm/RCY77fr+e7aHP7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734324954; c=relaxed/simple;
	bh=1/Ua+6BZkoRC7Q8vZUGLM/l4m73yJB5qkYyuCTvCjow=;
	h=To:Subject:From:Message-Id:Date; b=k4+4SnqVTJUt8v6EE9EtpfvsT3FHyP76CTl4+RZeV6G8gAM7ysvCyToxvWzscgA1mQIlu7vUbHN3/+SnOAtXaedcEmQEnZo9/ZA/vfSZb6NuQaZOF34ePQBbVTRGbXPalupbAKAczJuvVeguzWCEKIyNDAc1y5k7cZ97dPgT264=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbuT+qxf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbuT+qxf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C37C4CED7
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734324953;
	bh=1/Ua+6BZkoRC7Q8vZUGLM/l4m73yJB5qkYyuCTvCjow=;
	h=To:Subject:From:Date:From;
	b=fbuT+qxfAFJwUf1r53cuT4vI1CUwCwGwPbPrA62xgJbfhR4Qjm5tN9yDe94fvxP/S
	 8k4uwpJuqTzLaPytamIqW2VO4bsJvDeJ79xMzDwRpse6ym7p2/U3hijwB7aVIVLWe+
	 PU1O+I8HlDvmq9b3is33CAjRJ/uBshkpUs8Tfast1mpnttCujFltDRZraeFc3q2kKq
	 oZ6gJh41DVB8ZabYDkaowUgIRiFYCmXHw4KLqvyvNvvvBdpufzfRpENthxU7jxp0sp
	 bTB8CcKZcKsou8pVilXfvXLza7T+hllOjMPBoof2VKvETUT6Hz1EHBj15I2oY3TIxf
	 EJH1UOgP/UxQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FC4E7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173432495359.26259.3356998793899701155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9db9e94dce02e6712274603292acfb53ab917599c4bea8e46d05842666fd2ebe
Date: Mon, 16 Dec 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734324953
