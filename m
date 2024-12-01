Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9E3AD5A
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733048154; cv=none; b=HgfA6hSzFlZF/iICK405H9mq6fFk+Mco8PZun7DAE3CzgjEhrZt3dGGPiHQj1rpoKvDwK7tndN9dQeFDTp4URuLjWWJ1EpuoRQXGlsPeQaLWvgEdTCLqKdYT76avTHZ1uM1PZHgnf0vpA1W/VEiRINCHqR1BhyfkgvD7Agz6dHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733048154; c=relaxed/simple;
	bh=ajGxUSRFwouciVFSH1bL7BROPjGthZbl47B+SdmPDiM=;
	h=To:Subject:From:Message-Id:Date; b=HZHcyvbOSRrgGBvoN9y3U0+B+dTjas3jqAz/2TAJzDmFKEt0Hs4tvSx0i6XJQVlCcsk+7FjFkzIXiQBlHIlwAiVlhPFIRDPwkOMEQSSnNaRi6tlJrkTjKw2zmxIXTITl4aGIDM/xsTUJPkqonOv+m3pqTKL8U2QmBnT1YRDF/Ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+GOD+Jg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+GOD+Jg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB073C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733048153;
	bh=ajGxUSRFwouciVFSH1bL7BROPjGthZbl47B+SdmPDiM=;
	h=To:Subject:From:Date:From;
	b=q+GOD+JghbDGEKPoOw8Zi2RU0b9XmbRBgY4urDfzjzEaEy/hcIuktlwMejrEeCyOl
	 wi2O7aRKNqYx5gQOZMZEo9CXi4xdrRglx+6SUPMyUQnB9knOd9Njzb1WdnAn53yEiu
	 sGBvzAoirfvm9cYFbLU/IME53ARnstv6upzbgy6qxqMQp5mIpK412GGDqc+FGkzTCH
	 0EkmNCdf7WilSmVyNOeaxAcyh1nHRD55sp9tItGcOY5hzAP2Pevy8wC8CV79hig7A4
	 44rpWGw0rwiCnPXwSRPNGtvRqeg8rXPCNsFkLh+HdvDQVY/nmxtRxXuUHBkazLjIau
	 Q78zcZAZvD8fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A78E1D49761
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173304815365.25066.3238587678116272580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14b1915e27fd91278d8e7acec69f9bdb2eceabc2f4d4626526241e78555adf91
Date: Sun, 01 Dec 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733048153
