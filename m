Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EF913B293
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777152454; cv=none; b=nFWttYDrCjn/i0LblsSHOYqimu+cl3XB9wJdg0SLPOMpPzO8knz9pwcyvFCgrxy5hnN+rYcWrSpbl4+IPezkLhCAmMMMy5fy4Tz941mm8Npw3GlN7OStbE0AG+Ov4vIvGq/Q/niNlqz/8bOcPYES4DydWA0Uf7fo20tFWt1zCuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777152454; c=relaxed/simple;
	bh=Zmd70sAcsmOoBefPnWa5goj74HCQyKMQIB7DRaVyhoE=;
	h=To:Subject:From:Message-Id:Date; b=QQWSHtNY23dSjVHqX8DFJywXdoU2oN5PD9v7blTqr1VjAfjddkziWf9sKwmYT0f45fAydOqy0yH6uccvySMhRHp5qLjvu/M+ewoaZv6O4ryouprOwIjTeDaW/T9PmYHfXBvIQbAyGDXq0Gg5wnPSSqQXnHQrOSLwlzXufHPrDHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dypa2EVb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dypa2EVb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE6AC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777152453;
	bh=Zmd70sAcsmOoBefPnWa5goj74HCQyKMQIB7DRaVyhoE=;
	h=To:Subject:From:Date:From;
	b=Dypa2EVbRQcgfRasjGH/m4FhQSA6D3rwmaCZcLuXcbZ1ECmE8gVx7DAQbqySMV5f9
	 cOw8TrI/ROHe4lg3URK9kjro2ZFEY8oSnMFSBMiqRLOuuTeR2q6f4+pD/JLm0Opvh6
	 7V7nL0pjfi5glALZ835wy4AUbDlNWu3sj30zWQyR5iqnnHKFoOOd9TRkD0v3ZAxiUn
	 F4I1mXRHL26l0l+EVc6tFQVgc4WoYsBhl4GpggX7I9hw9J660woDrNuMz0YIcx0xbX
	 Jwk3g0PeqTuVnLW3Z1zcEVqT0FE11+BKXKxckZ4/50j/ux00AbgHNJjMiWpeA/XZZN
	 T4VSGn1TguEFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC72EFF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177715245368.4596.7381924964535761661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb05d9ce8b991cab3f63e106131453db883a01fea8835a1499f8f84f8b28fa53
Date: Sat, 25 Apr 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777152453
