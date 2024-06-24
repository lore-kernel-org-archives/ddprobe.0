Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E091B964
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 16:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719246743; cv=none; b=kTuc40l52TpK6l0GLcoOtH43CG6IC5WCsDPVFFSCY7U75DqY6r3WiiXsXCQA51UDFZ8rUwYmCVFSunIGYWe35gkGDLpYUvja6JM4HYL9G/WCFwJk3W3xr2pSroVVdaGRW2mEmzAhu9BgBNinpFDFQVWEp+XDIGcbaRvuAwY2e8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719246743; c=relaxed/simple;
	bh=jMWTmDrWMLA2VRcumfnOUmTuTqAwKXQq6O5BDCRIsgA=;
	h=To:Subject:From:Message-Id:Date; b=aBCcu3iiX6nw4pKpEaoahBLy5qlDC05Z75mG0bgm3gKtTQvJJt0xiHA0xme5ejQLZp0ye7AUGhgra9OFLCPwqcNrXcFy+fMOUUoaKjwCkCuAVyxU4NqYG67t7XudGerQD26BcnAavQW7evEVd3Bae7aV0vEISk44OSc0XY0msaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UX3vBjiP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UX3vBjiP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2099C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 16:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719246742;
	bh=jMWTmDrWMLA2VRcumfnOUmTuTqAwKXQq6O5BDCRIsgA=;
	h=To:Subject:From:Date:From;
	b=UX3vBjiPKyQiUTbJeW09g/kGVLynfvKHnMVDxqFlD2686O+TF5nti1Bpw7+RVFu8H
	 +3hS5o2BMlKJL/ZNV07KkKXfKdwntBnDRTQ4rvSjGngPWuRyEoZaNwUc4idKA45mQH
	 093BB+bllJngfPD3X1pap7NzSlOJYRwvjL6DIRCO4YITziSTSY6vGB1bcea4cgEB1F
	 rZuHwGPS3TRPpMhZ01ZvWgHR8pwh2WGRiA02d4PwtyB9GjT3Duzpuh4icdrp5hQNvS
	 1+2yPpKzNzHChg8PFyH+MrZZHRgJW06fzYL550MSFWZ/kqrpLlrXSQ4v6NlDS/pLmU
	 53BNbV/MGA3Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B7DC2D0D1
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 16:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171924674280.25575.4416250435971236805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f977956db0c945ce892018b5e7d2ac905d59e6aaab2f2166805573c2cd3247c
Date: Mon, 24 Jun 2024 16:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719246742
