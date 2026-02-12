Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C9D6FC5
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770861294; cv=none; b=VxaAADD1qv9rZBYNS5yRRBdXdMXBkkmdaeAYj/5CrJtSwVljYgQUeah7+XqbdyopzwgburbML6b7Q29BEzZHK7WirMePjFKM3W0Rfjh1oGX4OVy1uFZvUq/oUVyW6PJrMm/ugCbuI+20lyiNcnVfxkTSC+J3JiRyTs+D7hNq7R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770861294; c=relaxed/simple;
	bh=bV/QQDByacyuUm7tN9hBjJ9GIofM+ncMjYmp1F/Eg/E=;
	h=To:Subject:From:Message-Id:Date; b=PHTIwaUvXYOAUhu2Ghft09NfYg23K6If+JJtLEfWfi5AVZyyATMnkc6T05ytEiD008c0wqTR9bO37QLRFsV+L6vaBfhm9Z4no4Jdo6skDlCQTEiunDLFZZwGrS6avmL0CdWCg5z767z4t3AcRlag1/oCBMiKr3BTjeILQc6mhJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WmamSclc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WmamSclc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BBBC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770861293;
	bh=bV/QQDByacyuUm7tN9hBjJ9GIofM+ncMjYmp1F/Eg/E=;
	h=To:Subject:From:Date:From;
	b=WmamSclc78za+PSENNWj/l/2iFubbzYwUAN+ZYFeNyE+G7eKKH4BTb5noscWVvpik
	 jPjZAcu0eGa4NovDcHIoKOjFrEeGL6ucJ2PffCyBxGaDL44DC1LEhtv9h6jcQ0/VlE
	 ocCQWCYnrkiMAm45FOv0FLl0wDCqc2HIbeUTJ0Fd/jZbvQ/gfqdvJoEyDoxKLCH0zB
	 ruZ04a1zjary6QRZPa5P0PZLxEeFj+4e3Ha+pNgezBQtpKaPFpvVHRv9650woug31S
	 G1cfFGRegidBPSAy69RYbNNd112fnoA/5G4PBuFyPSU5HDVHGv1tC0PUChvdw1vLhW
	 X1lxAsl7NJogA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9893EECD6FE
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177086129361.22436.12239108857674394964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d2bd3047be86395936d23da47ae339453d60aba05dfe0da5aa5c2202466afb5
Date: Thu, 12 Feb 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770861293
