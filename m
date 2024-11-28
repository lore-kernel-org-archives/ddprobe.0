Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F89217FE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732752954; cv=none; b=TPHM4dAzb1pmKIgA5KH+JFZ4tbZGADOWMYXeDzRG7fRkeW5qcoPFcBwTeol2sociDxJWRnq/Tu+BYfN3GES3zaHIJCmMPAKRjpAIrqez9Cn9wxGCN8nKtVbCOkk8qa03QW1DzaP26m6bXvCLW3+zc6BuWhNZbbRipCvJgbMfTGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732752954; c=relaxed/simple;
	bh=gevnze/QAkRk9yPI3t/s0wtzVFC1prPU421FpG+/bxs=;
	h=To:Subject:From:Message-Id:Date; b=JjhHokrOIalyEByDffUqkJ/dezyNDR2ZDH9hF3KBvY9Z/sHYfOMlUBisxiQpk5UkKOfM19LjP+XYejH4AD947p6Ip667c/I93xAUtDYL+26aeWTc40pL+DND8nBE+RwhTNC81pvh+GpdTZkoLNYQmn4rSQANY1t/pLqVwGcndjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jg8DSKem; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jg8DSKem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C0BC4CECC
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732752953;
	bh=gevnze/QAkRk9yPI3t/s0wtzVFC1prPU421FpG+/bxs=;
	h=To:Subject:From:Date:From;
	b=Jg8DSKemXxTMlDVMO6FhDfVAmupd1TUtvODXvMQMWpLL34KCe8bGvKxQhpFUhVxwM
	 +92v3iXzSlfGVyPshBCJvkSPWzTvk/laefaXuiT2opqj3MtnzisUnB7USWE0Um3fQq
	 CSEzKNzcmqy6blUO3WpuR1sEz1Cv2m89liznResuc6mQytDGGghv4ObkH0C/IoDScz
	 yynFL0ejXPqOmAokODAdIfHwNkN73xdnxs1QIKp8nbs6CaUekMYX7Uja2mgFQ/zMDV
	 Xm5GwMPG8g8NBkFrSi2nYqSKiyCHF4Ci2/lr99aMf7AAxunh/C3vDVf+/UxWRIWcRq
	 UHOrep9Pz811w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990CBD6D24D
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173275295357.18870.5580604786779461442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b016d69c0f0777d36302443b46e042e7221ab132e06f7801b7281dd266dea0a7
Date: Thu, 28 Nov 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732752953
