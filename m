Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF08946A
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770568434; cv=none; b=j68KPrAkZf31dZVkdP573LVLawJNo0PeV57A8IzNvt/8aQ0noZcM1XigqzFrUrz7tzQeLe55nRELUGCSY5ASdVA0Rl9nrdBK36Tvmwdcmay+iPaTITNmrH2R5c+PqSb1TgeBtP+WpI8oKSxh9klWmcYFAAPPJZMeFvG+NgvyIMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770568434; c=relaxed/simple;
	bh=gWR2IJN7zw25gWrwCnitCTh47XS38PBZh6h8OAYDYnE=;
	h=To:Subject:From:Message-Id:Date; b=up+7ozGlnjmYPriEeNvX/VmPp2T0SOyXI2fB6nBNC3eoi5IrVwvU+HeJOPhbaxKi2sU5ONsZtaWq0WGfkB2+iBZCmA+9anMLm2uY8V30Pt+Ji0x4UKwY9Yx99EFp2KOh9rrlRg2p7cj/CxvxTfQXfiOKYb3yg1cjrao2guPeW+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzJH8f9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzJH8f9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5937C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770568433;
	bh=gWR2IJN7zw25gWrwCnitCTh47XS38PBZh6h8OAYDYnE=;
	h=To:Subject:From:Date:From;
	b=DzJH8f9We+C+8jpspNcBio/oLp6sdmwbE3fnkotRFctmLAUXaHYZxW9rF3HHDO0Ln
	 eKvn52o5oep0GzYUODBAj05oqhEkk2qlkTDAKkyveTUck1KC2tUQ8q2PdeDfm4WuRu
	 RxoNcT5qU0pREFCj0AVWXy2kLgAvOH3DtrgL5W3K0t/ORtuvf0eM7cIC10Mk0qauzE
	 reg78kKjUkvo/0H0DSJTPMGeCiH3I2wHERAx/EIXOCJRr1Obts6D17+SAi68JtAU6y
	 CgHqldnnpEX98Tq0FZW2RoNKE6ToBy5R5yo8F9o0f7fxLGkuKxEXO2HQEZFo9Ejp2v
	 4EAFTkK0OS0Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F263EF06E1
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177056843358.20473.6535510636024845965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 081b5750b2812cb2f124df876bc8d285d95eeb0a6ee95da05eacb2637ba43e7a
Date: Sun, 08 Feb 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770568433
