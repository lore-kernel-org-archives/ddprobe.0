Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3B65C96
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734161754; cv=none; b=Bi2PxPmUKx/JyhYpjMgL45sbRfnVMLgha9aUwRQanfBTGmx0o7kv57PnKKWC4gLb6XgdvKd/Ga53K+KwE08lWiwKqBN9kC9KYGpvbrgyK5nqjLaEpmEaPv0tax5oOESGJo1cekeBDULEz7PzSNJUnBrx8qY88PcXIKFMciwtcQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734161754; c=relaxed/simple;
	bh=NbtipIHTlbcdes3AGd2sFKPJnkQaQs4dTCbyxUzEc8Q=;
	h=To:Subject:From:Message-Id:Date; b=HwLQBQyfsdRenUCPzsXo25Z9vh2ANheeMyMiEp2RYeXTixk9GYxgxcnRxJntBkZGKixLu3ObsaKPixemZB4/7121KybpEghh1n+4/AIqvSkPTvPVW5U5c6HFkvd2FU+mYFOGylvc8fEqMjhf80VAlMa5zoVz8m5flGdhbRPphbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQuSEAaY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQuSEAaY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E39C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734161753;
	bh=NbtipIHTlbcdes3AGd2sFKPJnkQaQs4dTCbyxUzEc8Q=;
	h=To:Subject:From:Date:From;
	b=LQuSEAaYCkby00yMWFUIxa4kbOOzT5KiXY2ltiZ14Zb72pCo/Y3YzXSmgN+y0xPMZ
	 hwWkYOzhtNe+XtOc0DeozOU1+rOtf16Lh7TgNLFR6z1j0xWuvrt0FgmKkCMnxgUBTe
	 ndDL5/sMx7G754xV+2LMTfVmx2GbfIBInTTIbF3R2cMWtkT7PY5Gdnt/sIdDX50MY8
	 CgwwrRbXQ5B3AOtp+hckVNE/G+MoUmqG9/QrQLHLAgohroO+4OMvC8Oyn04qxjNpeD
	 p9JhWtgom5NZC/NCwtZg0CfHHw0trhaAH9Z0jXMopZc11+tsSGwfYLaYzHZAtSgG8H
	 HTNBhtJ8+/T8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94332E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173416175358.14671.8434984600081268144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4293f750aa8a8bf675496db206724b93c1c3c8390a82c2560826d90ea98f4b9
Date: Sat, 14 Dec 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734161753
