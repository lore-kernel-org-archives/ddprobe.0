Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437F36EB7C
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745193594; cv=none; b=SlLfyG3BXXdbhZUVCUstu8EDBFbvzJY0mGtmnZ3H+yG1y7LpzB5VoP1A/KhJDprVOI6PdH7Uz1h+I912I8zIFwD5VUI43y5JWEnoYwRZVAPq/6m+Qv2yVxJI3mCRcZyXvuxa7KXI4nMswR2Q5DOobxnguQZoL1v9/GQ0yU4/05Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745193594; c=relaxed/simple;
	bh=sPgCBCVoZK3d181YDT8A1f/9sRqlyGkz5u8bznZ7IqU=;
	h=To:Subject:From:Message-Id:Date; b=R1gi93SnDF+EM8rLvZQrDDCIfqc28mGHBXlJ6J/iKt3QheQIixQXmEHfmasnd/Bad4MccdP5eY1KtMIkcwB4lZnuD08vsQV2FT9DNtHdDr/WBHr73oHZPE5Zl5RfY+XGcFADuZ2nOeT1BDzvxiFO/A+AlOS1E2SfNGV0pCM9I+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQgtXFJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQgtXFJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48CBC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745193593;
	bh=sPgCBCVoZK3d181YDT8A1f/9sRqlyGkz5u8bznZ7IqU=;
	h=To:Subject:From:Date:From;
	b=RQgtXFJXqWxUdHetWweL3qt88ropA8KGcsaAwuVykZhqypUEvvbWWOw/UfcSoiMOX
	 cMzCyut5Bpfnfc3jYYGOhgHju6ZZmJxgSdZ/Lx/g9kLORGgd15BBDwOy2MG86sWb8b
	 D+2nvHOSMnXjtNDumPz72F9I8RvFgHvhFq4eT040JKgV6icBt663Jjfz023V7pthTY
	 PcKzGjd3BkRQCc/oz8yw4JhdBgpbHe49LPM3QaZ8NXOfCgtdn4N2q3m8dR/uJmayb4
	 khdltqFUU9kV20Y/2OHtQe65y+xD+sjjI6sBfYNkYLpwEc72ejrLggqz22cqFb/2Oy
	 2YaERyDvLQN4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905DEC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174519359358.22876.6154448082872623800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d755764c78d6671899be9954cb1215908452f4f61a71c52698e18c55d9672dc
Date: Sun, 20 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745193593
