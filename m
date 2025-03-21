Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE901154426
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742567994; cv=none; b=qDak8PgKwrHbBfJ87UBzVqwRpPmL8iuiC4XpPaHASA6HVN9wGOyzyDhCFZT9dHkdkTPJz4j3PyiojrRjWd3uepcOl1kcIg5nnmxYXQDRy3YCmBv6y1h5IsIIz4o1IfY/SFHIbBugy2cBDfOtJGuUzPSYW1zJuS01JXJpAXHD7TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742567994; c=relaxed/simple;
	bh=Y7zLbkwqJ1XfSmd7/Bz7m87zRUNoZxf+Cpk6b+GaDx4=;
	h=To:Subject:From:Message-Id:Date; b=V2Ua69eWFb+MtPowyFuNWU6XpupBLSqOg7K7RceJyXC/vjao3XwLx9PboLOhhyjc58WUM0Y8Om6MpNim3Ng60PalamiGWK58KlyEyrchGBN2PHf9YGqhxqNDoD4oxhAg9+V93FiyrRrwHjegJMyBy2o9R6u1hVLZRGqRoM84s/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzQuj70o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzQuj70o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B31A4C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742567993;
	bh=Y7zLbkwqJ1XfSmd7/Bz7m87zRUNoZxf+Cpk6b+GaDx4=;
	h=To:Subject:From:Date:From;
	b=pzQuj70oAsTLsYkI6BxM9nzxReEohRtUGwsZTG2aKq2k3Ih3Mxjf9g+ECRbyMc6Ix
	 zyng7n6hOkWRmBMVKtA6b82Q85rC3eAqb9+E9XJ1YXr13WwVSCrxSs7GAx+VKpPTGk
	 pwSf8kWsNO9LYZk6zO8MrKy9FHaeTmBO6v1X/V4gi4JPV+fmYGlGUwzfDWzN7fh9+X
	 UjtNIixtiOUxRUkl85s1g1b3Ekjvxv07F+wPqLGwbYpkQo3QWAI07ZTN6Q5L90dKyf
	 8gxtxIUidPN29RSvvCZdO034Hl0hKlJPTMv+APmIiKEhlP1qUDl2dON0uY/lLNP8iX
	 6MpqDwp37xtcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2AB3C36001
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174256799364.18079.18428431517824883027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ece176b2f29f67de855a2d908a4d1ff2437af5f49c3b9c7aab13e2680f2eb0fd
Date: Fri, 21 Mar 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742567993
