Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF064A9D60
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792051234; cv=none; b=tjfmFvgqvwaDdYXO7ei8tluClXpjYbU745PzXFAQuYICqV8/+H8mgVp1nzZRC1Ct6Cpdem2FZ9loGZnFryY7ASsPbIuGCoRfJpawE4oc3O6hFlx5d0iCgGMn9lf+4Xr3oLlK5B90qWFthU9ca7JzRHXqfzuhEJIrJQKjh3hAOcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792051234; c=relaxed/simple;
	bh=uM+w6QeBXdfcTteIktGjNEwEelmcjcRAZIe2L2w4MU0=;
	h=To:Subject:From:Message-Id:Date; b=s9j+dvuzK1AhBkYfYrjdG9GPtdbsVPHHhojI/zkuSfmVDqkoS5vQ2yC1XPRwpGsFF8h58dbWWuhFLgWjSQLDAZtVfXtWGchpFIt3lppUII6dAnqu/t5CiNKSgP6bq8aaNZiE8Gi0L97W3ZEaSZhrpCANSQCq4geq7tk0LyjKWYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CuBCvjdD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CuBCvjdD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC327C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792051233;
	bh=uM+w6QeBXdfcTteIktGjNEwEelmcjcRAZIe2L2w4MU0=;
	h=To:Subject:From:Date:From;
	b=CuBCvjdDdG2/d0NWiw1c8axLf3eUBgeR4N1mDsY9t5c/Ao2wdDku+XN98Vj7oCJxk
	 5zUzoozAsFXPKQyGUEcPJUUsolDHiaPDCACqH/K/LD1b8fuJmhnWMpp1KXrt7z675m
	 hLy/VWa1sPrgQMyxM/ZAYhbcj1QagKzsG5ublShwV27/fstxT0FiY6eUN+AIpmcyNL
	 oHSfqNSbU4nxS1kd6fXkyqS9TqjDJkEqAZTHUR3M5kQSJbMIPiOgTqzuAW3H3apMIg
	 aPNXZtSnmRwXRl5TPTqqB2zkf5h3jFcaN61KTH2nHl5TyqfeOBHypc0+DyRrgg+mbG
	 qGKCI0q6Ojw7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F1ACC6B2F
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179205123368.18059.17747749080087868686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30f153c1f5cd75b56ec1a712c2d8e476229e1f24783e5c1af5506f878e3fb8fd
Date: Thu, 15 Oct 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792051233
