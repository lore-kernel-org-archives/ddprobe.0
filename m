Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A8F19F43A
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743284995; cv=none; b=RhSnWRLcwxtVOh32Gtl1SKgF4U1u71l9jxmRWQVRIKa5GUQSaLelGZ0LPu3zsHa233lkVKb/24E/gV+y0lGnRRKsqwe98ZDqE/zkdbrmqqbMnRVC5wh/PCFZ0BVGnU0zFFqO9rvWxI3ILldo9JGMgKR2o+stKRDkoaAlW9mT3ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743284995; c=relaxed/simple;
	bh=N0vsRzcS5c8vhh3CYwv4SFmynfOqRgt0r5K2Qbu5dlY=;
	h=To:Subject:From:Message-Id:Date; b=doganFHFm7bkAWJgIl1uDwcYAf3FQ4q+3eRvvKWBVN+JqbxNi2wmcKqtDvbsahRETWVcRHx0nwrxmrIGD5DkA8J4CLoj6EvoyN5HQU/iGur5yVzrAHzaJjIwEIT1A0NOo1io0fBdHh6JqlaXWsCV6PEtLgnyD6KzeLOH8xuXO4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJj4koxJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJj4koxJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDBC4C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743284993;
	bh=N0vsRzcS5c8vhh3CYwv4SFmynfOqRgt0r5K2Qbu5dlY=;
	h=To:Subject:From:Date:From;
	b=MJj4koxJXY/lT8zGZ2Rwq5GVX7FML0KyxWlwpHGd811+wXk+heMihCvej/Vt4PwnK
	 qPElUnuTSvzq4sBurjm6eNoLp/YXFSaRnqUNY3QqySM5/dRNfaNRq1Ud5vKrLCB7LF
	 2KbEDPABhJxSH9VYs0v8KICkid7/zEGsWDy1tt6VwbfFUjYBkj43KqNL0D4PHxWqA5
	 cmouK0y/cD6RKwWjkOuK+Bc/aOIiaL+wC1/ZjP5WUbHXrKyJVVWJ964uRjuF1FbifU
	 eUA4l5cvQcIYui0yKXqIiXjzIJr3iKKi8Ud+3AO4//TtMJLURMiuADu0B+5+pDLUCL
	 KkEmZXIjHWPFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A64E2C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174328499365.6101.8485948133211051226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87d9303d44d2ab72e3ff44cd25a407e5727bc1619e0b482fd7b3416131c989c8
Date: Sat, 29 Mar 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743284993
