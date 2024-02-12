Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B723D55D
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707760097; cv=none; b=MjE2HnTKNtwOt4t3v7junGyVDKm+2uJ1mosf5iScZrkLlGQZi5Jk7NoNuCglIh3DnaYfdEWDm0Vi8rTTct7N5lSs/hv3EwnxEp0e6QOXUDVMVvvaxMX1kJCyEdJvr+xYFV7Gi5pT+sOsu8CatcFwaj7++v0V7fludTywQkzJVys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707760097; c=relaxed/simple;
	bh=mcUR3nqrR0Gsxb5kLO2XDRXjZ2S5iGj0pu9VnchahUE=;
	h=To:Subject:From:Message-Id:Date; b=cKwAs51mNHHlmIMGxmpmwIIVvdcpI64jVxPy4/ScNxk4UBfag1ZaTLues2DqIGf8ye0+b1YEQP/08UsJqPGE0UPDrKWSFZ+w/E4XN8jQZ5zUyn9jWnybe8zi83Je2cRhRxXlB3jsGbQw/VCWCQQABdK6PlQYeBqIJlugohbgZgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUa9vLSS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUa9vLSS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8382EC433F1
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707760096;
	bh=mcUR3nqrR0Gsxb5kLO2XDRXjZ2S5iGj0pu9VnchahUE=;
	h=To:Subject:From:Date:From;
	b=EUa9vLSSBsl07OLSeKiKupoVUSB25tPZIVXVOeWvfwYakFeQZocm5BtToWgQ3t7uz
	 N3bmBXcTHS97ZBL3zPEfJcccUkELjLYHcecv6wVf49p6CcV2l3w69hvpig/v0lNSsO
	 Lg8hc1uDF2QsattVBas+oMbz6ifqrqFUReORLrdSYmGwIBjusvcttWQ35OFaHrt13Q
	 Slcq64/fzaswkWa/OTe5WF3twJgqMc9p+4jzeOGeiH4O6K+vC2yd1UUUqes5/7JSay
	 w5K7vmmQiVBveHMNzZJWvqDG2eUmxsevP86g5XAE+GyozxODuQA1HmuPIULKwGlbAf
	 GW6gYZIbGSjwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68DEEC48297
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170776009641.6963.18081986564511751528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83cfcf2bf3403d613eb0c31044ca23a5882927fdc4a6b41af02a810bac78f361
Date: Mon, 12 Feb 2024 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707760096
