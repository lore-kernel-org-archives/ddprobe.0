Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA2CA15099C
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721742954; cv=none; b=NIePCqvHVay+qfYxvtW0IoGTyLX7YpiVpB8In1aDs/QnIWccTQuQqfZAyBE4eFI0fbi7wpWYig0sgfiuIIfJxbXnhEgV3/nDXxZQLGuyHDJm3MFu6EH2F9ukwJfSYZ7VQiv/uR4LxbjJonNJw/ArdOncBmODQ3ggbMNlGH5fbM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721742954; c=relaxed/simple;
	bh=6S2/R2/C3OUeFOB62FTXzr2Jj3brvZPqe8r1QAUocXc=;
	h=To:Subject:From:Message-Id:Date; b=lmaT3otqEBy0F3hSszy9u+GNd0levOK8bmTeuunIwZTVWG1Srgbb0AxRxYPexKB/w8LeIDnoI75pXdDkGMLuUT8YSpBGEjMpuiS7pAXxjoewqWu7G6SP0qf39YhookioDUtWFfUgXAeLNgR8pAnTW879mAWZxDWN+C2OA6wpcM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAxR94Kd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAxR94Kd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B038CC4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721742953;
	bh=6S2/R2/C3OUeFOB62FTXzr2Jj3brvZPqe8r1QAUocXc=;
	h=To:Subject:From:Date:From;
	b=bAxR94KddpYPsf/YWzqJfPdrDv5uJIydTWtDVrIkNyZB30HmQ0G+plq4uwLahaMEf
	 zJLRIcQKNkNVPBqB5FgDoArC8woXpkRaqoB6rvMXmCY5bMMbFuK3PHQKRF7G7oVLiN
	 1v2sS1eQDTms7SJ3S0N4ZoiYYOmDbMh739BGgo3FIw7y3sbDDfQkk5/oQCmxO0fYwD
	 F1LrhRZAgW7WBN+qojyTb3wdkJCkxsEGcAwG7939DhrEINBzgydIG63tvQtflYOHji
	 HgFUxV6R9UY0MVXYbGqBBmmdA7lPwFRkmHwpoMG52r1uKA5IJkZ6avWysiKGUPaPnn
	 1yvFS0b8FoHEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBCCC3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172174295361.2390.4651589208850063677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5396554ef6ab4d4e672e4082d4b0c740abd349fe792c796aba8dc49b7d4dbf6a
Date: Tue, 23 Jul 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721742953
