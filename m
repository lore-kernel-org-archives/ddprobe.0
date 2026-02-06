Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03213376460
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770378834; cv=none; b=gOH3UYpfiazKLTfNZCjlBz/sXi3SGc97JAk/4wQOTgGL9sfs3FR44mbwfbGDzpQf7pG/IM8gIP2OZky01EVbwleOu37zWBELgX9OTD7SzdvgLn0rR2cJck/trHnH/oo6T0QM069g4elaxLC4f3Gtwfg5fp39RF7oXt7TFgngFek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770378834; c=relaxed/simple;
	bh=EWCP3zQiL0jkuQ9il91LaNSRPG2u3R/SD+bljveNhWA=;
	h=To:Subject:From:Message-Id:Date; b=u9I4+wRPS5t3vZFO3o+Y8zkvdWeZgD+gOSZ9TR/1C6CaCse8ooinF2HgdDDEZrykSW0FImy602lDFEYryNxVh77pRLOBOfBdd69Y8zSh7RWXMjDAoueNEXJP5/taiphnVATxg0U5LL/yvKmvR560m56kVftKoUhyqLceCFiNbvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYJoIW0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYJoIW0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D95C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770378833;
	bh=EWCP3zQiL0jkuQ9il91LaNSRPG2u3R/SD+bljveNhWA=;
	h=To:Subject:From:Date:From;
	b=gYJoIW0biBWIMDaPcSi3FqUXFMa9piopiD12IVlyU54TaR2T1/UKGVqOwrDeWH6GZ
	 752O2fMW7DXc0Kgu7xealuDpfFZBzJdn2ZB7G4Ztu66oyXgawzWP/bsmYFCWUDKroT
	 QWRdiVZ1zpR6RP2GKD1BcQc0Z638RN0TWVV9r9XlJRIXtFvVNsU6RiYPuhq7Q0jsC1
	 0ZZlJ6Ez2RC0Ngu8f/T6L968g/g0y0t7dQCCMKYr1qsR9v7T+gV28gXHtGSHJvXI1y
	 NEjcowZbJA5ZNSLFrOLlTfVkS7VLBzNN7QBjeEl7Ez7PpkLm+ierYXjzI0Kq75koEW
	 Ua7MjkNXwDtrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9212DEE2091
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177037883358.1841.18315672959280066910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42abb40f8723b044c504131ec59f2727da05e9d4926c20686cfc5747ae382f86
Date: Fri, 06 Feb 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770378833
