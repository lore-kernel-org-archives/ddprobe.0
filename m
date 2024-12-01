Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315D2EC4
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733016355; cv=none; b=jdvAz8JixBShk0AOIKEbW1uXdTiPs1T4cuDIFPdBobGcqqfgU/m7dXLyueQdE99jBUKfpRvR9UY9jZfNo2EAwQkggEpan/Ql0ID58jcgA1evW0sWUc5EzTbgXOEe18hlvzP6CoyrBwomqjnw7N9+00gCnCMweaOIlm+qewpcNNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733016355; c=relaxed/simple;
	bh=upv1FhEra5JS5f/6fagzpkS19+kRYa9lBF3KMqbAFmE=;
	h=To:Subject:From:Message-Id:Date; b=rmq7FZnLlMZdeyBgSD/G4cRCjg1dtXWoQybUvezPqfoF4FxzoEL0FFH7lwGSq1MRteil9S5JD2stRGlL9AZCtvR7vsxRC+FHyeLUbJMQd+VCyLKgYNWteDenDCm+GRSgSyBc1dn9P7fR2PF7h5oVH5G+b9wHk8WmyzQmKyD/Bag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W08X3vxS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W08X3vxS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A44C4CECC
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733016353;
	bh=upv1FhEra5JS5f/6fagzpkS19+kRYa9lBF3KMqbAFmE=;
	h=To:Subject:From:Date:From;
	b=W08X3vxSbDySQMUYmkAB9B/CUO1MWNLuzWaxv3n910BoJWgIDVsT7GlfPxABWGzHA
	 zpwZR1Lt3VWwD0nUGYWG+9Q85vuhEKxXJ3ZUqUclCckDNNFIILx7mdAwuQBHkqqi4G
	 04Vv6bsfhC3yJNyetHlQRV7smzWrhXT1DLYrNKZClqoKHzBDeFGoC8MQVIIcTb7S/T
	 uYfVAubwHQv61HuJBK+bulBIy5tZg57XyT0REEn3UQEY++8KIz+ZbxhUZ/Zn4xpBRy
	 Flycm4TuwZyoG4RHyKHeAwmx4Ss1Rc3a1XG8kIthwJUotXwA24mtd9FgZDETn77p2V
	 9A/npzOAVFyMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C942D7361B
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173301635361.23984.5602305145767409618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6698d552a1bdc6b646c2642c9d61777024cae641db62a1226418c232b9241514
Date: Sun, 01 Dec 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733016353
