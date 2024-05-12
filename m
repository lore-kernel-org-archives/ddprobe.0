Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48992C8D7
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 04:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715486543; cv=none; b=ZoaWedQcZcVfXO+S1dLAOQ1qLgw035AqjgBpKtN6K8QEPes26N9qW98SECqvt5sT9mS6O+UMZaL/8mpc7C2VPhzTL5vHc4T8MtOyl2TlVuEspgfyCcewJ8Y4CaINccuqPoIdpRw9ra+ccmuv8yY0xbGn5LKeiGkwCaQPpxqy6OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715486543; c=relaxed/simple;
	bh=O+34QRclBiG1C/Abs1E0iw5e2lRPbPsBHXpMQ5fL6/I=;
	h=To:Subject:From:Message-Id:Date; b=XvZy3ML/v6k/thAwPDRIdBrt2SUB5lMLZYCzATglfSXHsVAJFAYHyRpllDKtYOtGFFB7QUlrfS9fM3loOhjccssv5s9M2CfW1S8tJPl8zi8RGwPs5Rly984E3fJv1eKr2lsDqpQOTSw1LkrvMUYeVVyYHUMnGSD085cVTvb1Y1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cE2l1u0U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cE2l1u0U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D84C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 04:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715486542;
	bh=O+34QRclBiG1C/Abs1E0iw5e2lRPbPsBHXpMQ5fL6/I=;
	h=To:Subject:From:Date:From;
	b=cE2l1u0U1MI7Ogx/Gc8ls39IroLBQqD4z53t6mc9vh1tchmBbR3+XTu1JZJcfon/D
	 j+ANESndE9u+0IhN+iFJnch1GMGR1StBz/QGrZejB7vR2xL2nMHnP6PNd0xf+rNz44
	 wAoNwr2NNATNf+gpHR9YUMrgIhx41JDo4GDMzJSHeF3+AQdThKg014FadV/4FgeBkB
	 kPVl6ByZQ0hqH2x+3MuzptKjZI7EbYjD3/agmyUZF/8Q6UmE9pVrnIxnBrZAUSPSB5
	 4UzHkU65OYfo3ruKg1Hm/T2Wlc3S+24XGvE34FLTo2JNyMFI2MS9taWl9nrZ5Md0ZW
	 G3dlYpzC3k2qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2895C10F1A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 04:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171548654278.2509.10188284914014995277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7813b68582b5ac70022868a77a830e1b5be44d9bb492c6a2e3cd9923b5e3932
Date: Sun, 12 May 2024 04:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715486542
