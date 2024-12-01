Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2655A2E40B
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733042154; cv=none; b=q+aNqVswTauEF4UMZXjQWiZpkZBIvwpjuB2C8WnOLYKHF0C7kw4Dou1C5uESp0gJui6ZAa1o+XB40BtvIUd1N2HhSKGr32IR93PQJFEZYO2JOw7ooVKgHGm2c9yWePvQM3Qh9BFl9QEjWm2cVVlzI04Ho3zqbYSrD1GZ7WLwklg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733042154; c=relaxed/simple;
	bh=Q36kmtPgPy95jWaj9jK44hQXm9T4VnKqzczA2rqDSso=;
	h=To:Subject:From:Message-Id:Date; b=oJJaT/Vn0ZFW3f3PKnnCmr6fNd9gm+16YysQPFdZM4lgUzrttGrExul43AnC83rN2vzbe7gNJI9azTvqNioHB1ynF511JUtLQrgaO/bR+zXdk+qdZfSHDXfRC0aVx80tfxXO7Ck9bBPZfXolF+kj7LcfVF7qdymM+uwwzQE3/vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjRdeLcY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjRdeLcY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D20C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733042153;
	bh=Q36kmtPgPy95jWaj9jK44hQXm9T4VnKqzczA2rqDSso=;
	h=To:Subject:From:Date:From;
	b=DjRdeLcYNUYMsNy24ClcoqEo1lFizYXFJAS7/8CgHI1QUesDoaz/14G4V9wpedIQn
	 kVj5Bt2Li+haKpfLY5rW6zmIvTjFF8cGOHfkc1W1XxMjLd7/OSAZB3O9q+PxfCJS0y
	 ne+zGv8f8EGqEuLopgWI4X/Y2dzGFz8Hmr2FiUb2zwSb80Xb1cRjOX1RvbK94Dzz8P
	 OrgpY3eZO6l7/7MaFWLkfXy06i0QTjvtqs5oAijsvxe/2VwLFrciTRAhBONuc3lM/a
	 ynPlqmTY6US44qIhz6q6iNOqx4xFl6sp1KI/jE6KGBLrVCC+251z4RK9bkImZPIgTg
	 dfE8ueAkQDY3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B2ED70E0E
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173304215358.31833.12982394128981789242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58e9d46aa53df843ef0b3e5c59d6bac76d65acec8cb5f89cd9445bb4d0a991c8
Date: Sun, 01 Dec 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733042153
