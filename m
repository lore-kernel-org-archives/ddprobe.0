Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077823168E4
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771577094; cv=none; b=BrlEELAb+P0a4nLX2+jTCI4BKYTNX4BNBEMVhqTYdIepvlbmy4v+PoMX6iiDkWXveGLbcCR0S+L7gStEKeg03HlfdvrHp6Kzb8zHcs0gOgc3e1WlhOIcNba+KdtASjkjcMvTb4P07zvP6wZcPJwmpbcFgQQIyJZUkIlwAbBf3nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771577094; c=relaxed/simple;
	bh=ZOuhj0e5C71Wi0vULdrMzL0BcBV2r3IHiUbjKDgPGgc=;
	h=To:Subject:From:Message-Id:Date; b=NSEYblO/KCQvfGvVpbpIGbLqIVchaqSLMs5/8UNCacG0la0+9JtDREyx2pnY6wePtCbAKy1hd6JehkjSLg/t+v+gUCXO+BmSU6xXc3QiJ1JWnvYXrhhyaZJ6dyB0qGvWMNfSfRyxlV2ZbR6W5JC0Rd0kVkxb2osCUpXuRt0pfqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnMLh3Qi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnMLh3Qi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A867BC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771577093;
	bh=ZOuhj0e5C71Wi0vULdrMzL0BcBV2r3IHiUbjKDgPGgc=;
	h=To:Subject:From:Date:From;
	b=EnMLh3Qiw+IlsDLHpTRZqA8e0h5MRFw8t0k3DsfCDmIpUITiC3HuDaOjkPQ7mNCns
	 nkM5CtDiDz65fxDQrwgTWARV/c0IavBd/IfFBE463fi7xqwjM2uuuAN4JEaww5Qgp/
	 arG6LR/txwn1CzyuO2c0m/VoE3UNceJcxReIiD4x5rnmbYeZpEzqbwH7X7fswKN49r
	 yfItkTpJXlGFfhLkNPc5x4yUkjCKSVMIQ6MRUUIme59nbbOni6PoQfg++dAUXHPOXg
	 Rs6Mwt6Xr3BaK7mAgWkGf89/D80thFhQnFZfQrSPzYH80hv2Uk+VgkAzeMV4Y2au6e
	 VucLrGLyt5rpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B13C55163
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177157709359.20407.13321630757477821344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26921551013c7f0bd45318630ae181657d8ac5e96a847b0ca9d89ecf2d1c0454
Date: Fri, 20 Feb 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771577093
