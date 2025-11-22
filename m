Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2375A2F7442
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 10:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763806314; cv=none; b=mlcHMdizWHVnpRT3/ocsAN7TwSLx/iqDD/m1J6KWP7Ny1DORwX3sS0k0bOQ/Jj6LvALg1S/my79NbPGl+MwQy4ssJe5Oql0740epszzYibRUDtZgy7hK1ODgnHd1hnaR7FPtddjEIlMScW57fckjrBaJUPu8xQf5apt4LaZUGXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763806314; c=relaxed/simple;
	bh=UlHjVYnRQkfvz6IqqGRy8k1In9+LT3jRewqzKSqdxro=;
	h=To:Subject:From:Message-Id:Date; b=RBK4x962GYQsfPlWiqqXr+8RipJ5egD5g0Op7s8g2wvduHrDE83CC0vPDc27nayKUIJY9buXRselUozxY5zqoi216HyXSBmCsyfeA2kqmSLbUDGe6cIP34wis3v4VQd4zoqJm5CLiCbhGvqC2lsDr3qrU2rO+v/OIoWD6J7wAhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLAODjor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLAODjor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB570C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 10:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763806313;
	bh=UlHjVYnRQkfvz6IqqGRy8k1In9+LT3jRewqzKSqdxro=;
	h=To:Subject:From:Date:From;
	b=HLAODjorlgvS+jeS16ughcwiPmhqjzg9Mu0AGexBzZpuc7aUkxGoGarAMWMdzS0GE
	 tpwSt2guthwFOQ3muOlFM2uvVLCMipk5RunLVK/VhWSaxTDvtOrKHusvmeDRtzSFgZ
	 lTB//u1JNue7xBYtrjJ3m1RwbIj6SpAte2O2T58d96uXrvcPP6C6heWJ1Yle1pyQc4
	 QeNVdSHSUtZSeizucclckhI9Rlqb1k7vfaKhtuWJ4Qr4U0F3HQkxgO/CemGZ5obl4Q
	 cFOdq9h++/P56McnuBe5p7Gf3veoJn9QOmAMUCV1fh3Rb9Uuz0GL6sEF+tLSjJCnOZ
	 T0GYYL2nVkEsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE71CFC521
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 10:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176380631358.28172.12302238735239963128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfc5d4c3362ac7663937e9bf0570093221245bc584e665c987e3dcf935d8039a
Date: Sat, 22 Nov 2025 10:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763806313
