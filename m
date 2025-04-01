Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BCA1F152B
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743509394; cv=none; b=rVv+KuSasMacsfA719DH+lW1C1LTqSCKqf50R2ZDHFgM7DYykW+PmHaqjl8AVjcrLIzbj/e1OWTlCfxW6yw7LBngAjzQccx2xtZoa2E04TcP+5t3hPHSmDHkgQ4MukLx8yODq9orK2WN5ebiIvpX2sYNNXaHab3SeayHV5O0YqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743509394; c=relaxed/simple;
	bh=NdG9XueNwqc7NgICtLV+h6ds3a1VzMCLaDjOGbPue1M=;
	h=To:Subject:From:Message-Id:Date; b=sS58F9FHDDiYFzh3tAOlsui0NT1K2U7B19HG3uodfF41D/aFxfHPXWltBCJF2nZCHFPd8AZ9rzHVV21HMDzejndLX9eE0Xgtv0RAggSKGapxtR0c706KHp6lpMghbPJKeRz5Y4EG+NSth5Cu6AuNTsq4cGKd/xnZIVx6dvcIqPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OD+DJ1++; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OD+DJ1++"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1ABC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743509393;
	bh=NdG9XueNwqc7NgICtLV+h6ds3a1VzMCLaDjOGbPue1M=;
	h=To:Subject:From:Date:From;
	b=OD+DJ1++o/XfFTqiNeAqhEjb+L1itD0Cf93x/IduH/mGn/+zfRZRM29rffVqunMiI
	 kAYMG0kfRhq/Lx51gEomK3VkDOm5m6oDZ6pcyh8UaoAgI0T6GLD7/PAOLPxz2NXqV9
	 FLyX/Fgwu/5KUBbEtlisBT1sPbrAeDaUtrU7c99afFy5KIxzTbCZ/sZtkbqdh3lnJq
	 iu1pdPkxowwKBvDcHJSlEUOqJP/RCTDK8Xr1yhQ6Fh2mHnaJLmHY93l1Olq2NeB9/f
	 VheAQm6J8BIjBsldnynxVWdR8j4Q09wqfW4RnOd4uTqfwxawLN2XfWIVz2QqKcZxNA
	 iieUjhY7kXL4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9975AC36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174350939358.21153.11095768451636405634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a72acee1eb875af3aed1d331dc4f85220d3c9c06db67e07bd226862a390c00b
Date: Tue, 01 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743509393
