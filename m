Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D35438F91
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748997595; cv=none; b=JdKTeyUTOjr44qAs5TAbg2MvaL95GUNIZeW0wT7q70WOrhOhXJKKUDcjMFYSbuNS9dMeBNH+g8KdBC+5rhXvzLF37DHBicTqfttvGqWjqXWtVZnbD11ew0uWXjQJRykPdpidR5KPPR9/mYWeENxr3i+MhQNLZ3yWWKQ2gJ92oHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748997595; c=relaxed/simple;
	bh=nqENvBEjOTfpar5K1IPhOgKi/F+hspeTNOrSejXKdEM=;
	h=To:Subject:From:Message-Id:Date; b=VWNA5iezJ7f+I/Kshq1U/xVsoqRBFxVvHP/2GRd4gc54BzG4fekRPN5guFaYjweYiY6Fcp0VKKjHICIORSk5ksNieI3vF8K5rtyIgw82LGOhSGHeyGOJleHlitSGAzNEPVs1+pjgs/XgdiMVP0yRqv0yFor5b4l0kE3M30EK/Fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TG3VGS/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TG3VGS/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4E0C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748997593;
	bh=nqENvBEjOTfpar5K1IPhOgKi/F+hspeTNOrSejXKdEM=;
	h=To:Subject:From:Date:From;
	b=TG3VGS/9v9e45S7XC5xL98uKNfXXjU7nhaU0ZEqm5bUbeYHFtVdD6Qo0t7S+/o4xI
	 O696R8MOWlSHCB+fpZ3FhEDPzXs1GeOMP03NRyatmBsSw76F+yxyWDybYpEaTNPUWq
	 ZhKwAMVrCUEgl+ovafmOnqj1ydbtoFMO2PnuFvrZ9FTcqBH9ZPPdpo2ny7WhBx/WUH
	 XG4isynS60s6ZJti9sHKse2Jz2fKhj0UUJ91joDeS4YKA539iqIG2DqdfczVQ+W08I
	 GTRTbev0KCO8T25LKfBOPNIaPw80819DR5vudhNXHVe4kVYIHWEh466K9z/ufW0H0h
	 i3t+AFHmBTi+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94774C5AD49
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174899759358.23744.6793235084211222786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5045ec565853ea98e64f09437c5898d4a8cc5183fe007dc7affb694f8998d597
Date: Wed, 04 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748997593
