Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4EFF27454
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750057794; cv=none; b=AQ2dbX8MZ4VjDSp7ZI2pEyc8BrnpmgxiLm6GVowX/seijcQRz+ZUQ8faE6izZWTA9lGOClsVEMwoBcDLPqkWHzEw6Tbkmn6VdxF+9jBFdfQHNxn5pQHixOmCXXt5a92BDZ1JJxbZYJF/fYhYaVa2FBYVTgfE6+x0Fiys3rcSun0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750057794; c=relaxed/simple;
	bh=haNBSVu6+N88yZhgMWBGDkiBPYPwFfGMZ8cj82s8ScQ=;
	h=To:Subject:From:Message-Id:Date; b=deuvMXkMAp0VQnLMegD7EY54eQ2W9n9yG+jue39XRKwQJJeBX4IJ+gdJEBq+mRqvWZbXwdXO2ZjiI2ZXlP9Sg/fLxyWzz5p0mn/UJuGR+HZ6pikYs8VAkA3JZg7dHKKlFU1uvM/XlMZ38hLwgSHlr6NLApuTozaHBc1nsARP2dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K4dKiIWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K4dKiIWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4ABC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750057793;
	bh=haNBSVu6+N88yZhgMWBGDkiBPYPwFfGMZ8cj82s8ScQ=;
	h=To:Subject:From:Date:From;
	b=K4dKiIWSBH7zZLS0WK2yEn4AK3ZtepA0Sf3dC9pV++y3g2+9LtSnzowgMpDx4BdZy
	 FxqkJESpXejVgT9n6oY9oAvwke9F4ZYZ2PDIoirUB1txCAEdZItOZPL3PERzxtqe0j
	 IKJJ1cqR3ZyyF9k4H93hIsMw54+xqxQt2nAMN6j0HNeM19045K2TjbFUkBueaSieaQ
	 5vM+0CuSEIdrmwQMCq8uie8KRMFFY/XXmDvaUPxEw8rrsuLG1qOUKygtChAUWmwsjI
	 WQbRZiZJhUGzzncqwcxcjKC/fC8spqpeWYS+1HMmcWEtMfubh2L822nH6z2ZUsfLAN
	 JkU0NcIaOz2NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A44DAC71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175005779366.4584.17676452276850115672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f4a8e215217841fc6f72d94f3a194c9551fa246c6331e6228af0703f931624
Date: Mon, 16 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750057793
