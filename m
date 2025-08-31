Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA10212F98
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756663194; cv=none; b=RofzxM7WRMRD9JyNx2EXgnZDejGvpJEhQiqxwH6d8d3NjSIVhcTVgxDC+1mm5aKtwZxDrKbFxw8ERMv/90ueJob0M4OCCLbDCq74OpPeDlBcG+5+dDupHfzYOsF7FdaL/H3LOUuxMFMmOWoCfTv4WSqyh26uIkrN+JJWF3XZjBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756663194; c=relaxed/simple;
	bh=HN/90K9hzj+raQJwQ8QsFzRd+s3+VfGbU0FQd5jap1M=;
	h=To:Subject:From:Message-Id:Date; b=VGICvigmlr2oOFYcqdG3IBQCA8sKByYiqce/0p4XWLHLBh6NS5Ug+b/Zk/BFoUAvTwDg0z02A6X5UaEfOBf8e4/CrhClUHB8fdXzt9wuSPquGOe8foX2vdydRU1qEXsbKnVnhPqjnp6MoFD+q82czfPDJYISRNPPYdDkU2jVuMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tb4eLbGw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tb4eLbGw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA60C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756663193;
	bh=HN/90K9hzj+raQJwQ8QsFzRd+s3+VfGbU0FQd5jap1M=;
	h=To:Subject:From:Date:From;
	b=Tb4eLbGwfw7KE+Pf8u0ugmbwtk5FNWY/GktyYlK8lc6lHI/qBdS1G6oFfIrK3kNPX
	 zAzG2FtixLAUY0XSSjnGvhksEdn6/P0xifL/nhUFHfKPDawA4R0qEV4wq8zk8VUtPE
	 VnDnzO8Bwtb24NHNFWIb1Jz6Ycqc0GSJ9CGsjgwblFj08S/1WLvL2sJcULr47LEpg5
	 KhkXJmuyhAFFgfjwfkD5MvpaMIfyJFlAxHQfzdjdByawxVu/pZoPSgreDtO1O8g3FQ
	 yO5Z/nsfopww62eimCthrSJsUXtT6ysz631SmwAMvjaSC7LCKl2cEh7DnuJuGuJy8e
	 hi5POkN37aFPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E854CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175666319357.14979.5195401177202315902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0f76b3e1a8bcaffe08533c045e334fdd0f826c205cc49e5b144f0790ffe7dc2
Date: Sun, 31 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756663193
