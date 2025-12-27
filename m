Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1365224466D
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766855634; cv=none; b=gDfl1xdopyKLxW8KAZHJukSKC6JWS8mWn6l5phQBX32568USOLTkwYH1Zn0CW2nuHJvfQgSlTb7VenT5hTfvL6SPzPPgwgkXP2Lqff60Mr6owXmZZ2LiHFwi92/I6/tpSLbBcyqd7gDWU1Yqb/iTwgxlfkW5ClAGBP6yzSDEhjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766855634; c=relaxed/simple;
	bh=GDlJqgziUabCvvOVgtEgKALfRPMTkckLQjBEiF3HGFI=;
	h=To:Subject:From:Message-Id:Date; b=odqtdfsDO9ga3kJjyWiA0SfBSQNfAwzjl6d5vniA3DR6eXWoiVBzFcbNdcXjTjWJiAEB3vHrJpo+ri2aP01gQEm9IoZx7JXzoRfA+fco7lNZckz0He6Hd4F+MtZR3FnMluzrOlGFsXeVq2KrXxb5YTjdD8XUBKXVzmZdAFT9wUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IcvoA6J/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IcvoA6J/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65B0C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766855633;
	bh=GDlJqgziUabCvvOVgtEgKALfRPMTkckLQjBEiF3HGFI=;
	h=To:Subject:From:Date:From;
	b=IcvoA6J/MK+5Srmpoj0f5Psy9d3i/Jx5nrsqc6bkoaSUo+jc5bbuKvMeEEHMJl/rP
	 fPDCxt+WVa+KWA2/PVeafe2AplnVG0TBabZmPoWn8QN/KecByeoNqUCGXdahAum2e+
	 W46206Tt162Z3Fl35GnaEPATxuoE2upsJhScnj9NwjKSFScLVORm+8eBFTDVX/YLBE
	 eAhVmxnudME3i/3Rlz51F+/MxHXYY9PB6gZV3kPW+s68bXjFd1FPh4dB76yscde6yM
	 7YbG/bfS0/qLWhf1yDOO+IPmFxpdsQs6S81mK2OkEbA8MqvTBrb98LUMuRQ16Yg9YD
	 HXChF5S49QnOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97521E8FDCD
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176685563358.26711.13151005512622401883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d22191e354d1c11f447f013d4e81a357a4cec80453a60b1c015edf58457806
Date: Sat, 27 Dec 2025 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766855633
