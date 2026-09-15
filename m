Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B69D3D8918
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789456234; cv=none; b=R405pP6vnzVvYBx/BL8dSLsYKq1jZ3+dS+husQRJdKyTKysRmanSJW0xJVfV6/H2pyg72H3KdsZPPSctxqrRhjPgwxKsf2hu74jiGsNLIMFzMd35MB7UYJ8hteXeKFmg7p992hJKW1kOWdVA0Elqy5E4BGyKxV4+j77mHnpUQWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789456234; c=relaxed/simple;
	bh=BM55iJFa3KS+o4Zi+JMEuHDArg1ZrW/KbUuE4GVhjWU=;
	h=To:Subject:From:Message-Id:Date; b=u41HZFAeCe0EXExg1Fyb0jJpv8gN090htiHA6JpH/8XDjAXtn82jZD467MCF2TbVU22HKxF/ul75Nn2Rpvl8iPtUfRnyYf5Wv4Umkek0yVJ9ASlxmLbyedzQT31XcfyhntY0oeaYOed4kGfQskbgtkThRWe9AVDEF/41wc6SMi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvfaHICX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvfaHICX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE1DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789456233;
	bh=BM55iJFa3KS+o4Zi+JMEuHDArg1ZrW/KbUuE4GVhjWU=;
	h=To:Subject:From:Date:From;
	b=mvfaHICXUu+9mfSkw2q/BlCnU3gCXr12Z7rUBZ5eXqBac9H4WZ2AGLo/4qwjbb2pF
	 bSVAaB1FXzqCGGJUByy1Le3XvAG6feDSPnzBg3r+FMq6+tbQOjvunIpC9nm21qYNND
	 GlrO6EhEd75VxCHHvyFhgOZrvYsqECSXuwUZDZ+zRIpvK015+ZfH8oZjISa0WTcjwQ
	 g7o47r0CHgzGVXJMkfk1tt+CIWRGtv7jctVSWI/yfgOUmyirTWoeFvzE7y+3YC5uhl
	 JQKDs1kh25PrX28jSBsOrnIVw8oRWSTkjeSnRjBNSeizEsBEtQJKNuw7FPnwRSvxde
	 b9DYSAwpqbs5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA32BC88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178945623368.13270.6218848830816712822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 682d95d0018afb36b36d73bdd146a640d7035ae0c553eb09cb9be3d78feb4b76
Date: Tue, 15 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789456233
