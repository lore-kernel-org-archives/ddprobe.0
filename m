Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00EFB13A26F
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730927754; cv=none; b=bdAhA8stexg/tHNyqKB/ijFXHyb+hqRfrWQzS3l3busYlVKWssxyUYzxGP5mcPKX05yP8F3mwhS1p2+5WTxqvvj3QZJ4jwmC9TXbp8rIdhy7mKPKGgJ/qhoJRJFa0toVrObQOohOHZC2K7scvxgGL60ejvh9MLeKPmsfKNJtJeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730927754; c=relaxed/simple;
	bh=QqlR/Ot2h/V/psi7k8ir5pn4dThO/c1dDLFvv8flXY0=;
	h=To:Subject:From:Message-Id:Date; b=Al1dGoVskQ9Fg0q/SFYHSXqAOr3aV12cRbyL16itqSFp6+mx4CxmYkjOSz5S/whLO56sUFoz1EVVeKD7r1C4YPj/XzOCXO7dl+YN3HEfm6mOKV7I/bMjEJurkm9i3rHfxnJ//QhXhZGNdmnG2zfxbXC39tfNm1avNKkC1C8WQ4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EzS2UdIX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EzS2UdIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D98CC4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730927753;
	bh=QqlR/Ot2h/V/psi7k8ir5pn4dThO/c1dDLFvv8flXY0=;
	h=To:Subject:From:Date:From;
	b=EzS2UdIXLFUUxRwBDaP+600kS4GOx6TtIBLmkhJ8pVaWA06bxhlIobWySX4ROWvaG
	 s41TPmAO/g5VmNzmalleXRe2kpk7T6vN4r5o+2DHuVmWDMl2g8bc2xxMs51m/eZncD
	 XGsEHUnoLQl/mnIjtrF8lKCwsKPmNKPd9oA/dmB2MgBaqV/YcEtnVdDN87XSIk81UE
	 elZ1UdEpbS4fJqcjY4E400vQFQdXkAf2EK2KIrOf9UHN+uIC4e8hVjQu/F9tRE+YDl
	 wIrrgqbQYZ5C2eZrMiLq0JXglsGnyc45tugO5zHT5jgn8oX33XVm0vXCjPDNd0ioRb
	 zMWCrtKEjFXEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9215CD59F73
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173092775358.32563.4375428647715729154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b437d1001c7732cc127eb09f3de28b8b9d71a6f5552b2b6e8daef27b67a1f7e2
Date: Wed, 06 Nov 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730927753
