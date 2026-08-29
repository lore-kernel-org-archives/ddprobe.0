Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 912AD42E43A
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788040834; cv=none; b=fGiog1LtsPPspqFZUnZII7+7VEtKLzPrZKXz4zxAy6O2uxu+2cigllIgWkMI//XXwHCA5vxG/Q7wet4aNCD+W+lhcjpzyLtTU64F5JZIdXxuR7AUAv+PHZ7vdxzwwdG5Xey1lCRKQ/njZ3z+r/jIx5t8xxeyKhwbjVnFvniGVT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788040834; c=relaxed/simple;
	bh=P0MNQupAjfS7/sLkkoTVmXdKEV+evlDSgZL3dxMKhKc=;
	h=To:Subject:From:Message-Id:Date; b=txwrfG6ae7dUtRBI/vxCrTuBxNzdapuiP8D14PxDETxe7JAmoxv71+tv5fGKAgbi4F6YHVdvhFcmEsTiG6yntABOJGVKOYnLyicGLaE6jH99f90AdiAKirnZHiiJXeAoLXxvE9kA3375fdvvPqLvT2nTAtkGnXxcNHSiEbf5z1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbNz2R+8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbNz2R+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE044C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788040833;
	bh=P0MNQupAjfS7/sLkkoTVmXdKEV+evlDSgZL3dxMKhKc=;
	h=To:Subject:From:Date:From;
	b=ZbNz2R+8dSZS9DZRwkb803fw1H4B2bClwioQPEqF4ds4jE2UwmebXwuIgJyJo6RCw
	 16pgpkRtgfGtF5WZA57NyrZIFdNZ0oWkM774PdW2aMtbQZkDWovURXBsSvgH+9AVp9
	 t4Hu2nZXElUZUmVAbuY9WXCFGEVo8Tg9RMBsGZcLWI5XvX/AHwPN81O1DUW7dhsdr8
	 BzrMg6ijthEVUnvO4tyeiz1AdDjq0EpJkHOEjzar+MJEIrg2od9y4xoGfa9gzTT4j3
	 K+kfZFBHm0QGRt0GgEehTFV2TC+Fp6zULHRe9+1h6nPK13GLS5SFT7tFEQyXrLwwJe
	 f0oJ2pS/e65tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB4EC61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178804083369.24788.14482757276917565642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5378b2153bda3fd92bdc98b93bfcb2da997d4c0ba88912d3d37eb613e19c8b0c
Date: Sat, 29 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788040833
