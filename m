Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABBC2451E2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733903754; cv=none; b=Xe5CyMYzgUZaPHQWgPGirLhX/B832lRvT5ElhNydaEQ3AW9WQDzUFZL5zVlLODoTaLTJX/ovQ0crPKlm2rtN4LmgKomAgTnIpoiFnhg0EWo5Tc2e+NOFekueYGYZdb9A3VKLe8Y5YGOqMOt1i+s/52EEwIIESuVLTAMPbuW1sG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733903754; c=relaxed/simple;
	bh=R4P6cC05DmgNx03Ln62ByIYCZ4FKh4euK2ltScHbKuU=;
	h=To:Subject:From:Message-Id:Date; b=B1k8U2mXnQi+wwPbYMbE5MFKida33uThr3Qdpi2tf9Tudj42vvd2QxPZa8v8tqcExT70l8lXO7iHcBeb8/IK8lmY/5ao7gNnYYoxC7a/wBzTVvmVk4fl8/xZzBAnnwd1GQP3AN2sZEYK/6D4zFw95K4s8/bfwH5jj9qViTyBT0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpMePATJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpMePATJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99A9C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733903753;
	bh=R4P6cC05DmgNx03Ln62ByIYCZ4FKh4euK2ltScHbKuU=;
	h=To:Subject:From:Date:From;
	b=HpMePATJTq8s0gf+CJLQjQgbpXAFXHrFHbL0SpfPis964lRpH/K7VlQ2+oLoqEomF
	 ybyC4/Q55Nq9exbKrRsQ5GaZZ+etBYBIr8LXQwuUkYt08rQi9bzd3oPN+nS2PELv8q
	 jU7xcDTMCQo1aySoj/ehiMGOZQS9muTw+M/noeOa8CF+cd2EnOzAIrbelEJtvGf+ww
	 WoYM6kgPG7eBkClhrSGsiw6YsOu4BrsfLgEwRiiLRyHgyTP+jramPa0URdohrvw71j
	 G11gOWC3Hmwrmw+j81mOQVX15xsEcYF6hkgLMU8yv+Esun2cwIKH/pItpHIscs47+h
	 pH4dY9n480B6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942EBE7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173390375359.865.9372262227753516460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea9c42ef4d62f9a630961a98f18e871289c7a26f3eb5e69ea09774383b8ad8ec
Date: Wed, 11 Dec 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733903753
