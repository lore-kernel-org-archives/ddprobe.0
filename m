Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1481C500944
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768609434; cv=none; b=EJYwor2yP+ua075gazqrPlObQ84Crn5FRSKBmMHtrnpiI5bU9U2Muneox4OX3EGNUAbL1/SdqZhgxLdnCYBS7lLZ/V1V7qs0PjuEuUTnE+xu+R21ZPNM9UPRWSn68Xfn9FOC1fYDK/FmU6gtAlOe879eaw8nZ/gEEIflk88rLyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768609434; c=relaxed/simple;
	bh=v8YqRQyfe8tzb63E4ysRIZfPCPgYaWNxMawgkIKrNA0=;
	h=To:Subject:From:Message-Id:Date; b=BLajRVpFQLeNJRPzEA5GYr44HAam28K9FMRnWLA6/UbrebgBsuGuRsZTch1SVbwSCyUO1uxb3k95oCsTEQ7H0HbBOGgxAHoXwzx0nwjtt8SpYYAdqmWtZXVBDmD8j6EV6j5mUdBUvJ1wxIKzDjvC7XHf40S01bz6X8jdFSP4YiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/8/tkYZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/8/tkYZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A465DC116C6
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768609433;
	bh=v8YqRQyfe8tzb63E4ysRIZfPCPgYaWNxMawgkIKrNA0=;
	h=To:Subject:From:Date:From;
	b=U/8/tkYZ3dm0KUStDt96wnKJQm2nnGgoL+DDbJr/IJ6/LaHSKaPUkgxlLv1hPWeHe
	 gv9vUCcsCsYgZALNP1KCJZ2Joi4PFaJ2EhcL+Hc+ZhNXn11WXbJ7wTZP3APwRv9uhR
	 AM1ak6cOgBZI3btI0wpIgKiP+jI3q4VFusboTOYUL1NggSQR4Ywy5/9bA4N6RKC7NF
	 E/f0+iykZSI34wEb2jBkR6aiwWhhOvZiwQDypu+RLO9R+QXFzDv25P8UWvwxeNU2m4
	 +QcCkKvFzWZccl91HPw9nCSVQFdPtBUFWiSuYQdO6vUPyx6idJ6SpW0ZOxw7ek4q32
	 154mvSYPaPeCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B6AC9830C
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176860943358.25000.4734314887211979153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7468ddf35b32c3de89c36c248a7029614c7adcde9de5ecadbe9062e6087e9d53
Date: Sat, 17 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768609433
