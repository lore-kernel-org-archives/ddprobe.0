Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C60232E6A6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 21:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764021174; cv=none; b=ClzVTA19S2N/hic7KK8Lq7SatiJ0YnMdGpACK+f+mpUebJo4D1GWxW+ZBcsKPeLltLDIB8GIjwlWw2heAt5cW7CuSrjhqfeIKI8e1hJZW6ZpVaHsV3OcUXG4APsoxD7bU6BS/BoBiBHcA+w4GnuGA78CxJ0wicae97r8hgD1iLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764021174; c=relaxed/simple;
	bh=10S0af0CA+OmvxLA2OhTB644bTzISThA84J5T/DenAE=;
	h=To:Subject:From:Message-Id:Date; b=kcnkE9dG1f21AKu+p4H1zK3xPQyPFxwN16diF7pcelbs3DhIgn2f21OxDx4Wu3WhCACTgrRVltNYvjq2MPfO9T9YT4jL+tH/Nk07pHRSMUlq6CQ7QM3l0xYX6FqqYShvciBlKTp7rP231yVSmSi9/QWLvSECNeiuJQUjmV2c1kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9Bu4q/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9Bu4q/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0478C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 21:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764021173;
	bh=10S0af0CA+OmvxLA2OhTB644bTzISThA84J5T/DenAE=;
	h=To:Subject:From:Date:From;
	b=D9Bu4q/wqFkKW2Y59sG7gxerOCTzRlDJ0/sZNt7/jBvrYBK1DQpiw/3GzrWvWRcnv
	 bcx/wqgm/tT551LPcfyvXUMrmbdgq4DpoT20Vo7NvFfKl7Had2MARUms1gVWW+a1d2
	 07U1P2DDizXjS7gdjLDi4yfCAAkDmjpDEfnhcKiuHQcIf+BBCKvbuD1X2cSW6hzw64
	 1KiEOWwaMGDGiWLyPZfQg22m9N1Ps96qS5hhAWQwNTkhiTVvjFk+vzeamLmh2PsODJ
	 CAJkH0jjw2WCHWZRQz067/GH4Arhlrn/UuoHrfRoJeWOz3BuflRfq9DRCzl1Kvl0TY
	 hvoRG/f/CgkUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F78CFD35F
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 21:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176402117359.26619.14090190830066942591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57c81c36979aa756a98f5ae9a7795c3c76b8f429130e9c401b3bd58fa86bd7fe
Date: Mon, 24 Nov 2025 21:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764021173
