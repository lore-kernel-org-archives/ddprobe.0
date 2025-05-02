Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C1833987
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746196794; cv=none; b=PF6jXZAIERnH9CylxFtabsPL9btiOb25z8ChWi+ebOygaud3Gr4psfWh1fHfeZV2pMISpJ/FgT0HGr8IiQIjz1p9qpXo5vNPi1+stWJD70nUGzskAjXbymHXlfGZKJNwuMWNKvq1gV3EevYb7rVDNQ55i7eIJJimhkRRPXv4taY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746196794; c=relaxed/simple;
	bh=DIAE8Dwp+1lDwQTC1IegyalbGfNK2Z8jwakK9Cnya0Y=;
	h=To:Subject:From:Message-Id:Date; b=Fek36AGzwIbuI2G9526TSpQLNpx03t8GC88Dz625Ur+g99qBff0lvKJ+qz+QteZlR3NnvrXhcS0Nj6lXa5mrg26pKzKwkPm8riZjACglZTM7O1grUoC+rO+gWS++l15ESHg+rLtHpF/nTyuKjgYhlOT9+agPkSy52qVa7G0266c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iT6ia9re; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iT6ia9re"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53DAC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746196793;
	bh=DIAE8Dwp+1lDwQTC1IegyalbGfNK2Z8jwakK9Cnya0Y=;
	h=To:Subject:From:Date:From;
	b=iT6ia9re2sesKVKO5kFpPCVhax/sHGoLmOzLWKmddM+M4fiS6tiKHHAJfaQLZFklf
	 ZFgyqBLOmzOqRz7KX8L4NQlFIp/srsZem36Wou1r63GObXIFYVw2iF4CQj1A7RtaIe
	 6wLnAguHQyCY1MyjL0ywiVdaeQvYPrRdYMlu2f873z/qM1kgvhrfTy8yFnd0lsOtWg
	 7ja8QnRFXhTTWoSdGWFyv0h6VC2iaWuTlL82GKWx3r4q70125g7OBgkwxCbF2cYX+T
	 t2rP6cPRqbd3og78tgQDMnpEpVXW9LLB3ZTL+IOFDziUwSnP0HSxXAIC3f9DjP5AlL
	 k9fBl8+ytgQ0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9C9C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174619679358.22502.45469553423551647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 889e45a4c6b56c35715bd9737b99d5d5f2c269c70a10da13695b7494b0cdc0b8
Date: Fri, 02 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746196793
