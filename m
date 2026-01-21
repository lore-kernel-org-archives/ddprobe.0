Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114DF225788
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769028834; cv=none; b=nGU4v5YOQpUIAZbswKK6IogBpaxULXNKreoeUczZlzySlJxhs/UZ7BvyIFxcf/k5EwscL1EsbLduP4IrVHganjD8mi3f40TbpUka03ITjUd+P2MTWQadDWBxvalSup0JnsLOiyUGgkhzUpLoAHAhhGk5nr69jxPa9ny+Nd7VMnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769028834; c=relaxed/simple;
	bh=QmdAzlYkUlRt5HzYWXX5YCDCSavaqTmG9EAJGpWr32U=;
	h=To:Subject:From:Message-Id:Date; b=fetmo3G5c2QGLimFZOw2onnMET1ty9nGClm1aKPTxtT5TZUYV8C4vkBPJJe6hGrqUS/OZr8RfXivYmAA7UIMGqw/U4XmlaDE72STDgjHtavf5hcMQVQXOEjwLBZHoaD/u5wIBVEAsaGnVSVCtS/GSMeoRzn4ye2hLXeJD4K5Khg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5tbv1FR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5tbv1FR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D8DC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769028833;
	bh=QmdAzlYkUlRt5HzYWXX5YCDCSavaqTmG9EAJGpWr32U=;
	h=To:Subject:From:Date:From;
	b=K5tbv1FRQZO5i9bUUQ+yEkelmey/c+5a3+8SEaj5zfqgzBj6B9/8wcU55Pb5ig5Pz
	 3lwWD8jLiuYCW6HeOsuxizNSs8Zaa85L4SkIE3r+UIcqzH4g2j3e7HWIVEWq9yjatg
	 AfuUoIiMD3mtJNJAB/38+NcIWz8n33cZxrqmSy6xv3uff3E46WUxO2htP/X9M024yY
	 ITFPInmKOcTSTleC66x34IvbM2eUE2DHRSrisX5vqZ38axlCojADfg+VQ1wb63y0UZ
	 w3IoV1d9ffgQvPQfZfTKuTktx09SIZazLj17jo4naXMWsBR6G+equw5kEWItwtBf6m
	 gbiNVvxXA6qKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93296C44508
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176902883359.5121.4581914767768829085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec89c911ca5aba5c0ca23b71f06def913cb52680d97a3ffa9e974b1b906db8b3
Date: Wed, 21 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769028833
