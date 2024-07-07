Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77856EDC
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 22:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720391783; cv=none; b=idmJ8/FGgA1XsaZVcd+iGnkkjHT+oOsVkTmHkdWZ6bJCkCECJ+BJfhOer3WXFuPbnNmRNXsao1N27bzhaa1KS+8yNtpLMuIRAOp3bNVP1Qhmw+wL3zBc5bgXKcEx3xYhepsvJboY2I6zfqSPWqOoqb1QNckyattHbPQz9jSjupw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720391783; c=relaxed/simple;
	bh=AsD1s7/uKaDy5+gG7nBvyur9SssxKCgHZJi07zuHiyk=;
	h=To:Subject:From:Message-Id:Date; b=jDyeoJiJGDoE/jSveZK6BDl2Ij1PEv/bmaxxn/IBBHKingyte8f0B04jE8BsZjCBlOxH2JqgsqRsN9eNw60ttB9tAruCXt/4zKCGb5plCWdWZPyta4Fwqi0eOqmEcBPFp2XjoJylJAj8MAFQWmd1/uLZ1pV5MrBM5CFHgOzk7NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ND2Q4VPm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ND2Q4VPm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6310C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 22:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720391782;
	bh=AsD1s7/uKaDy5+gG7nBvyur9SssxKCgHZJi07zuHiyk=;
	h=To:Subject:From:Date:From;
	b=ND2Q4VPmrIvVjxSlrqSlCOwbZKXAl/XVoiWxuqfHFAnN7+t5apiVJs7ekTZs2AepI
	 7miFvos51m8VtEqV6z1uEuaGWGe8AyOGHx54DrjhdfzcZ0NrbXhXsbA4t0E9k1zqKf
	 fZcTqVemzUK6I8XWM7cMFrWilP+jc8+nvel1ThpkI7s+jva47uc8Zz6M24KlIihGWL
	 2LUXvdv1YGjS9nlr3362HEQTxOBk/aVWyFWOy/CIFM8mXXBIaFm/5hUd16dovyo1uR
	 2I4QOCSOrfWtbZPHK0BsZNQ9zvurQDW4FovtvSxRSCbxO+w8HLI8G8+AJA5IG22QED
	 lj14TPf5BNtGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF612C38150
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 22:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172039178282.16785.10911709821727750614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8470bf626cb88c39f736481920b4c10463bc4d720d7160d5c26d29fbe9a7595d
Date: Sun, 07 Jul 2024 22:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720391782
