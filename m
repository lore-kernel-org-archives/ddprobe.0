Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C88F213048B
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711554496; cv=none; b=jQe5JbcwEc13mwpMyzlfm3RcVwUXpBGrH8LRP/cc/OzOC5ILHyivx0LxBHSpRg0iR/Hb603qykjMqynQuBFgDsi+8b6cYM+rE0rEc70dcrlUOD1C4euWGjmiBf8ROLn8C+h4BTPB8m7fqQt8h734BpYv2ovN6ncN+lATs3QgqF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711554496; c=relaxed/simple;
	bh=O4wLnYegUbGr+jbguqqMQRIV3rzZyQv0NZyG7FExDQg=;
	h=To:Subject:From:Message-Id:Date; b=KwzrFf11eaVgTPDneUeDoPPEEHMNU6F/TbZAQbvX/16x30P7Tbc2vaqkppVRmMf9AiREJwIehIE98BkiDVYGhChdTgbSkbzK7tc1+oqeYmpxtV20B1xjM1CHc9iEOOFx3f+WCBMIVIZNLUwc0510Hk+nPVl8gbd33+xi/OVvIus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnKVueVz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnKVueVz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71E89C433F1
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711554496;
	bh=O4wLnYegUbGr+jbguqqMQRIV3rzZyQv0NZyG7FExDQg=;
	h=To:Subject:From:Date:From;
	b=VnKVueVzNTCnM1bW2Itr8r+DuEaoA8L0kGzIvuFFg/YKgz/s5BjeoeKX3YoclYg0x
	 8qTO/jFiwtM3sOq0kcQDPVaR1aXCyeSw5XmbPrztGjHuH4rIBpOh4hKRS0WSF+HSAS
	 R0y+aGrdChHDglxzYnSgaes5Okgte7qVEBl+42NOfKe6krTR0L9O8Vejytw3Gj5PPr
	 MutfyQYSdCzwKdmqgt2ynBNSMVjy9I8US7XsftaCUPzT5Ksluc5zTejEjOcyLa1YfW
	 y5HORbQLBuzTFuU0fszdRf9Auy/8BVf5uqTkt3gZm5WWD77VQtqHDikzNTbUDmvKx9
	 OyPBAY8/A4m3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E05CD1280
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171155449639.18817.7590571361915285602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85e6d972c8019d4e59efdf090ac7f13e82dd7bd251c42ff50c2cf04c87ee5092
Date: Wed, 27 Mar 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711554496
