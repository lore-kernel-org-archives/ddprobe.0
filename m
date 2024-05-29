Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AAEC2F37
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 04:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716956663; cv=none; b=JIzwLJ8gBrgZvPPlRuGgfFAQ/tyD5PzHkvX86DWyW7B0eAMzxHZuzC1Bn3auhVptKGqTHSg0bweQCcGksORq3qFiyfhD4PyaUgUdywmtTrcDQNubTkKg137bdRH4phgy+NSkuF1ENRfDM/kvk1h/VC+GYve0OlT3lp/XvjuY/Hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716956663; c=relaxed/simple;
	bh=0He9E+2SvryIFL08va5B2f9LHAKZPFaL86eygYmNzo8=;
	h=To:Subject:From:Message-Id:Date; b=my3kEOHRHWDavNhzG391xx3jA7JIrUrX+pKvkYSRHL7tmL+oS19Ina0TVS6VoEoqlo0a3jI2GegOJGGUj84lKQXhwFXRaNSUPVIvWrL6DM0qSqevzZGsTrpVmai5WgGSInTzm6KdnxBb/Ub7iNqMPb6aSwvpkLlrRiqPD7vScdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxLr3Dy9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxLr3Dy9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDCDEC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 04:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716956663;
	bh=0He9E+2SvryIFL08va5B2f9LHAKZPFaL86eygYmNzo8=;
	h=To:Subject:From:Date:From;
	b=VxLr3Dy9twpia5ZKD1Bt16kREmWsOMx617l5eqMmAanAEjc15xyTDPo2q4ytX/jwn
	 X0jLatL7WhS1wDEAKWGz5zA1qo87jKPswnwCYX9gX8kZrBW5b7JujGLFZNpMn9AXwF
	 GQDfMopwhA5ZgNT7YfbsBdb68HLHuzM9c38s80YhN/H6TD2tBYIyJgkbEfd0PgoO4M
	 9m2O0Jmqk5wj7qFINwI9JCKmWcdFHUYdRh11UPeFVMHpRnpXs88eqLwDoNvLBnTIUO
	 mIwgdPVkB6t5qWvBHWHagas1WCF5b6Q2LndDC83j42skfGU70D8mcbs8FfxPj45zqM
	 CReQJnGo3rxIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8387C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 04:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171695666280.11454.6251801800214937440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a5e7394e09d396d0222c7d675985798749c6d0458d1c41228b2dc90bff15ca6
Date: Wed, 29 May 2024 04:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716956662
