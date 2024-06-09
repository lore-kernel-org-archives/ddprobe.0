Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594B4256D
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 00:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717892243; cv=none; b=H/El8P3p2i8c639C4uCuLZ353h5VwoawhXNzbVOukVY9h0Tw9kqYR9ZwSnbN9jnIGJHctOZMy/kbQ2t7ptdgqLqaS02+pl4c2TEuYi4y35qUGdlCI8Vn4BsENZcFaPW4L+yrStgp0/w8l0spRi/cNdg+P3yiruVsuh+Pd2GChGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717892243; c=relaxed/simple;
	bh=PHZaQnj+W+luAqO6O1DH9xrucnChnQl1pUyEpS8IS3U=;
	h=To:Subject:From:Message-Id:Date; b=jnn/56ynMLuU/EHpDE1U47NV933GJrs1YxPU18M+0XpLvui7ZPGZataI+TT1n24pGLxZDJ5wELRlM0XBcJktgS1SKkIqYRwR2Uwnz+Vc5yAyrAT8PMUBomTpNnW/AWiaUuqm3/W3T8vukxcBaZl2gURtFCK0ofvyG4jxcRPxv6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/JytXrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/JytXrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E07C2BD11
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 00:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717892242;
	bh=PHZaQnj+W+luAqO6O1DH9xrucnChnQl1pUyEpS8IS3U=;
	h=To:Subject:From:Date:From;
	b=H/JytXrXvjC070AU1eyml1cnpBxUWuXMDIjK3Gy0z8VUVeCQkIAppanDgtnAQUNmH
	 RyEht6byqOQN7MUvgJyT35T8arkVgXsJnxyk+/eEd4EEa5T0rgUj5v0uAxl3F4UWX8
	 VRJ0RZwQBJtRnZd7SjJzOJ1hhjn2kRO2VM45H+NE+wWJXeq7i/G76bhqFRJFra8+nk
	 kIadvY4xUWcFM/Dt/xzxA2XYv5+SK0JWGgvHPvtPE5AcqPCJJaI6yf2HwUQOtgGbAk
	 uedK3M/M4clQOJsbm7/VxT5c0V/Y1K+0+JyhowPAL6bml0hwGwFUrpM1JyVjJ6mh59
	 0x/EI1QrSdPKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C72D8C25B76
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 00:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171789224279.22749.13493425861214651870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b38b392e8f680c7b381bc05b408f1d3f898dff2604fdf9231e6cad31fd6eaca9
Date: Sun, 09 Jun 2024 00:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717892242
