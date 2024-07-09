Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6572215359A
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 08:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720514783; cv=none; b=Pn67r3CHf9+BFy16N0ANhwseLekXQjcFMOb7DXlaikT5Z85YCg5MY1M+O41/cO81YfKMqbFxYl2jSulfHELgYJ6+VkG5vmy3jND+As2zc/OC82pVWOUrq2ZyjeCuQeuFZgKoZ9wfgrunfbAFP1uMuVVT06WovBfgnTCBwEoAd3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720514783; c=relaxed/simple;
	bh=MAkTzCp+cjPif2AEO+Cu1Ff24XR0w4fKayhfCY1Ucaw=;
	h=To:Subject:From:Message-Id:Date; b=CAhVpmyrF4M1/h9On1R9CWJcNqaZFzTsM5jVHSubgS3Gl/kHXqvcrltgrw5htg1hNcBzB3KJlBpPWjLRwDrVnEq4g530X+0B1HwHNQd4ZM+xAuhhUQWDSH8AqbctLGsur2JhWa3Vnq/t8KG8H1m03BboxiO2V2bjyQgMa6KvkkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwWAuQFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwWAuQFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8440C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 08:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720514782;
	bh=MAkTzCp+cjPif2AEO+Cu1Ff24XR0w4fKayhfCY1Ucaw=;
	h=To:Subject:From:Date:From;
	b=SwWAuQFD02eY3Q6EgeSs2zrG6NVV5RQ3ojgEFExcj4ijuChUk5XXWyH8JVVQPVanf
	 byJS64uqS1I6SuT5ea9GAU8Iaj9CCV/+BaC2f39Qbh6gYacwibKsQS5LDZneF3qc3X
	 KFXyWnmRoJx6/UZPDf0vPuTbsM6I/h+DJ6Z3cBDLLatgbq05CPHYUDfXbCdnD7Wgdh
	 JNq0WvpANkJyUdHzaZR5Y2l8HJbwOaK74v+/sgrV5bG93JvIVEmQKeSTV4QuXxBCmI
	 YxDb7FnJRIJZFuuhqybvyz2kFPU9bUDIVkEYsV3F9M2GZ+Xm50vxGYi0D/hgQ+YKEF
	 NgQj6n23yiX+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C87F7C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 08:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172051478280.28690.13592241694957576302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ed53b47fed811c96f7fe3df55a97cc5f375177acc15083f4be23c81b6bd523e
Date: Tue, 09 Jul 2024 08:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720514782
