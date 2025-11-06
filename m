Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08FB032E6B0
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762440594; cv=none; b=dUkU+LHW5DLekYWBR1EOQYUUqhXxkv9ArHuJZGsI4vG3eL0frasEongPAZINfypeoE3yr3rkoyRXql0dZHM+qYL0PMnVbk4ugs6/JRIGjyKFTPBaRA1p1Ohb37Z046b6NjhRvZHgG5Qvp69+8125p4nHcjEUvwZeA4BSo9g3hpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762440594; c=relaxed/simple;
	bh=bEDSG/buJmDQGXMp7aMMZzc1j2yZEeHKVpqxkZP8OiY=;
	h=To:Subject:From:Message-Id:Date; b=bIaq6Hed8ZUNpnw+f+cwJVo8Fz5+99qlqzGrvLt+Au/ffVH6SSByz6pKr1FA715XCtyYs9NHSx8H/Wu8BWukbCJH+1aqzWHUyeooDYj6UWC+/qZcAaq2b5KgbWRIRSP1z2q/SbrC4Yo0gs4wK0X46oTEMBs4jVzkfgCBQNhcc5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rbd2P9p9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rbd2P9p9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18D0C16AAE
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762440593;
	bh=bEDSG/buJmDQGXMp7aMMZzc1j2yZEeHKVpqxkZP8OiY=;
	h=To:Subject:From:Date:From;
	b=Rbd2P9p9fawEpGBLyQAkR/zw6Ty4CDJDtCByiu2GzTtXFh97tRMatMdxlEFZQpO01
	 aEiVi9O+/xBdcFDMv34EPw3J8V3JL8eV/3dxVZE3XqAS+BUxazYR8jZXCOKx3/93vO
	 WtQ1CU6+irhRJZmVVTk0CvMUXv44iFMVOL6/awMi3IEv+Ww3kcebBPsnaBS6Sn7Rqp
	 +uUHOOHbtX1yeCIKfM8lUcNl3qJ539KLaRwRywbxth2rl7kspg8glbaqZcRXhCo9SR
	 gNU/WNVAktF+FQBa1itiCUujpm5OJgrn96D0ZUe5eEElQ1Rj6tDFt1N7hsrGOx0H0n
	 3UY3VDjcZkItQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F57CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176244059359.21966.13102108365087571071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb8f4cebdbe94abb5178732f115aebafab48d95fb941c2ba29babad8b9eee01a
Date: Thu, 06 Nov 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762440593
