Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E29F35280
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752416995; cv=none; b=A12d/lXgXXM02vrgg1BiZy3r1w2yj80u8ggZKtTz8y7zNd7uE9LjxJ13GAh9GxFJDOQJYkge2WUJ56z5lLTdfCOv1AhgP2pvsZBQ6rWCSEj686HctoKO0b5Ni1FPf2tnxnXOGaLxVpRhK54Hj/GeAfwnDWlMwxQxtXAeFt0/Cus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752416995; c=relaxed/simple;
	bh=II8ZE9+hEuHrRR3kELdjTfxi+8fjl9MAYfV2o0kO9Fw=;
	h=To:Subject:From:Message-Id:Date; b=LOFgSPbUhA5g/m1b8adALTlfdxFcnREd+jZyBQ8rrch23lcV42NgovFMlBrzBVPrkf+H8zSwKRiStNyBj3Km2RjGPnUGdAF/iOhrayeTvJ9cgFkvzkyG9Q+XlF2Iib1KkKT9mmwioTN7RZQLoDKdHxBKdaNCp1z2tERTZAMdH2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEDZfzjq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEDZfzjq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A3AC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752416993;
	bh=II8ZE9+hEuHrRR3kELdjTfxi+8fjl9MAYfV2o0kO9Fw=;
	h=To:Subject:From:Date:From;
	b=pEDZfzjqGNJpbJi0ehJN08/XMp5Pov79FPsm/xEyrsBMEDU42tgt2cnXKsIUTaGFs
	 2cnhGqmsWVfbmZ9aAKanPF8alvWuZ6UUB1q9XhFxCawvPaTgET6tUbWZ1Ns69IojQf
	 51aKgLqPOmaiUj1CAp6dfeswaCWYzOKHSO0mFjszI8UDKiVlJkfLGfZhkJAQRmqice
	 j7hAuyHv7V5GGGieApM8PPGHUNo53n9ji4Q0oIczQN/PQ/tK28p1UNlkCO3059bCHB
	 WLOxwtJNv5mxgyiFCWtqwz4pxiCRC1yqFoqvk3RjRr/A7cLehr0BjIO5zEibR9apCj
	 E0geMvEEFmJaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BA2C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175241699357.25078.11399530092222171396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b447056952f264c407a27fc13d6f0b99d8bd5439b1dd04464132879e6c0e869
Date: Sun, 13 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752416993
