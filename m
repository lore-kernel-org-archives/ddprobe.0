Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4123C1FDE22
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747568994; cv=none; b=O1d3b6Oh955x3SOkpYH1/EKXJw8ztGEtMPncO3famm6p1X6QaBS/siijjdzNEfG/ox3eTtEzRb5xftUnzwqYzgx7ckNUgaDfvClXPfJe3zXqAi51fRM7ukY5vd9wjKPltUUyfXLQouXw5wbNIz75TltQFQZUfrIWIxLrX3CcS/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747568994; c=relaxed/simple;
	bh=C+9gTWPbg7aUCgckj8AmR8KgUdRqNygpeK63b1bIqlE=;
	h=To:Subject:From:Message-Id:Date; b=fOYCJ9P+LiMofmylvozPtjbNV3Pu9/sRmVDPZXMB3g7JIOIfLDs/GNxWYBy6PsgoLOmqNBIIeGRfYqx4Z4GG7PnHgcuwDB0+trGcnGf7X82kbT0WcmiiCeuaFjo4AAhfllpE3WOarf19IDzasPIwkXznT1LH3ckggbfDknMJD4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4Beu7c7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4Beu7c7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0A6C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747568993;
	bh=C+9gTWPbg7aUCgckj8AmR8KgUdRqNygpeK63b1bIqlE=;
	h=To:Subject:From:Date:From;
	b=V4Beu7c7hAtOEwa9p+JG+UdRhhV6NbqoNtZTquEKgagPPEbaK7fc/YQnFkUaOpvrQ
	 tTbIijMao9HGCrBYbVM+cAu2zlHLPixGk8JoaN5HUsCrPvezn/UhZLUOPf/BzfL8iR
	 WC/9TXrVfvIagW5y1Kt+MJaZEyEZP+J/hzXB8bF05ooN5gmQfyv7PonBHj9MxNjPHo
	 pJhshq2jvt2YF/0gS5Q/333yCYl4Tpa3fEHYV6DIDZgM674Bif7FHvgbt1/X9UrLh9
	 Qre+AQW/JeALau4m8cPCPPrQYFoA1vrdeSsmbUf5zWpczx3qOB3/InOreYR1RAn3bB
	 mtgqI+RMvZL5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96351C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174756899358.2375.557945729398241621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8172903d8bd824b8b011c2fb4ff45bd7cb0946d29a18e71ca0b49bfb68b1ae3
Date: Sun, 18 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747568993
