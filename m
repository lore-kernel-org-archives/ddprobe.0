Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F822C9D
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727075754; cv=none; b=XDrXr8ofVJ/k4N7yAR3jc9GbV+xPqwuK6kldAysw/goKWdtuonzVh8mcgRG9SQMTU9M/YseLHAprzCpZQ1L76TfKKiPCbYFLRXQnKbsDSqGo62LwGB15dyGwCL6NzMyGRJdR3NPMKnQuEsw3kCXKN/zgxJJ9g+e6AHQ/CJqmBs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727075754; c=relaxed/simple;
	bh=9bh5wzcy+sOO1jhDvmbGhOvFkP1pS1pe++U5A8PVqHo=;
	h=To:Subject:From:Message-Id:Date; b=VNVXZdDUPGLaovJimc5RNSz/IeeT7VeFrjSdQ6oATTQ8H0qn0/a29tcE9VdpMbf839OTfLfK/fgP8didsB1e8vaU6CFLeirq1P0OgqeqP11zthnunPmlygAR4/oOowmgQwUFmHlutWljtKFcnsnJ1d6tmWEM14MBDCASkBjCJe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ksmfCMKi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ksmfCMKi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98DEC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727075753;
	bh=9bh5wzcy+sOO1jhDvmbGhOvFkP1pS1pe++U5A8PVqHo=;
	h=To:Subject:From:Date:From;
	b=ksmfCMKifgPT1SQq2MuF1W8X+inwMmwDxMU8F1tA6t0LyZIeiU8IyCfAio5KVlwRJ
	 Ruvrd/XDa1YvfLozAPK/mE+6NFa7Q5d/V3SAOsQ2/FKyA5MPEkVoH2Z1ItrTKKZw3l
	 rmdfu5E0YSBMOurfPDNZE2YCnd2xPm+Prulm89B/0bazrRf1M60w1zPZvNIojZwyNh
	 3gwXPXMgKhijtKinHC6p90VJAmYyY9mVrJbD4beH/72mqhrwm7/WA/m4CNbSmvUhK6
	 4NAzkZjxMn6gmUOnUhcyyUQxtyp3aMva3/Bet+2/2M2+Nh/CrttzgG2CogPGVYZwc5
	 ouHtEeMLwbnRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975C4CF9C5B
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172707575359.20105.14728485066916556504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b09f48746d1ea97c107a6b054568df052255fe5b9587bab8bd07ac92f76fce2a
Date: Mon, 23 Sep 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727075753
