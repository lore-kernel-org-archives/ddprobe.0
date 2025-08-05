Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7E81DF258
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754422794; cv=none; b=aCEIyoRiG1eDLDjwZ8QXHY97wODbMLGGM5XUVe/8kuDsyfwpjjK8HEiLTKsovH/ONF63MgXT/5BNkl4YpMOMvKFgZdNwkG0IgVZmoPXpBrsjk0VczJ/ohkmbtdXT7vmT7y0ylg+BhInPFh/WZ7kpw4LnoNGtVFPdN5Lslcy1bSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754422794; c=relaxed/simple;
	bh=QFFbOVQ/yx1JliE0ADajvyzQniVrmh79Pj6kyS5oB7w=;
	h=To:Subject:From:Message-Id:Date; b=jmjC5DZ9NjtVNBxREVDjWvJs4TJgK36Y1OJA1cvaoElScin88QvPY5q0v3CmEBJvd+gsUu+8j0lD6MYTwB0TUS9sdI1HY1qn7s449t3BBFEzPmnO5AsavkAkwHF/lPl5zQTQy0/s5F5mmhp+vGv0UDKwWK57YXv+wy3z122owgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqoXCgte; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqoXCgte"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8289C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754422793;
	bh=QFFbOVQ/yx1JliE0ADajvyzQniVrmh79Pj6kyS5oB7w=;
	h=To:Subject:From:Date:From;
	b=cqoXCgtetqYrL+Elvgv/V8knn0+Wxq29HroebbsLe7Tcs/tMWVNeML46LW6vCTnH/
	 xXHapDzITCdquJAIstt6EWyTYUIfGX3E9gF10iKHDfWTk0XiaoS6UHg15PMib+PVdh
	 6Fk6lWYxsGlq3qO85YupGsjNTeCGPVOh5MlDM/N51fTOVWrqmTAoZ1i6j+x38sfgHw
	 7DXwwLaMIeJaLhiyN+MZUuAxc34UB9iLB7I1NbzXJUEbxA1QB3IQePlqympXGTTM54
	 1s5SvOdOP8w3msPgvyM2AOCHn4uEoV1hk55etpvyUpwR4+WgXa643xvEgPnt/zbx/w
	 1+Xir9r4+FsyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92986C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175442279358.7457.13087403981235434363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7527a2d522dd26f8950a8e275e80516f53d40a483dd2e1964b78d0a7b978fa3a
Date: Tue, 05 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754422793
