Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BFE2772A
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727040354; cv=none; b=Q8ihu0yRIIwnk3MlgRJRxCDUbCF6SR34o9eVoJ4BCL9wqnmTMLkJZuu7BIDJyHFvc6/5wWAPomWeFAyAEVSV9a6X+tpgOHKDyBcujeVzmgAdJ07Ein8YBHQJ1IhY+S3e546WMBMDZYRstRFqUmvegqqwccmkbKG53FSTV9xGP7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727040354; c=relaxed/simple;
	bh=8FoGdlcCbp9hyB/QyyTBmuRuq4NpAqG+L3CuLefvLyA=;
	h=To:Subject:From:Message-Id:Date; b=qiYch0zVYzY4ow35kiTRmCZCCKSBzet4ESQBJ2njH4duHPVSK6orbVmQwYv13Ojlsg27buCk0IkQPp3nAgKvkeKAU+I1/OHoG1izhuGJoVCVx0Q/JqEvYKKPqhXCgWXFfvAu73FjXDCqVnQfMnEuZ0eRAvw77dZ5LlVGpC7v9E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSZXNT57; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSZXNT57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8649C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727040353;
	bh=8FoGdlcCbp9hyB/QyyTBmuRuq4NpAqG+L3CuLefvLyA=;
	h=To:Subject:From:Date:From;
	b=LSZXNT57kPY99lFQ3a8fr8T5kGipIdpU7PS/lAU51/zgBkuZCafo3Bp0HA30dcsMm
	 K8aL4Ge+O46rinEzC8xEdomnN07rqJb2NWwt4dMxsvNCbS84xGQO5aa1wL4ZKF5ncB
	 ZS953wKwqTRDrZhp0stPyETckRd6cBPy6dXL1VoiOAcXK2y37qMn0DXkfgQd/tGuF/
	 +UirNG5ivuDRdnB8s//6ms+12uElfkKuutBqo9OhHcswordvlcKmXGH6l33cnMmH1y
	 U0c5XRjQsQfBaQjtXm4BSllXq9Bz7za7brSRkdqHsuqolGhMFOdRwrrDwgZnGREMR6
	 4/mpztwQY1adQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9688CCF9C69
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172704035358.31927.3905092517399415070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f44b407214e0995d0b95fdb2501868e85582956b5dd73cd5d71ee3f410b2774
Date: Sun, 22 Sep 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727040353
