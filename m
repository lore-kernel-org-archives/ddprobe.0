Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407B84431
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743304194; cv=none; b=R9THKCQ75wR8ujqySDUFKAW35m7Ilp2uB5a5MCGAMB8BbU85OjnS+1ZQ32se2hl2AVBwehRkRryR5BCY40mJ7n3jeUQY7vSCLQB5p9nNLUOht9CFkk+7yl1fet25bSDD9eDONyt0GsU6qevG4KH0lsGo4P8JWBooLbo7mb9I40c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743304194; c=relaxed/simple;
	bh=d2xnOGHJMkBR2GDbkRnnp6vWuR3O2ju6P0EIjk+cxVQ=;
	h=To:Subject:From:Message-Id:Date; b=A+bDnDl473LLnAmcxHMf6rHEMZ3+NcK2qzcyCeTI8qGYWN/unyCkjPNcL8vfXmFyuMiBt4L9NdR6jXLllS7KTf9NPenR/8LOhTanmb+r0tvLfKD5x0DivE2/z74JVOEPdeDPkUOaRlXrKlaJ/H0el2YvI7M1Iyv+VxhSbdHwCJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5tzKs8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5tzKs8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE589C4CEE9
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743304193;
	bh=d2xnOGHJMkBR2GDbkRnnp6vWuR3O2ju6P0EIjk+cxVQ=;
	h=To:Subject:From:Date:From;
	b=B5tzKs8ArI04S4VvCPmQaddfrrmMo+xPjutPda3egK14m54hV0eQ/XVCgzh1MRtbm
	 m/o9wu58zxvhJGtaK0KxjpSBopGzTIdM2Q2+12zMXhKRveY6CYuNR56Af015sfdti5
	 URQPL17qyL6ZrKVWpGtcwEHQn9Fe5lZPevr9w+q6yo2OAcnQKK1LYJByRaUZyg3NS6
	 Daey5A16J+r9tni3+tWo29VOwKXJP+NgNHsCRDrVmZGm+bSgBTfmtx5wxHoh1bhFeM
	 onCpYF7PNeEFytLA6yj7srbWzRsYEZEslHfp6L5ZPqByrdVOnj3ogZVvW+TAHBn8Aw
	 G07NEgzFbMxBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A821C36008
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174330419357.24759.1761366958327959099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59c5b865f0219cd912561c18f901ccf6e7aae047244e2c51e346a9be46c30b45
Date: Sun, 30 Mar 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743304193
