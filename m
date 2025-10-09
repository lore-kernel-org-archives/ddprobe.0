Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0168D2C327E
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759992594; cv=none; b=BAUxI1kUSSf0xOf6ajwvd1XuuMvL5scAZ82bG/siy9SYQt5WgzD5Z4bKMyhuIyocrsOe5l2R1AwZ1/RBfdbv2UVa5875r9z9Q3QO6+uctPRt3vqs/mU/524YfNVx8oFsBpDJDaidjnrO5XaXfIzUi+arZupnsRsBoetefO9+fgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759992594; c=relaxed/simple;
	bh=ex/rKW5SXNkxCKifKpa/v+4UJ7IX5ZSaaZzWuySTtBo=;
	h=To:Subject:From:Message-Id:Date; b=vEj8PPnFuQAhObRZTLB/om3nkZkI5oIKvGJoVRDWTaCHoA8OiPDoZARihJ/S9vwSeyvQ65zNQiDRVXld66djHpVwxmr78fKcJL9ivLsEAj7JEkgvpQh77D0hmTdeNJFq5gbhKW8qZf/w+ANE/olkP0kI/FrhHs4Fv1QGoP+HO+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IsDWmPnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IsDWmPnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 994F8C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759992593;
	bh=ex/rKW5SXNkxCKifKpa/v+4UJ7IX5ZSaaZzWuySTtBo=;
	h=To:Subject:From:Date:From;
	b=IsDWmPnZgmDT5PmEfj4kue5qJYqJE4E7Czr7RpGIt+sorQLwNqB5vuANdMQsxSiiH
	 0gnUtEyiqVv8eLhjhS43yVsGLG0Ytm1RUIVHHTfqa7uhcZ0z6o+TEaCles8La+uAde
	 9RjS1jeCWuYoOGkFpVdZKMujOOXPlHLwcWAssSpKP/S9GPpHgEMYW/q09kcd3F+Mi0
	 N8AR+0J908mRy0mIEuszvPiWso4L/hL1zespemocOhzqJHdjScanWxuYzuvefdTKMR
	 F++u/0wl/nps+LJEe9YRNDuBaFS5DAvZsFtcIMxWid9gIL3+ccNqZS11CZEX6KDenU
	 20reUI/iy3Lxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F318CCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175999259357.32300.16869786835078518112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c388a306245066ebdebc17028b5281764143a4d2385d4e82be36c5a239de51
Date: Thu, 09 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759992593
