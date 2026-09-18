Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9742251DE0C
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 19:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789758035; cv=none; b=Oi6vqXzdAX3+O13y0RhiVxcj23Z88nZZiXhcQWhBNjVoWnPwqhDHTFsvB9Q6o100phuNTf4N05Kh9e2lX+UIn3RqieItikaO6EiRxrLyjd/1RLugn1dwJ9IQVUFdhJaeZBUiw8527BmN/bTeeaWQ/sX52xxq5LZeILzqGx4ZKZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789758035; c=relaxed/simple;
	bh=Z+wvlch/mV6maGetL/GudM+lyRYHVal9r+fluJCzdMI=;
	h=To:Subject:From:Message-Id:Date; b=tQk1CbnOHqnhhWQNmUDIYArF8ie83JC3cQByG1G3/lw/gTtfCUw/Yo1Y23InaRwZereodKP0l4kAmz1V7G8yMUmSwYg54e7yXQj980TUTG5Kcpt/7ElDh/1lXgpcbq2UsdfRmw+7AA0VwIe9YRoKNmQWDSo4HOi49uhSm8Cql3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjM9/NPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjM9/NPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA013C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789758034;
	bh=Z+wvlch/mV6maGetL/GudM+lyRYHVal9r+fluJCzdMI=;
	h=To:Subject:From:Date:From;
	b=VjM9/NPW+4jMcjzzBSvDmtoq0hos4OgvFPD+zmEIpetCv7w9d0yMQzEB1D78HijQy
	 UhQeUn7FiA/Zj0F4a7npWvY3yK3QNcbdX387ObE4a1O1EFWaQGS+9x1HPsFcZC5hqR
	 G0StrVOzLAi0SCjxuuBZMJFd/44UbDHheX8gdtpBac9CkPdHCQMM0ur++mlyHaX4U0
	 my0cvjVSKcIojB9YkOA9ykKgg2utiJz18WlEuHNCSO89/P2Ouo7WtTGD8++nDyCeMr
	 rEwRjTKBF3RmZwrsjje7apebIfDUMPcpnk638DE5jvtd/nzgxvzAGNVFLxIwSG4VLB
	 ihuJPsku5jDKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B572BC982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178975803371.6268.12405554228122097934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87464be0790b19f9f6f38bedfcd2c00f2d7fbac658ea842b6f33e1885df9d4df
Date: Fri, 18 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789758033
