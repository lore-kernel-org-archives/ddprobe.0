Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341A61DC985
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 23:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781823994; cv=none; b=tKyhc9lPPtJ9S705sGfZTUxHaWJTGpHkhc6nrO2wCqRH+LH63S2hkFCIBvqfM8IdO7HW4olj1Er7NdqaUYFF5zgwwRLqsoN4XOo8pQG1upc0hqfYJzTA4hkNX535bYWO8CHHawSKG9heuvlW2+iFauSPXt1jOq1e/l3cN/dIm/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781823994; c=relaxed/simple;
	bh=BYnj1Mu0KJWxO5GSR0Ij+QweO6QP/9O0x8zz6ASzfbQ=;
	h=To:Subject:From:Message-Id:Date; b=dk8ISmheG7oOVCfF0mmVG9BEExwPUO57CgIIhg4zMCGtwAvgXTCcbpEdyKtCzDHaqKtqmRekDM/agE+ZA1YDcsYLOLmc3aq/rlohXnve9jl+ZVb5mhm/Hym7KbYiotP5umjCrQroANP+xrS1w5hypn1RW4uP/VzQY+H9mcsH51o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H92tam/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H92tam/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA6EDC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 23:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781823993;
	bh=BYnj1Mu0KJWxO5GSR0Ij+QweO6QP/9O0x8zz6ASzfbQ=;
	h=To:Subject:From:Date:From;
	b=H92tam/GE4CN0/s00Yrf8re2lkWEpvFHtxyqRrykm9z1jbsm1KKW2+xfZWcI5x0al
	 EiTxDhwsDeoRkykZG9a9m8I2UpP1UjaqX5IgKElutmgNmrcwltAObmt8zJR+UvY4jv
	 2n5HHVYYnghhhl63c2pHVjtGtEFBhxYajwjc2ZIhPBWaB6WwaBcJyNivVi5aOfacOR
	 rdDPddVuWPasi106pSi61Ufc2U8PIKixfl3Xx8sG6Tz4RdEteCOYa3oXc7YvulyiJL
	 7Y1DBHTXg6QHiKO/JBA767fmJ6Gh0BKG6MKDm7to9cOOriW2bgt1KwU88dDMtQikYV
	 YorivLlLYPBNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0346CD98F0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 23:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178182399368.28160.655911050704445948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05498b44d20c40f259389f2f06327790042eca615deaa176f4afa990d769c015
Date: Thu, 18 Jun 2026 23:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781823993
