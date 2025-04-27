Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6CA2AF0E
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745723394; cv=none; b=I8q0PwSXmpDkZvcsk41ly2+rIdFm7JlDjalj2o/UTj9d2+7tIVULbBPcLV62/AVk7/2/2rtIof3tvC6wdzFd67lJksr7TQq+Hr5GKYg8+xwzMe5lSsAWw2fwKarmu56U/LUepaEwlHXomJOKGZ8OKzvLL/AygnhWliIKtnFSeoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745723394; c=relaxed/simple;
	bh=gi8wBFriDdMK+xcmp7ylO+wqiI+yBbDmL0V441cueAs=;
	h=To:Subject:From:Message-Id:Date; b=Fsd72ij88W3UVNwztDyOGekl5VCk3GmuWzc/lbGPcn4U4QIOMsrSrPqDbJadRa2qbukQK6YwNU7Mhn7JHmX3Po1JGlQeUbgITYO7uznIEbKJkeueyknpQlm9Ena21WUWoMNu5yOEy+9oi2vM+RU0lp38JRz5FThPTN5PCB+d5oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGEo8TJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGEo8TJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FCCC4CEEE
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745723393;
	bh=gi8wBFriDdMK+xcmp7ylO+wqiI+yBbDmL0V441cueAs=;
	h=To:Subject:From:Date:From;
	b=sGEo8TJakjgQy/KsftuXa4UXKFsL0DVt/KePDRG69RUYYziv17YxliLvb0kcmDuru
	 XB/VL+XSoeO4mRdCUw35n9/9Om1Tem82Dm9DHdEVvNk0glbJFT0X4/bYLBd3qvpY1u
	 knDMutQwBuvR4SfuwE2RHIfvnMau1hiZRTNWGlZGv3TlZBlNmR9VO0aZro9Zwgi+Km
	 T4PkBAHtJg8mFBmnzMZzSyD/GNXnum3oqI1o/JOhvDa6aj8JLUZBeG37iQa49R5WsF
	 csQ6aY2FOUtgmvCgLbgveJb79Ym6L3wH8nRqO9oJNgnrbSTdJD6qwV/9zV/kqpOnpo
	 kj51HhBVmrwjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E68C369CB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174572339357.8865.2098262897269031758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10269c3dde5d4bfea92a03e7969998cb2f63489e1e6fef49364c166ec0a8e2b4
Date: Sun, 27 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745723393
