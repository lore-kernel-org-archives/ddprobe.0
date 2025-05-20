Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3A01DB124
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747721394; cv=none; b=YJWgkmZizCDyPXrSZlbu67Uxt9yeqx5Bi30rhPWw7yEttKBQCUre7n+aa/ifJ5zNsvXNIZy53dCVWfpytSI+LH8ZDhNHqUu4jYuGCuTvWg0yS2dm8kKdka220QgG2d+7rGJFYA8bmn02hgUF9nVKH1For6f+eqISCJPhGVHs5wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747721394; c=relaxed/simple;
	bh=mCem85kmM0LZ79UAV+p1Z1Bvk2F5hTLQyTXTg70uhMg=;
	h=To:Subject:From:Message-Id:Date; b=Gdts7jazLLRvq/MLRg/X5wP7qLXNBr/rk0KF1+p4YduKuLuUZtzFbJC/n+ocmZeKglGbW0fXpw5AIPT6cIxg33biWa8qbrc1TavSuSIMRf1A/IimTVFRzhp8QlQ1Mvi+AyWIHQlygX93/V8+qKI8aiuqS8thpY0xdJfkaVcbG8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTpbZ0YN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTpbZ0YN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CA0C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747721393;
	bh=mCem85kmM0LZ79UAV+p1Z1Bvk2F5hTLQyTXTg70uhMg=;
	h=To:Subject:From:Date:From;
	b=PTpbZ0YN5jgTafm158GOgSmvfXTHxddMC9obOHWSk5reugPwUsFdWKqc93nxuCRJo
	 IQIoYVkgzMlCoLu9DUR/xpeDVx0RvqbBHhY/rDLRPUZJwonstp9ubhDmLimm4WxUAR
	 +0tItwoGd7B0xnyuavlAq9pUDuytYmTSnj0VoujUnTbKhHEVniO2PdKKc/bCUamcgH
	 fSxlnrA9fVuINc/My6eJZZ2lvrJvp68HYngUo8lTrkp4+ZM9mz+wQPaPD6RA64hMER
	 sdRZNRwcO/Tfr9oLeM25XTb+G8cIn/qui3sY31rRpkXg1jx0qWIieKEnFmFXeceXYN
	 fSX2vrQgWbBTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E350C3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174772139357.7419.16354252150259415273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feb1ba1f1076a49f5c4c79ba04a6f536e6677783ab5c9341b20fb5d675cccf7a
Date: Tue, 20 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747721393
