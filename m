Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7B4354AC7
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760794194; cv=none; b=W3OGeXbi0pHh6RtXMcBwSbUuFD/EgspNRJs8yLdYkjl6fIBHUjTLhwVmz86ou8ZDfPsqWfpM4QCFhM9cPqavGOmQqJZxAscgFNAe3UUI/a0g0jNWnQPviWPSsPs+YD2yuDaBh68bdES81s2eoEfjttIO8vKcMvB5KW2hN5GOUXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760794194; c=relaxed/simple;
	bh=uh44GHXBknPSiPofkH4hDi3PXyUDj4dcL4oGmq/tkMc=;
	h=To:Subject:From:Message-Id:Date; b=p9x3bsW1RZnl7GPSvPZ43SkvSO5OVgpvppmo3ZUONjsAdbMZMNM3b6wEGspfvPNE4dmswUpsgvo/68I//4AdaouICYTLRWXRdYG8p0nF7S01u0d9lroCK7jTqfr4s54i2QGZT1y5//AFQzhp8kHg4nWzgH7b3H+BCNLOjtd3tAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYw7uGiV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYw7uGiV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5529C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760794193;
	bh=uh44GHXBknPSiPofkH4hDi3PXyUDj4dcL4oGmq/tkMc=;
	h=To:Subject:From:Date:From;
	b=GYw7uGiV/HbWGsphEjSeW2vrM7RoQfe0YXHRkWcfKnQyW8PPIKvt5miMwxo5xTQrI
	 r9XFay3HsRcYtnyWpE1mF7uDrQw6uPIO2lHAU1Yx9QPngcKsxPrFZ5TVC3d9gx4jTC
	 PG1QtjXv86nvZppdlS1jdtHkjWbYAU4323FumDG8QMYK1evHbMfxU2HoGKNvVAIspW
	 CtiSfmPUIN44OSuP1//rSMTdbYL4GLa1LvX4JVXqkDwl6uwVLINjj+Wp+vtCofe/TC
	 dG5yUBijNbyygVlOUhpQgAbFRAR8ly+bakfu1NpcT1yRRMU1ECb8f5wc8M00qdy96C
	 UN/rIMq2Hyjsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933E1CCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176079419357.28870.11484310363967251611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01d9e7f357cd3fe1656cede09b0fe04c6e25efc37c65a6b553cb585fe254b5b8
Date: Sat, 18 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760794193
