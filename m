Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F98C32BF42
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774185894; cv=none; b=giK8fpHcPlXcVu1ibfZVX7UwHJe5H6EwGoAA7vn6X/1mqo/foBqvNBNoSFTT3/nPsOJPt1xRoEyOGzAFJXEBRuQug7Fj8wrCERnIsizCd6CabdnczZHc6mNWUoqMwiTdcptoZ5AFJ9+ziDfjNtFP619FyH0gm9C/8vt/eNTbVr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774185894; c=relaxed/simple;
	bh=ec+qciuNW/fTq4jDW8JBKvP8uVZ8b/XjBWaRyrT93Yw=;
	h=To:Subject:From:Message-Id:Date; b=aPtolHLaDDdr62riqzky0uGWHICco0XHRGvFXIUMPy40v9Xq3zuSJhXnVf681HtXRj5k+luaemIAlkVEL/KHJnFwxC1T4vJQ4uvqcCjTBSWRhVFuQm/iEpHBMe485FbE5t5PwwjM8uvUz4pz0ira5QsSjIyxcnMS43RZDEMS7ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKvePjm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKvePjm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B23C1C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774185893;
	bh=ec+qciuNW/fTq4jDW8JBKvP8uVZ8b/XjBWaRyrT93Yw=;
	h=To:Subject:From:Date:From;
	b=SKvePjm8GhpwOHL4PSGHb1ZpGHFI1mWzUsLATtqOWHgbCSJeHfEonLkaaBWXRvecy
	 29b062T8YllFLGrgdQKJgfyytvPPzKsFtHpwCZYc+MbFGVlk7BhhyITrN/zNsw7hIt
	 i0m7rrR1bP4v7ocbNdbkukhNLd4NiuotJhtSAroJu/59+z/rgtQvmD1HiVgWYMYjF3
	 JfiNatFVGloGE5Zxbz+Gkw/V0KWWDQVMY5Y3Mpw0k63euYpsXwpKV2IwrheTNc7xn5
	 s9p+VOZpixyyxufadR6X8tgCZOawQsjo/qKWxcmisYAO5Lvjlzt/Cdc4Ukqmy2v7Tf
	 9BlUOUXcX/uaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94070FC72C4
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177418589359.20763.7081123186386447963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04aba703f91da816eddc285e7e967ab3fd1f2b6e5af432da7f184288403c1efb
Date: Sun, 22 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774185893
