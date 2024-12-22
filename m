Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D6C17BA9
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734842754; cv=none; b=qc/H14ycdGLlWvTUPsMqPquKLKjnomcrFd34VIZd/yeKtuugSp4lGYhlR7dkvuiNfM8eackHFMzLB+W7eOckH2qwqHrvxWKGyT7jhi/uat9ZVHDylz7cm+4dH2NUf/+y1y/hsNhh1vJ1vzX8tDaS2CmniOwkuPhZkPrAQze+UKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734842754; c=relaxed/simple;
	bh=T34Ca4NPiDLo3r2cMd+yjbo6oAt+S5ms2XB0qADesIU=;
	h=To:Subject:From:Message-Id:Date; b=r7MX4sea/RCir97Ni2S+qmqnX62fA5ZN9hadvWHI8+pNAtlSW7p33qpjj3cdJzI8Tx3qxbY+QwJantmTIB9G68cXH9q9rCK/OC/M8JyVevMZl3itw3ffLHDJMK/PxUMp19IYcEvjyS38HekkX4DpVZArry0emOUlfvedHVyampA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOM4+CDD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOM4+CDD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FFDC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734842753;
	bh=T34Ca4NPiDLo3r2cMd+yjbo6oAt+S5ms2XB0qADesIU=;
	h=To:Subject:From:Date:From;
	b=HOM4+CDDDBQyHe7LC1N9beCtR39Tp11apbzJXMTh7LiyR81HODGxoQ2uo0LgRc2kn
	 UXi+PpmngjHFrno+cD0u8YxEgNTpSY7sBWum09G5QwzrEBJYxZPQuypxeHfLBVKerJ
	 auZ6DjHaIjtRjlDVobSSqJMi2B0QeZ/3qtuCSwouoS1JVOFikUZRBaHpdh2qlACLeQ
	 SKy1SZqHt5mpBj+VgOVotileNQZ/c9XG1eXTYU+LLuGb8+k49tdm7G38ydVRUnoRuT
	 wp0SDuV5B3xdHIaVAR72mgyypkUsksTZU8+NB3/HM8w83YxUe3HXa55SC+9fwH6Lmq
	 ZRhs0jbHshqJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91410E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173484275357.6282.11558549026580961816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45e2a0f8b10b3be2dcbc64f7a96315e8372a77d9d88965ef11b075884275c768
Date: Sun, 22 Dec 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734842753
