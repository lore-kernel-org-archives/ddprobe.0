Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1778F364047
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769075634; cv=none; b=n5IlsNVibC5PtJsPI1I0P0Th1P7co8XQX/JOH8xopuY1x6eaC0q9rXAbO8jgyrTyQqehsNmoTrYlg0o8f17ew6IuwHVF5vCF4LcAxarpD8MevOgMBh1gMK730jpjYDibfuPUSIWsGfIvBec2N2tMIvX7veGaOo/4OSS2D72M8tQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769075634; c=relaxed/simple;
	bh=a8w/Pm9rWgTLQyD6EmYKn63F8e68lRHZAfBFh/ChqYQ=;
	h=To:Subject:From:Message-Id:Date; b=r/GO2hAD1ER3+Y7uQ5QoB/ByvEHZ54nKeJfg8s0E8TuK60AIVf2dL2GwVQ2644bVF4UQq0kPcPb8R3NYvJ4xqtzqcUVH4wdZ0spjIjZwfE9g+n7AhXDYDUb/BebNm/tnDciuRznOa2PEjXzb2H/t/D2S3dkkfPHwbP/XmZIQJaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVcsDNwA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVcsDNwA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E212C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769075633;
	bh=a8w/Pm9rWgTLQyD6EmYKn63F8e68lRHZAfBFh/ChqYQ=;
	h=To:Subject:From:Date:From;
	b=JVcsDNwAoPrlaCyuJFrcwNwvV0kcqfHBtWRaa9RFaRl+dMbTSadI4wUSeoRAp3XzT
	 c1SgIkLxumyayyS5DZGCxpDvTJL1DHFm6oYiLMpioJ1jTAyyhSR1d5FpGWT3FFG/wG
	 OyvJZ+eqbeNPe2dEpwDT4rbjvJw1wxw+fclKMmzisDNSFUCDxnxUqqFNlz/Gx+TQG2
	 oWYp4lUJ6cG68E4gpdMJYslCzET0ZUTrYDmzfJu7U/1U4JxRWm3vp5td/YXwoA6Fq7
	 CqBsmvjbBweJVgCoeR/MVtsuzo3CU5Oqv6sQNy3M5jCAPX3i3XbBtt6pUaHVNtjAHi
	 +lncmTnjEeCXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905C0C44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176907563358.8382.15037232810918396225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc84f7c9a3f2e6355ce951d1a6eb8ad1df3114a6122de475855faf993f87ab3b
Date: Thu, 22 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769075633
