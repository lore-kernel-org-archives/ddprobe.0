Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D87BE55C
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769260434; cv=none; b=Lz3YZNct9Eak2yxBg2tdJtuznoZ3/V3W3culyATtHM8GPhIhZM00ov7BFw/mIxFME7i5lyoaixAK273E4Ml02z1czxFxE87iH/sacvwPn0l1B2tBZVKqr69FRqFGlYDMofRbGOb1rNibJJfR6tpdkDNtqKbzLTaDkkSjntHx3+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769260434; c=relaxed/simple;
	bh=sCFtTI///HVehraNJ/y1p013MnSAL//aea1J5dXtZMU=;
	h=To:Subject:From:Message-Id:Date; b=qlBd6zWV6J5+7BeVhOytzAROraD+7HVJfY2bjaxH8ukYUiZ8HsatHzZQtH9+9xAOA1YRBGGgtr+afEqQG7qKgQvH0lEbUv8SVG21LsEkDJ2w/2x/SJa+zceavXGyN6575/Hh0bj7D+La+iKbtmDSusTdKMJSixJd8mWpdFndZG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nmRC20BP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nmRC20BP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A671EC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769260433;
	bh=sCFtTI///HVehraNJ/y1p013MnSAL//aea1J5dXtZMU=;
	h=To:Subject:From:Date:From;
	b=nmRC20BPjNtuYAIKrHxU436yBl2bj5/S2/a1zGe2/xYsuCz5mlO28b1I5pnBkCKpw
	 sNw3rg1MPDV2CALTnLWsidsyp1E008ECAA/p1Wq4Sinj4E/rQ+Tu1uN2yKW/kVGBlm
	 k0g88OrBNgazz24tV00biTwyQ7IUmR97mh9JyjHft2OkNzKIjGbITGUSiKI6ZyJvYr
	 ZPc9oQNjtNFE4TZwPj+cGBcX5mHUD3ACAqbEfQzbNSfhRVrYjxxBeZuiT/8Qwt4pRM
	 6VUHR66KQzLymE7pin7mXUpuGfihP+4S2VerTyCFvJlMRAUvb/gZP/SYonEyyTPfr3
	 MK00CfCh83Czg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950EBD715E8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176926043358.8900.4694528654807148360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6894e83aced8a07c0b4bb3e0e9f1540a432596f1ee2ddb59f4da2fc7e97f8133
Date: Sat, 24 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769260433
