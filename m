Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E07D2BE65C
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 23:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765583574; cv=none; b=h6Ss462D2zCzbacxOuArGwm4ybJU4l3PgJeRT8X8/QIgypFXp4xugNNZYjzX4RFosAcu8GssyTSWTv0DIXZJWNR1RkBHJQufmkvWx3fo9yVi4x+9b8+nX5hKr7tBkP7EeH9bijeKZcGzfuQzKsTbvhCDkpTI67ULr1vPjnyYWAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765583574; c=relaxed/simple;
	bh=G0aPiH1xrg1pH+Qw60zH7TfuO/B3VFvIRxU+p5eRwxg=;
	h=To:Subject:From:Message-Id:Date; b=Sobk6uQUdPoEUYJtB5jay36RPMUH3SYEz26B1BTp9lMj16LMF2h55thnIh5jgeB6qXCWF+usjwyzO38o3E5l1N+svpsrickYElY52KAuOlC9TzrKIrv1Oj3GX3k+3I8Egkg3MzyaCfl6h5quT85tKiJkBmPdM085tYimYBCWT3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUyVX/6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUyVX/6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2F0C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 23:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765583573;
	bh=G0aPiH1xrg1pH+Qw60zH7TfuO/B3VFvIRxU+p5eRwxg=;
	h=To:Subject:From:Date:From;
	b=CUyVX/6+whk9V9G4Y5Ia2vobSGRcZ0KTY+OxaEcvNkG99kep9+MqMe3POsm7yrgwy
	 LEoZwa3vbAT+Ap3itA2GjS50aN7/3Txa+SjoaK9Ci+NZpunywkMbu1XOzLtU3Fk6FP
	 9CGteqz7utHrRmV97Y31atn3UwnpdWLd56jsuZL79nr9nqgcpH2z5kk9k7zmdexKuw
	 nhIb+VUvda4ntncLPOjta2l+bqgBCEfV4Xe+4ES5nQt04hczmI2cdgj7TExfUAqSh0
	 uz+ms18jH56DUzVtnwg1oZboh45cO1+5qF/Mo0k8+FIvBbJ6uKK5GH3rQcAypzzojU
	 IeRrWkD4DY+Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A08D59F53
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 23:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176558357358.5415.17133507797165762573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efeaddb5c60ffd797ca9d38cf49061050c7e6ce1c19955978d12b23215b149c6
Date: Fri, 12 Dec 2025 23:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765583573
