Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3986B1C5485
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744954795; cv=none; b=EHT5ZYCJH68R3poWz2U/xfe2lT25vTGs3Tk++rQUtDsUo1do0WXaqKY1ZIKR6ut7IwCxLdfr+UHYkvKpsD/ieVLD2D4jvytP0UHS3R+ti12ZZcIFURhBJMrBW6G3O5FLcCiPEl3CDxkBzV5Sjvpb2MWeIwRrMQfDrSMRPbZEUNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744954795; c=relaxed/simple;
	bh=nLEeU84gZ6dIQG/OLMQg2g64dWwvVGS6NB0PNzt1r8w=;
	h=To:Subject:From:Message-Id:Date; b=L4nGjbNPwhRQG41L0rMMpkZziYemj3dg80GP/kw54fV3a3ORSaKclgXJmcAIVOtpzlX74zfZW7HY8OHPF7JIB44p7VwRw/aM9HPjy/+Cdnqn7Jc2BMMEZieDpg5TSDOieHgj+xz06Ldyu5fVJc8u8A1DAxcPzzZ8PvKkmoP3yI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ho+NR90F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ho+NR90F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDB9C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744954793;
	bh=nLEeU84gZ6dIQG/OLMQg2g64dWwvVGS6NB0PNzt1r8w=;
	h=To:Subject:From:Date:From;
	b=ho+NR90FLSrTurrdeThelFiyjL1v9+ESsWIuA9qsZc7sea+FvNcngnSbysveBwvFl
	 4ewjOHj/LZYBNjcLOb2GeKWCBMuF7XrH51Tx4srXnWf6mmVSKOdWN6XY9MkAW5TPWQ
	 L/T42GKN8PoCPmKjqiE+8KSauTklXHTxngFytgej+cVmJQwI4kn0XLiUhQQgfxpkzH
	 PVeSpLjJASmxOUU8XICrNGuGxCYsGmePOPN5L0Wpk9FHSTtoUByC6+aoyXPaDuoQKX
	 +cMPuHuIbarxA62X78fJq7oIOKSAq7TBwKbt8a+6Z22YSyC0tvgRx6s5Y2W6uTfA8m
	 I91UiRv5BcWyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E635C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174495479360.26433.12895959961798488766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bf879ccabd879844fd4128deeca5b2b458e5e4e92ccf37368e51d43d6ff0081
Date: Fri, 18 Apr 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744954793
