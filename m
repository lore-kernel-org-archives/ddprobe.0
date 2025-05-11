Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388FC9461
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746940194; cv=none; b=f3DPICjj42e6W1HmoBm9JYZSHuG0++n/rlY48BfwXJkCyHA0Gw/sNzrkZmubjI+qWnh38osdH+b8hSea0mTQfF4CwC1bcEpMpWxld9n9HYMjMKp1gDY6CMY6+aErHbsaY7qwzITo0utYD3iceroTygBBPZkTiZg/51+x/E01d1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746940194; c=relaxed/simple;
	bh=70MTpUXBHL0kdpEt71M3AyunGOJ2FnFdQ27xwL+0Uuo=;
	h=To:Subject:From:Message-Id:Date; b=KmI7XFL+KjmKryKze9vhyeXKqYeaFpfU7UFdys2rpbe7ua3+TK+899l1ub2hfTaSVp/3vPRusEGYb8rmS846eyI8lav2fCuofjPwkRcrpHJ0PnaGypYSYYO7zlMWQzu2KTKHYz/sjEpnWh5f8jyRz/IRXFg89wCJdeYAZQ4VFv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxCLLARD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxCLLARD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D82C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746940193;
	bh=70MTpUXBHL0kdpEt71M3AyunGOJ2FnFdQ27xwL+0Uuo=;
	h=To:Subject:From:Date:From;
	b=NxCLLARDsP2KBrjxA9PNNhGm/hIRarmNFa/Y3wgpOj67M8K4mB0FueLowOLgi881u
	 O2cQH3m9vPze/iEn+HtuLAoeJoT/PkofiHmK2X+4rgajrHfRT7nEfXC1+tzjgKY606
	 t/BMQe/6FBUi4MHsNA75tCH9DGy4DNFnwXRUvcpKcj9caZzmhDSMUQsRdg0d6mxMe5
	 eVr1cTfgI9XxBQiFgsnjlyBd/omDVQVAa1CMSUANu36oHTtyvdecuiZYsRp+ZcxVXz
	 UgY2Gvf9OLuwHMpwN+phRv9ZnEiud9hkjvcURPDVUBUKF8wm6WzPWMzXa83pyTa5fM
	 ZjT96YxKmOGQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F304C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174694019357.32490.12759242802375433577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fc3377f2c9ad9a1aff07e5c03033a22913ff7bb89c8f6f2d49c3ce45b88f9cc
Date: Sun, 11 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746940193
