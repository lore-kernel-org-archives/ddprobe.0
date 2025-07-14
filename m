Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF33212FB6
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752521394; cv=none; b=WjTD9uLiL4j0qB/cS865hkHpsHdWLOMjieHjK4zbf86j5hpdCiEZhaAwEveOzgNX0jhj6iwUY1bxOoWt7ph+ivbeU7wPrC3aWItHCQbjEqbuf69XVwtg7D1bWmBrw3m8gK8++4oKo0YujH1x6OmCpgtnQIx2m7rrUuHVU4MmX40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752521394; c=relaxed/simple;
	bh=LsEuFZ0pT+cYaP9R2Zv4UjNpUDypIkEsWi9I2u5NCMk=;
	h=To:Subject:From:Message-Id:Date; b=HuKMvsjFtVJKz+UHdWbLGHESA7GvjCe6jGwVl611fyGhOLAb+P86/FSxM6hZyj1wjbbUVC84QtrH77xdQGK3sfcOn6uNPNXcextxFwnFE30/wwXpDCC26CTGs9B72R4G5/GqNd2qZ0c/7D74jj8u3deH2ToUbwuAX+aZ6q0Sr/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OG819TNU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OG819TNU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7804C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752521393;
	bh=LsEuFZ0pT+cYaP9R2Zv4UjNpUDypIkEsWi9I2u5NCMk=;
	h=To:Subject:From:Date:From;
	b=OG819TNUFWfq2FjZA+2UfbPcjjDNE6R1M9bdsKYlL11crzVrcSpRcMQlgXmRp9+V2
	 3iidcMFxwisa7vvAsE1uQOVgj6vuKZvQXcwLDoXOSA7dOel0RizcZYcGC9zlModhEU
	 rtsZd6jB/x7qB9v6kV+0qoUfkrtub8m/ePvQTtlihaot2TOXwaLH408qZoJ9dhq0dK
	 uhQiAOxGCSqB39mrIZBtyZJ3PiaHatLf9i+RUj7BpbPlcpn3RxSxqfxqNwS22N/IaJ
	 0iI1pyWySLrsh3Y9o7ecVhAN9KzM6Sfc1hgMH8Ci+Xn3C++XQo5JLS2SRygEoX/rXq
	 cypoIEywPIBcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9468EC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175252139357.26531.8931615290584458752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80eb4e1254526d81bfd020e70c492e040ee212217bf50438b34b9192d4ce42d4
Date: Mon, 14 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752521393
