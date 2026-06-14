Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83719395AC0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 07:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781423194; cv=none; b=Dqgy1n2USwnVaXq9I0JYd3u/nFGN1DYd3imOO6QJQwXhuQWpNFAsD0F5oJeHvvre5hG5XyXHWnxtA6gh8MzSl20UTCDWwMT0VUWGWSaxdZKRsAjBcM/NgRDpWPoeMJQVgD9AMkCFHI47HqoaE8XKHNxLsQB02dW4WqbcDZJk9RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781423194; c=relaxed/simple;
	bh=jGCC0lR9mnBLGMoh9R/+f9xolfaOh0JOZ8q5XmDuSuI=;
	h=To:Subject:From:Message-Id:Date; b=q8NsZz+pfXCNEsY6io+429Uy4cyuxo5p0aBso7/Gqz2egteF9DYsvcJB8KS751RDGvQ0+yJkG8H/W0vZcW/TqA3V6GU95aIga2yMZRNqXJ775Hxb0mi37Nszi0PbF7uVQhdkay9KdHjpszmh1ittrqFeg3rMInN3xQfdCgN5YCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upsIAyCU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upsIAyCU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC657C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 07:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781423193;
	bh=jGCC0lR9mnBLGMoh9R/+f9xolfaOh0JOZ8q5XmDuSuI=;
	h=To:Subject:From:Date:From;
	b=upsIAyCUzOwjNb9Ixu9JG0Z6ZgnoDKxWRNk57WypV7C1mALzGBL+YG3mv9rlBcKiy
	 gi8QWE/YpW3mCS8oONND1Qv4K5e0Ilgk3VfymwV7I7Dmt1dVOBFzXe25IBfTvMDirZ
	 I2pNnEJphl7tOo/Bvcfxd5HQ3wfkjo3RTgwLEcoHFuFiB1OtNFxFtuEDNmik9bUjVH
	 ABDd+EbXHuWt/M7EjJqYvhq7rvgajsrlbnj1HQKuEmygT/Ked1sZ3MhI5JQdtUDlp2
	 MG1WoXuosx4nY+Z36Uc2fa+Oxs2rhW4QzWwPM1sSoYlCRxfB3fCmgfArwCY75OVpVO
	 pbmibfIERA9gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E03CD98D6
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 07:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178142319372.9471.5074999667526799938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9150c8bbd2d0051dd5d0829843268d8b3dafe8c121edd8a1f0b64a3dc96d7ff4
Date: Sun, 14 Jun 2026 07:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781423193
