Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F181F41C0B9
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772469294; cv=none; b=sNI1sCmEoPPaJNEQFamm92Q3FR5myGp2ibMsCriYWLxqVG09s6luYUvmHzLXiMkI7eDrPJlZVlYffOYR5hz+g0LGr1R+Xt31cw6x02OmEXJBl8IoWLN2dCbUSEpETpyurmzD7+7Gdmwcp6dGrDyVg7A50eiAabtYFNVQ5HVepgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772469294; c=relaxed/simple;
	bh=f7MNe4BrPHD7XQyvXo0ljqXr2jiE9pGb5s5vJS7brZo=;
	h=To:Subject:From:Message-Id:Date; b=PE406wRLLdkVNKsnmCNgdpL4PIcPwESsA9RUAIQXjJgD2yKD9RTAnenJTqwygUdZReUmHdLzQlXTQweKn4x70WR8Qda0RpmrRzfOU2/1hNWJHwjPdD00MzirHNqbpwncTQZjin9Hs6mLWLi37occ9KSK6X/uCETgAmSE+1ekgEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZaeDKZno; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZaeDKZno"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6C4C2BC86
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772469293;
	bh=f7MNe4BrPHD7XQyvXo0ljqXr2jiE9pGb5s5vJS7brZo=;
	h=To:Subject:From:Date:From;
	b=ZaeDKZnozk4y1Szi7nCxP0d+kv0g3ftyzlP1pY13JXh8XZPFZcDzZftya3xWZ3nZs
	 UXHhfTQgggc4FnGTKMQ2mBhDtCkbxF30HgzXc+66mR3i8DImGoBfb3o9OnqqVMPEzM
	 L5Vfi+VvT8Ho1z+HFn8hXQwTOKrNWlBkPukwv3uGxl4MNsqYRfvwgK9NVNes23cZFp
	 otpDa5ziTBBvb2ViGnIwN7U+ee7lShwINlZCfttZSGRNF91zam+h22efP7oWqz95Yf
	 7n4NqlWzwifSCvzwbsCCHUzfNlC+CiNWhwFjepbN2fo1G1tgmZjhfCWCb/SB4Ky591
	 ITFrRf+otNHtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93241D58E48
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177246929359.15802.12043241800023824172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02ee516fcb0ca2906f559fc52c4677dcec5e2995282a38bf3bb2a584931e2618
Date: Mon, 02 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772469293
