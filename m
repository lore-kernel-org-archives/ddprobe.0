Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3073C22066
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732977354; cv=none; b=Aoc/58iV+DqWdC9mRdMpzFICJD1MmUGP7B0G44tWhnU4k2db6MOIDIKvBLAAb1tS+3R+6iRlv+ajWTEovlp/QdVJwYx/b8dcZYyp+0ZIAwBw87iXVRUvW+r8jKiqtY+Bn0+QBy7MFUw39URQJ/sVUYUwV1cyDzo/tEkgjSAglm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732977354; c=relaxed/simple;
	bh=MvMZyPhNourA37zUXi3PFZFj5Zal6NS+7hSghjkaW80=;
	h=To:Subject:From:Message-Id:Date; b=fi8ib4ZBleRnWgGgQJ1EAdix+RkekBwFWer1f+btUsnwjJNOvzh7ACv0+bluNNiI/W5eXXZ6PUAe2p7y/OQb2dYmI79aKJAJwwthBogOqCSxEgY/nYVJdkjN21+R67B9bYoCpEouzlgfqKhns8pFLR7TCYWHfB5yD44d3nJ41G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqaEdopC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqaEdopC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBAAC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732977353;
	bh=MvMZyPhNourA37zUXi3PFZFj5Zal6NS+7hSghjkaW80=;
	h=To:Subject:From:Date:From;
	b=IqaEdopC9ItYVdioIEapQ+9Ws5mFAvZyV/OK9mmxiGs+22S8ozzqyt32J2bozKHjl
	 ZiQ1wcL8lY+XfoPvrGNQiXU0YgkEHzavD628nRqC2UfvOubH+jMpa0Khe9rlHwY1op
	 SB7kaNLOG/cVqjIELpOfhjOipHc8THkvp34s70tURcWko5YokaoA07cz32ZJPEaXOM
	 Y+28QD98v16YfBlGis2V7u60eXcFgsntzG+QXIk4ORvQdac1ceR4khqqBHqwZodxgf
	 Nft52GEDLyssZXaUN+/TpPA67HLOFGSXa/8iXEUG+q1i+u+D1ry0WHto4cY8HUzfez
	 kW7e8eJPCZimw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9788CD73606
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173297735359.31626.17638830625296346394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 289d1032836e2de6e2af0acf2c55f3d0d22df6e68c0398d89e7f35585171343d
Date: Sat, 30 Nov 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732977353
