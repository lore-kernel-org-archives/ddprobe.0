Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF0381E501C
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749038993; cv=none; b=bl46tcFVvlxqeA5tvGWvAYHKwa8ZaIeZLkCJMUk1rutd1Iky5Lk/dDsH+Wlal8Shk5ODjatJy7JtzazUTedTIzThUHrYzmum41NyEJYRXQi9T74R2X4xNVE552Im4FJT3xxfpsXJU6KhEN9Ej7zyuQ3FHKQ/+kZUK0ZoO/26LEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749038993; c=relaxed/simple;
	bh=sAOVIIgu9gpPINH5XcEknQWurrHoHDcZ2vRVHSaqDdU=;
	h=To:Subject:From:Message-Id:Date; b=BjShWIm2TelOk7nxRgrLJd7hdP/fqwPuS32iqrPAHkMyHAX4HdbtU654YY3rDsb+M0YONuY5u9I8FYdELfNmMhE1GN0YwSLzQXdewS14MnNx+1Q83/wlbtZcaFdx903NBq2impB2NnWj3awMb5LqYOJi4eC5ko58IIPGs0RCiuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LgT9F1tg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LgT9F1tg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28A7C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749038993;
	bh=sAOVIIgu9gpPINH5XcEknQWurrHoHDcZ2vRVHSaqDdU=;
	h=To:Subject:From:Date:From;
	b=LgT9F1tgo29keaw3gqHtkNKFXqDrPz/mH4Otz+8+xD2R1PB5uXv5bdJrEwgwC4iBK
	 siO2ofhl42vBWtm70h2PgDPog/IDQObbnapu5gPRjKSbYXLokQCzKjOdkReP/XJWLb
	 SYMAp4hyODV9OMdH0a6EeKymOZCEXDvfiLxjv5khFHicNa4vr8av6A+V5be3E0p/uP
	 Hz7pIlxWKkaIQu2/OtYmhLEqbj3LBn/ZXds6jGSicBouaqGlzFouujr7+6aH9wV6eS
	 /j6wUnBfvF1mI6fW9HdP0Sv/K6FzsorvkWQ/+7gE+/5n+twW/M71Sx87ypNklBlwPC
	 GvEV6dHbd1jqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFE9C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174903899358.18847.10453557863542462908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcfb06bd1f0f81c4ebbcabf36e6162dfbbb9ca7de694c9fe5ba00d0bf0a7488a
Date: Wed, 04 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749038993
