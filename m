Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A80F148850
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769919834; cv=none; b=WAWopKdPbLL2nhus8PMwM7JS5gelCABGjQDM8S9NOdnHrk4fIZLm6L7ZDO5Ip8tVXgkMBhbQRgy6nVE3iLKGCJttlyzg61m7dke6C3vyYuPT1Q4v5W25jEJlUje86PmDfXQRZ+pgd4Tqvosq6UlugaCThUrb2vQkhbQMNscm+Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769919834; c=relaxed/simple;
	bh=Gkl6ddLlAz3N3aNCbUII5xY0ZW3H3Qysdb1/uYa03NA=;
	h=To:Subject:From:Message-Id:Date; b=nRoZPMZWGbPf38nHNkeBb727jFOLuo7FAVqny3I0qo5wStX0/c/IlwJQlfoA7jNsw0HtN7ZkacJTejGD28BcB+rTflxX0mYs09pGYbyPWZ+1hlFiF1/uh6/tlv4SG6ssMWlSoEsDEir91niwgMRwWe4cDIqMLvLdvyWO9GTCWhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hl6/ZO+e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hl6/ZO+e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2589C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769919833;
	bh=Gkl6ddLlAz3N3aNCbUII5xY0ZW3H3Qysdb1/uYa03NA=;
	h=To:Subject:From:Date:From;
	b=hl6/ZO+eKclm/FnzDu7DlAu7HwzScpG+Ly84Y1wjSHci9k0kU8RF02QPD8d+tktwc
	 sDBq8L2mnvdgyMjxgQuPz3XtdhppmjX5jjTvGyrsrM4EsZtBpugAa1wnSxNUDaoyfH
	 n6TPWRWnbh6LJ886jwZXeHLjkcEuERnRNxWIdtNXnvmUNLqt4IoMm8ZpyuACq8RLaC
	 vjgJROSJUbfGU/1zk2cXMDIQyWwSSwd/SvINckPn6lleZ7NN4keBoaaldOTugTF6ZG
	 pyMtMveMRO5ytlUw2V1gz/NYOdeiL38tYU1cOpfRRjEmESe9XY5S7GjQC9U6QFYf72
	 HWDbVueaDv2fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BDFAE7C70D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176991983362.4943.9817555327067248287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f24fb10b1190128f1fea712001c54c3162487506191c489dd9231aa91bb7e95
Date: Sun, 01 Feb 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769919833
