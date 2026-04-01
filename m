Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A6251DED63
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775024694; cv=none; b=n+HiSaWyhoLKJYqqfHBXq8mZ8yFRcI6feukIk2I/cGgSWO9Il6TOgTKqMrDQ0lCRt2d0g183XQdCX+N/0SGK9FIOkFpQ6CNhuBv4/AYrSFwVfNMOos9Y2xbhotTIuZPnZg6fvNOW7zxTbp0kW6HDD7Ieox/X9pb8sMbbVTBQ5+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775024694; c=relaxed/simple;
	bh=jb1ouNEvbU8yrCU/LH0tGRoLhXBCP+Bf0dYP4VR09u0=;
	h=To:Subject:From:Message-Id:Date; b=OOEd6Wwlggeo85xHr5TAOMfHSolMRJa4DCL8PFIAmAOx2dmr6EpAegAfDVD7jf+z7rw0KT7SK81eM7qaLeEITVgbX6A15NEWwvyJd3vPuyO6ecLdOprR1nZAKMGo8mNSWoNxAyeqjQs3AHqoJp7pZF0A/ocxgj+P1gdZFHbZAyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLeWOaRi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLeWOaRi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CBDC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775024693;
	bh=jb1ouNEvbU8yrCU/LH0tGRoLhXBCP+Bf0dYP4VR09u0=;
	h=To:Subject:From:Date:From;
	b=FLeWOaRi8yrgHy3UMfq6RgUeXyWv/t2fa+7r8U4hCLnoo9ftH4XyrfImCU7moAZkZ
	 brT6mO0Z7Zj8Ojzlv4P/BhUdYjuuvK6YtEV5trJE3lTj5hgYQRt332IF5wzSl5RUJw
	 s8jz93CgyUSvN6FVc3FBi8i2wCBvxQL8wCZLEUIDT3LE6NOn/0dvlLSBVPZCmZ4w1x
	 hDo3MVE+VBXiG7Jt4aIS1lECWsqy9tBjwD/k8hP4PWK+9CIorqAr6gngod9QUSifmU
	 vVkMxHUzhQ/oK3XZhPavcPW/65HLqxx9iCbbTAJJIkjYZsD3fb4hh9fYzDg1ruU24u
	 l+xOtqmcpsjLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911C61076376
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177502469358.27107.7763292753124906699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed761fd2b6fd1b6206e7ecef9f25d8309b72c772a3d425c88e8efb3d5c7df44d
Date: Wed, 01 Apr 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775024693
