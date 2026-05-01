Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84CE9371D05
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777672654; cv=none; b=opDJ5XTtl8l03l0utvwKm/ZiXRSSo2MlrJkJMFXwV/cU6b6gk+HCsIwY3L1QIKl4uRv58G2UGa4Dw6nksJmNge4norwU728XhjTCoV1js8eN3PUtvpyjRhYkyZn/crBSjeSCianybc0xdY7mAPZR5AKlAdIFe6MYIfzHNouSr3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777672654; c=relaxed/simple;
	bh=davpNmTLgO9NJEdhRfbomfWSVjtCQBSzvmlBaasNuWY=;
	h=To:Subject:From:Message-Id:Date; b=P8zObpEA1WAZ4v+pZZIxvxyL35BBjBEljarg+VgRZWNG3jMyyBnylCPH36rTLdW2OgTXp2wNYNAZQ6HuKygEYNgPlskPKOl9tyhuFE2jzIxhEHwRRwJelcUY18g761Btoljiy5TfFOMuwwxGgbC7Up9Dz8uIYxNr/8LPxtIi6/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lyLd/OPy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lyLd/OPy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0244C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777672653;
	bh=davpNmTLgO9NJEdhRfbomfWSVjtCQBSzvmlBaasNuWY=;
	h=To:Subject:From:Date:From;
	b=lyLd/OPyAb2tBGmct8mddVUQRQ2QfO0VTTc1ELyXJoPcmOZu0YEW0yZew31TfCWts
	 Np/BLjNOEMDu+FEjv4AD4oJUyNZ5WK0KoMQYfpmYFBm1eWmdAqalXWX3PhF/ZDmEtl
	 BvkQCwGACpdl4IBQKgGzmHqQDjK5kZkykjt9FuKtzIVGwLIo1kXJ97NaaiWM3Ixi8f
	 I2SAK7N0WpULCgDiQ7k+ai/ClyuX5QM/8gOwZnrjoqZDVJTYWqx8tSqterzCq/+Wqf
	 u5hehexf04ZGpV6RkpZXSa4hVaOvHNnPY5Z75tW1jdIUzsSJLS5XK+Mt9GMELgBe/i
	 jGtctj/8dMFCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA18CD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177767265369.30737.11649500230457327164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a61d88b7368e84d469039edbfff25015db54384efddd4b1adb2bd21501242943
Date: Fri, 01 May 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777672653
