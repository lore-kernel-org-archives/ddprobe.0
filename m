Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB082BE7CD
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788126634; cv=none; b=kzfz2CN8fiMed6vG/AuWZMM0Z0yRqG5dmfThGSJWefL56kr7Y199sI3NT50G+3AYu8MPTs+WwbxlBu/QnD4aLesvbV2VdWuemCgb1RcBFBdjU+5UlgP4osah2sPwBQx5lJfeZ2wm+9+EBsqYKO2dFyeaL4C+W+8XcWwDZ1Y3DZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788126634; c=relaxed/simple;
	bh=Dd4Nnb9egM3M0ZTJzhfooVsHWskeVLRyDDkeQgR2IUc=;
	h=To:Subject:From:Message-Id:Date; b=kpbERzpUCPWBSYNcD3JQ3UfxlbsUcuHjp1BwCUreVutjxr6sYO0rcoP2lv4R7QV1otvbuXFEIRHZ4EFnTAAUwTfLyN9g6fCEHROJrYoDbOoHNalZryhDX6e+t8/xf0LUDoz1sY9kmNYO8LOr0Ev32Ct9AHOUCB4nXZXE5TzOYVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QG17Bh+k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QG17Bh+k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F15C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788126633;
	bh=Dd4Nnb9egM3M0ZTJzhfooVsHWskeVLRyDDkeQgR2IUc=;
	h=To:Subject:From:Date:From;
	b=QG17Bh+kfCOmHdDPa/mNuIpGA6jC9fBmud2r8n5pILtkhmjg+eNzLJvC+Rmc+pMB9
	 rvDlIULw9N5LGUgAWlxQdHFycim62FlKzg6PH7oOBM/6PJLkvf+OYEsOJcJnjJ9tAU
	 AwBb3FGUJU3TuPBlqU6UZuK7HHvbHhwOQ/3c4VAdMTNrsgB83Q06bakns+1sXQw5YG
	 vIlbieEX64U5haBz5NCWKZRqbiQUGQklAiSAZqjHEO5/MSSoN2svsLZZ/igfNxhB1m
	 Be9ooX5LLSeYbVEVO2T79NZ09ysz4ZktTiKD13qVEAn+vEGS2zn6FbEeAM62Y3bwe7
	 6MFEhxB1H0BWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA57CC61DE8
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178812663368.31909.4475253755734507177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b9777c661de050f3d3ec88bb5e6ddc44bf79981596bbe43bd78e8e6e5e9aa2
Date: Sun, 30 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788126633
