Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4641E23F296
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744748395; cv=none; b=E8RIS4y02Va3zya5n+nxlE5W/Dee1UTQZLIj2ryDjUnanw3v08PkA1ENPSoglqipSzzZ5YurtAR3VTOm8vdftnzi9q2JmgJaSEVJQAe7M9OAFV/FdeYBg22OhLLs2D28DSxKe9MaRZ8zPnot8xsxWLJRDtB7dIhNBMUFYpJhHtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744748395; c=relaxed/simple;
	bh=WkhmosFbbp4RJ88tt/4W7EWbxdVwdth7RiXCwD+5Fno=;
	h=To:Subject:From:Message-Id:Date; b=CbEDfZSAHDovjfQVepiuHXiG14bLL1MJZCMeYhfjjl4Za48rzQQitsl0v9TcZaj4C4I94mvLgtRflOq3R2fGWj2qeVE8yQk88dgEV9Dg6qIIbsf4OsEzQcBaSG5UuPuMm5Z8xJBYtWRpNPA5J0Rsbwf5hOugHjVjE80VPVYr3Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMbD/KZz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMbD/KZz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC494C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744748393;
	bh=WkhmosFbbp4RJ88tt/4W7EWbxdVwdth7RiXCwD+5Fno=;
	h=To:Subject:From:Date:From;
	b=qMbD/KZztOrkbgTUoLHx6n+ctVWBGleyXgMDUMaMofJur00qKCVs4eG8fczelluJd
	 weug4NLTnaAvZXvUtiaGEUP3YT+cOiEC8+OzMBLKHAGu7lfGAT8EEd+74HqMmnEPAx
	 EnnPUnDglSx+bQhP6/7Q8fB5JzgvFE1x39jMwJ4KhQEA4a1tQCUTJEdho05pr5Uw+s
	 W5nrg/jtigevU1epcaXDVDnY4Zu50romhmRoE7L0jHEhDe8ar1qnJ9BAFg0df5ki4P
	 3eM/gqLsfuqW9z1o+oaSDB0lCrGakIs79fxb7ef6/LshZHenhRosdLyeecvjgk6HN3
	 0jZ7U+CALakBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B27C369BD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174474839361.14261.4361850853399513038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 759811856bfa83f95d777a314d4dd87128db9c78ba288a59c9e77c2eff488a52
Date: Tue, 15 Apr 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744748393
