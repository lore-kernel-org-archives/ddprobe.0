Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5E83128D9
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777717654; cv=none; b=GcjwLYc2IXVZJHYKNixctB30YEryTiC5zvkJfADsnDG7EKvwqHeoatKy5myuSWlYDqwh/IUSqiKNbKiTcB6ynKcKPmHIGJ4v8PvDpM2+i67/T/GH5xz7ZLYTpSvuNDtR/rE5f8VtDlflpKq9oAGKHPQQxgnEwPGG0HMBQOUW6S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777717654; c=relaxed/simple;
	bh=wuCNa2nl2wlFlcLQyr1onZteB3PEZbV+b3lJccdFOyo=;
	h=To:Subject:From:Message-Id:Date; b=CGVB5ofFiqEvFTBswolaso8I4FtJMaXJKI+AChm2he0XwCKSHjHfabIhohPwwMM9u2o2zr6RmseYzYRYY9bBkexoDr/id43fJHvfIleCXmgF4LNbNiPj+GHhEH3sXv8i/OSEFPReG1OV1b2kde54UdVNYEwWX1PSTDbpBYdlz44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4lM1DMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4lM1DMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCCB9C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777717653;
	bh=wuCNa2nl2wlFlcLQyr1onZteB3PEZbV+b3lJccdFOyo=;
	h=To:Subject:From:Date:From;
	b=X4lM1DMqkgXHwcGEMXqAhBV1fvP/TKInn5mTgu6HvbWCYjuz/Wz1Y/xyLhsHtyGx2
	 YrZfx1plQK7kMCjTVsuIFLBSSTOTQtMByChGVT6kS1DnhgYhynqYpDLVeBJ/WU2Ivx
	 Q8lx1QC5UncdYYYCjjWnxx1cU3jLZxXM4xrlTjOWAormDCIyylriqMidMOx8++GKm5
	 uUVZCy51qg6kv/2VwKjevBWAR/Fm0LXMc0pTecwifPAZNEbuKCeeUGAwbQLKQTkn3a
	 NcNl1wtktHZPNpLcOGy4kBSD2hnKg8uFCPaKiSAdwkX0gvcdXov7couaZ1zGSjA8aF
	 SD7v8mQsJQcug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC91BCD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177771765368.17463.1808435197771437324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8165768d1b9cd596e8bc7a09ff8cc2e2168e20e0800a72ece4fb919a299cbf4e
Date: Sat, 02 May 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777717653
