Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D35B21ABA5
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751147994; cv=none; b=BRJQYuAD5uq4cGm2UdvYMu+vN4OXZCemiGP2mTuDFKIrHMAyjtux1cTsICU0a3XLY9e9R+OR6pcBkMlW2MEq4u6fezzsrlfwABLuxALEO1gFNokzhGPYn43FXye5rql2Ge+m4+Fl6pcBwXYdEZq3AgsMd2sWUQym7n2e9TgS874=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751147994; c=relaxed/simple;
	bh=sg2TieWX8Qtil79mHNr9RTzRLTaXEurriZouNA2Oxbc=;
	h=To:Subject:From:Message-Id:Date; b=ofr5cBCGHDh5lr1dT6LOrjyoh7N3BRgxfiqBjlCsTYi/KC8thT2O/Ltwieu/FHDMfxpCYwBAA4Ml+nu5pN4xvMBrGvok99e/HLnL+0+WnKkgbLwv9dk68YoOPtg1TXcrFjW9K2i3gmwtAADnKAzLAjQWQS9knDOt/R/Wik97XGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZaZ2UHyj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZaZ2UHyj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55F4C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751147993;
	bh=sg2TieWX8Qtil79mHNr9RTzRLTaXEurriZouNA2Oxbc=;
	h=To:Subject:From:Date:From;
	b=ZaZ2UHyjrRm+8+ze9MrSQDqA6VqXMyBhqwK3zw7xNxwGr/S45O2ccNEEQ3Pz8MUZl
	 p6JwUttzDGflUs9YisxO+ZcCzdRguCtWEwsZrQYOseghHEb8RmUkFqyvqD0p1pGBdQ
	 Fc7v7NEdjRSto3DurJJ2/mOxBlczkZNYa2SglklUu0/jXCAuU/95ttME+IzNey5Uuq
	 W2pfIHM4Ss4ZNuGxJRee9IorPXlzgvY9xBMh6w9KHfiEDLsTwHYgAJWWLXrfCaJp5e
	 +YRuLgykE8pEDbL0HGRcSHtxoDqyM4DyF9/+9UbllKeXDJ+FpVaMmLBngmZrIgJVPh
	 nrloE7wVub7nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916B9C7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175114799357.14430.5234665121747117550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f2f105dd5ea4d60e1d84c9539d6e3c14b7a9299c877297d22ae382afa082a4f
Date: Sat, 28 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751147993
