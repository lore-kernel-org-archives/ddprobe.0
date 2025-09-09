Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1358B18859B
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757453394; cv=none; b=rMCr22o0qVG8PDqC1az781pHUpSnYEXuvekXi+U5UcswlLsMGFzfemGoq21zsSGf91il/gY0+BiF/SmX4u+OthMYj9IgtRMUHZ5bKxdTvw6nG/dzMT1wqp2sZxYQv1U7e4/tp6vs/DCpvBrvikxF3UvdJEmx5l9Xcu9ymqYbbxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757453394; c=relaxed/simple;
	bh=geLRNQfE5hbz/naRCpZXvI0Cr1wvOj3KMqLCVOGnP6A=;
	h=To:Subject:From:Message-Id:Date; b=M9FSBB7AKvJRUKlAjYZ/V9Dn7gVIm803CPounlNu+ihHP1ksTPtE3lWzFjJRyiphoOhHyAGCTbPa07/JDcTipDjiJB3ZoHhoqjH2llH6R3Nefuj1OSWWLI83g9R+3f8EzHGoQJ3zzS3kLvO6L1MzOW8AOO5ghp68am6yZAKTBEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+cA7KLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+cA7KLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03B9C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757453393;
	bh=geLRNQfE5hbz/naRCpZXvI0Cr1wvOj3KMqLCVOGnP6A=;
	h=To:Subject:From:Date:From;
	b=W+cA7KLkGFpHuP4CxZaQw+pTce6sIXlCYiISKRM7qB1dd01rHm13PUz1q8x3vsPVN
	 fya1SFZfzGM7VJ4g/Vuis+gCMDG0+bQtn2z1kWVpgEo6pqjLM9OvK4Ra3hfKNUZqHp
	 1PGB2zcf+b4v5LV8Ay77+nItK1MeT6IkWHjy65ajsR/0/idg5SDO4Pynl/54tbRKbm
	 +3LtP2nG0tlbDhnaA1w55NfKjB5So+kEPnIRcX2Gacpy8a/ec3sVB8FLura+mp/NHU
	 rhgpvBCMiqFJhnzqVv/XowDu4UTfAbhtEHFffHvyTu73IBEw6GoZ26XRgUemKq3SK3
	 39xC9U7JSb6hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F761CAC582
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175745339358.4620.13376463986480655329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fe9e7e44681fe784fc3457416fce121fcdea08aff1c5df02aa0e936406dc78d
Date: Tue, 09 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757453393
