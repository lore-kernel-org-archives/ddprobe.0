Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E7C15B552
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 18:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717008863; cv=none; b=NdniCbFFG5qlUXLhmL8ZKASGA3LklNJFLRF/g6SzoIdSooyBttsnb6/Ac8+M0UO96tWUQQ+h3X2qTef65TuvqjczuRh2tjcYCH1of1UXOcb6poVjjvsFYdWeRSweD2qGPMIEjV4lQZo1ebL7euucj69FbgpjpUsiyBw5QFqgzxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717008863; c=relaxed/simple;
	bh=mWWeWNEJcCHU+QycW+UpU+n/YFv9oS/yUZ7/UklKZpU=;
	h=To:Subject:From:Message-Id:Date; b=N9wmxqKQSNAxgbUncqzUc8m2WWM5UycY2jf8N54el9VTAxfvp1GF43bVEl/sd4wrCh6dCkj5LQfUmYBpTrgyd0LsGxW2ciEigbozgZb83xXqmbVkTdcUkMK2JHvC0hEdZ6NOQ7nQMHKAfHgpYwL39HeLtD9W0hqH0kM6o4oywu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPtRIEQY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPtRIEQY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7BFAC113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 18:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717008862;
	bh=mWWeWNEJcCHU+QycW+UpU+n/YFv9oS/yUZ7/UklKZpU=;
	h=To:Subject:From:Date:From;
	b=VPtRIEQYuhIaNuZOSdsblfOf8R56/KDnTwgJOm2TTsAA2FiQpGhVjgFwMeQYoXXZ1
	 55ZYWJUeSxOiht5x7C4s9c4fND2++b2vSA3ZqGtKXMUF7K9TNvx4xlvHAdDbufXvKz
	 V8nuVHxBEgJ83g+CtQgtPPm/wxRx9hsgCnBsD3zfB4f57WqrhOG4i0ZjaxtdUHP9y/
	 a+2sXxYMvMioKu33nnc1qgeZBbplwxPh/l4SdWZ9ZqA2pUbMDFgvWnD+7ZyOg/h2Vu
	 CBX7+0vnT5A9elv66+XuYVaLexBiGROu/JhDtGifeVeY2cq1wkFgmehSftbH+0dmTY
	 USwSQinzCi+UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE992C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 18:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171700886283.4919.136935332954368416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 466ff73512b261749b4b12f87a6df24ee7926250734f40d75dc72ad605a8c645
Date: Wed, 29 May 2024 18:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717008862
