Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68952360EC2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 06:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781418994; cv=none; b=K4+p77dg4h6m0EBQVRVD9AVlLhAaacwCep3z77FbpFKumAuyJzs0YaufUpCcGuv4crtWYFZr8f7AlTGqqEhGXuf8p+4Essl1j+fQr3lybblb1+A9TWxGvqkJL5ZVMjXhdiqjOa8jd8Qfu9d0RFSBL2ESivatLPCASN0ISnjwBLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781418994; c=relaxed/simple;
	bh=E3AG69wehnYaJkXObEdxItVqW3V4jziOcMIxWnxGQdA=;
	h=To:Subject:From:Message-Id:Date; b=ZZgRLz8NEgfasgdZ6xvzwN6DFjHZkMRz7PChUVMAIBiMmU8pJKcmldWACkdAcTyJGz/cinJ8OGpeZtCdR+v5iSOi0HiJkrlmjSDVvZ9Cq5rfqPc5ff8IM8WPTOYPCAWXf4APPhuH6wPqeOc2BBnbIa0TWltwQXGTQbE2advwuqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2duy+el; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2duy+el"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5BFC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 06:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781418993;
	bh=E3AG69wehnYaJkXObEdxItVqW3V4jziOcMIxWnxGQdA=;
	h=To:Subject:From:Date:From;
	b=Q2duy+elODEgLyaWOOMWuVDzV6UdHSi0HukipsIMKkG0hAEf97/xhAFObFvYMEWAq
	 78kQQU6TkZKpcx6k+knNIkcjwMIe9thg882IgsbueG2qLB59+fW5Tv2lHUUWacUkPt
	 KTNCR9dIiJ8PRtwbs3GU5jHZXjEuX0PMzd/TVpZSEU4nSFrd72epwe+NyfG9xXANVC
	 5DmM7KoRmWI62fD58uo8IMZj4yGVMBarqcU+8y0NzzAJVQzml934w2cwdcVWldZhaF
	 QPe0LTv37UZOUlOvvKpmRrSyGNsb6L/DhjP1FKE8Nw9rSHphIRks0MapQecUc7qHBp
	 Dxd//FoxLv6Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9E1CD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 06:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178141899370.11492.5757390605689410696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31b72ed26b99426bed9a9ad6ac6dbe6c0f598d36d2da2ed3b99d0308d851463d
Date: Sun, 14 Jun 2026 06:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781418993
