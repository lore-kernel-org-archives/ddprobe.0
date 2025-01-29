Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D46F41B4235
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738166153; cv=none; b=TunGv9x4KMRlawdLg/jqfB+1DnSXkNLdSgASaU9+fgslSdPuH4x/s+OqLoYuQ3O7xUr2V0Aa8HMk7cHxikUshUiHASjsukeTHOvK824nQX8FbRjctF6Vzcgi3sLZnFeOk0OTM0PYiq+Pcfv5jwx8dDkJVgIcH0Nx3daVbgmSR64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738166153; c=relaxed/simple;
	bh=jR/2V08kf96I9i5tyhtRKE9vq3EWn6au+44GaXlNplw=;
	h=To:Subject:From:Message-Id:Date; b=twwsV+BIEtvTPRZocVjP3ZCDKG7A362v/R88YF93E44eZZ3MYnMjBu2+mO49NoQsrGRQpgJf78ushmWT4r+K85B+poLSlbxHQ76lKj/8KPOUlfkEIF9Qow8ewNIn+40efbWkvCAPy3Nj2KeILypXqVnsM2vXXi3qRlb+QlZjwkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nbG9ZUsz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbG9ZUsz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB280C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738166153;
	bh=jR/2V08kf96I9i5tyhtRKE9vq3EWn6au+44GaXlNplw=;
	h=To:Subject:From:Date:From;
	b=nbG9ZUszXHVz3GYR04TV/PD/zOoXoNmyAKrEl3r4+q4E3vf19EHY9eXexvzlcL0/a
	 vGQvwIiIiN8CIIF9z6SyffnoLFJEpB91KoQVhsPk4L9t6wM+EdVVRRPUo6axz9/6QJ
	 lsHYhGZ0h2C+jd2laK701Ew3CQxeSDfGGdVk6dqqoFHiS8g9jXL6Nnshhl4oA1xVDB
	 WKb6gwdxvhY3Fvz75so6oYPZLOiETgdaTASKw7+TCmvX2o4HBecaB+gFz04pDe4gdL
	 X3ugAAAR5Kos5xzdvR3hBcd4FxbjL2TyKaCgQ5+taBYOo/AxfBBJjChq5PcEOM3D+1
	 tpXzJLeXu1GDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921F2C02190
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173816615358.29210.12932087727343198703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 704542121c0ea6c8cef65e8aabf1393f790c7e41ad94efc73ac8e2066270afc0
Date: Wed, 29 Jan 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738166153
