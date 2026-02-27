Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6784611C9
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772226294; cv=none; b=Kb/jZNaM3eeiBtzNBnUtYMGk0vm9UAnMQHgLkcdqdy78Bam4ofs6TrI+aj5ShY3mvSQgvEjG0xgAWRj7mMYFwDIixn2qCiiTc926pOzo5lGd5TkAx1PK9h8gHKMiJjRyil8Qhw2kWe6eqL7Pixv9mSDTsN+bbil3sSxeZBW8f/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772226294; c=relaxed/simple;
	bh=ICxg1BGm+k8t3rd4UEGaDKZQpODdMwiC0QuTSZY4rRQ=;
	h=To:Subject:From:Message-Id:Date; b=D6ULuO5jCSDxXIG6XqPCRPLB8PX8pLv7uU/oESRla4RvAOhKcNhSX7reP0O6aeT1sLWVYFv9g94MfxBCI7PTI3eA/6XohwnAfKRQylCPeoVN7kAlVgS3wwV41qZrvELGj0vNpwS/oLio1Xn9jM/LAL9KgmMv8QHWb0SI8RM2OBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EsKZ7dxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EsKZ7dxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECA5C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772226293;
	bh=ICxg1BGm+k8t3rd4UEGaDKZQpODdMwiC0QuTSZY4rRQ=;
	h=To:Subject:From:Date:From;
	b=EsKZ7dxWiFOdJ10wYpxG4DFqhc0ciVISflo4fXmy4XIlDusXKqr7O68Vek4SGLpxi
	 ypCn+gVfPdEd9hjJClTWyu26buHhiaEoAonLixANMi+9SC22yaL/8C4PsamKof0J2f
	 VLsFN8upN6o3GTS8POlJ7mf1OLK9BJ3QZHI7Lfy5YKnK0SKSXh7vj/Q1e/2O48vEuA
	 BWLNQpshDn9ex78ASyUxrHzgcZy0lp9l5y3G13Ka0fm4RIjCOVwxh5HgI9F7u6D2PW
	 3bIdqPLyC8bv8pdh0IIlSQdZYp0Pp2kX3CXyyIgxAHg2vTnLdc7wPU0r/Sj+nt7NI4
	 AuveTJvanc77g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1F9103FF85
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177222629359.19949.8051287730234283404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c49e51710395b9d3647fe4cbcede061ff9791e33b126cb0cbce9228c8cb7f265
Date: Fri, 27 Feb 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772226293
