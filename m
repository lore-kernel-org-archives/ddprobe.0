Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CBD2DF6E9
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758710394; cv=none; b=jK3KDZq3xUOYOcwpc2clzesSxT3NMqzdkJjje31WVeRcVF20FTvbIgFH+cTVDZ2SwOBahN2YjficbhVZ4QM+FBz9eCvDrmBNvFSU4QvwWVtfqaemgAZWox3qqCFiQ6dIXVWY5lQM0alpcjo0AJjHyunMpan8DcOaxc8eSpCy/IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758710394; c=relaxed/simple;
	bh=kQd2/KzABFtp60y5TuKiUWkpknlblgrGoRsli2B/NUA=;
	h=To:Subject:From:Message-Id:Date; b=UAo70ZHNB4N2vkrXGafU5poKLzNAIT0ddcQObCz7WmtPn17v5gNSZYNGNsZWM8yAGXyxeX7KC5oZ2ZO04BrTHn2CD6Rfwq8HIBBtFbDWrWIgvMOa9kvkZbKRRTrJBa0WrNlM4YodI4ArfQvvk3pNuYeEK8MK3mVXwVi8KYNEBkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UtAMHv/X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UtAMHv/X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3524C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758710393;
	bh=kQd2/KzABFtp60y5TuKiUWkpknlblgrGoRsli2B/NUA=;
	h=To:Subject:From:Date:From;
	b=UtAMHv/XVtKHMMq5hPsyT0CRNRWm9C5l3tEukK+w4yfGrY7LYo/Sy/0/0A+oGLsqi
	 LrWUzZF7F0NG+q1hedF0joV798yHaKz2nBobrkV6oJ+ZRt+VMdaM56hW6rEArkFiJZ
	 PdUMyswY5kuZb9oa6vbKw0dYl0CHdYZU9GW8+OlRPaVcpJoVxaEP503oA3aEK9vcyz
	 j/3+VmqOUQL2wbcRaJcKEm6geQ8xs55iHJ98vvyoZ2yvo0A2eLksVdrvkYIc4RBcoH
	 sVckRcdzTj9zGRpRbJHyih0zCrvEPJJaJ2ayNwX9oLkAc9f/RBnJMM8klRJ4T0wcad
	 NqaSGAdLNbtVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F48CAC5B0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175871039358.1102.9250637060000507055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f50f433f0761d29516d63ca8aa406aaa59c31e9ccd751ed5461b41fef87bc0d8
Date: Wed, 24 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758710393
