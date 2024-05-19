Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F69339B
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 01:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716083543; cv=none; b=XoJIWIHCWpebQQjzzQqg6MXeDByNMqsg4Tv2bUr5xxf5kfXB/ZjZazKfvhdtOTWGooa1JdE5HBneHyMCgNyq48ka+gduzi1JFfvry5c71AOF0iLW9GFzNRKd+ilrIP6dR292LoxRamUcEewEzUCZkEV+qgPPhruCdLdU7QYiZoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716083543; c=relaxed/simple;
	bh=BQPrUIURZzjn8mkx8e/aHKOWykR5usWHUm7h/ACDFC8=;
	h=To:Subject:From:Message-Id:Date; b=kijBm1A6G7qB3RRBxbkKWN6yS4tfqZvtstb6PYP9xdek2THSV+4pNiMJErbU7d3BEsa1WsPE+JEMFHCiO83Sx8QBS7VeJ6dcDTaCRwd7bpgnis6M5NEOs6fdXhgEH1H4QQqqEeyHIiK4EULHekXGBPdFDVTTA2xO04HwJOMM0Ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JPgPaqsY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JPgPaqsY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9121C113CC
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 01:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716083542;
	bh=BQPrUIURZzjn8mkx8e/aHKOWykR5usWHUm7h/ACDFC8=;
	h=To:Subject:From:Date:From;
	b=JPgPaqsYzzSN4i1LSPNj93TZwbYRbFgrWfY5x5arvS9ZUQn+ApIsnmp9O82r8Nq7/
	 1gZ5P5TITXxjLuhJwXE3DHJ3O3Q59JUvjXavRiBZ6yoR7NgoDmOrWTtTZD8qMQNmA0
	 bdUtGIfLNdNdh5TUOPjqTaHEIOe9/Ojo6hzZa8IXxBypC1GCWvr66KzVJH6blFX0xH
	 C1C50bmAoB7tRS0KDMvDsuLb0hlXsR7sEisg5iYTM4jeMPLVklGgXNYfaTIFBEqDFP
	 9MBCv0wYa2gn6+D5WqZBMU7zPageH6AOIoWhuO7GvEZnG/3hNPsjI9VUof8pfCedUO
	 KRIG5sn48VXug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C26B4C25B74
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 01:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171608354276.17245.17736173329136286452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db88352be968af80e4d3bd21bdbbce7c7259ba21a89f9b18cf844337648af3c8
Date: Sun, 19 May 2024 01:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716083542
