Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C18772628
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 02:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764727974; cv=none; b=I40BKiXEAqf4jSjIltNHkh1049ExmWm7sg2l641iLpaF+O9kM8wcAk4Hj6NycXxDNoT32JvHW0NeDLWajS/QRybjrstUsmrMiPqmsqLSjmc8X/Gwh954Rrl0TjpcP+CqA4cjCH8y/xsl807iuDx+j/KN4bb7VMeJFtEeCG5EOuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764727974; c=relaxed/simple;
	bh=wij0FZw8eMeijIV88g3SMnBE8sX1GR+Ov71KfckC9Ug=;
	h=To:Subject:From:Message-Id:Date; b=LUoL2gYPJb2Jn7nO236Eqo0fOolCAx7rIquFd4sb3o1VIxbV48fBBRT1ahOuuNEXnCeyOtCQ0l2DFUgKP4QALvh9EbDERb9UAjIYRAkIY+6LkRtllB4xoDMP17i0YCjn58koAd7DQZ4F5OAcCoAX/8FAoxDM55VZiHrC0L4JXwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvxWnVad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvxWnVad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD372C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 02:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764727973;
	bh=wij0FZw8eMeijIV88g3SMnBE8sX1GR+Ov71KfckC9Ug=;
	h=To:Subject:From:Date:From;
	b=gvxWnVadYOVYicbNiBTeEp1gVvEHmdx8mfiHI7IZoR2SszPfnEgSk5a9oTa7wpJPF
	 JX4JRvGyhpZSLtrDO8D92kbR/MNmsJNURnrvBPcHSXpF0NdUG5NdRLPBzzBrz1LpXo
	 nUGbhuxJ61t8VnfKP3ZPA4X+WWWYMw+8uzycph5ZHuPkbuDzBmZshXhbOIhD4L2l7h
	 j/4usbGn6fjMRIjujju9BIryIOW8U+GTgLehnSWAzYhSgQI9o8rNSYR6BLDERnvs9C
	 9O0Yx5LMftAVf1AW742Sg9l94KPm2Z7pr+Y8tQbeGj4OLFViPk7MsTu/77ueLbGGNX
	 D/toyYklsz+rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E64D1268C
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 02:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176472797360.5142.17298735478354100382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17ad6a5dc277f4dc3a4d467e18396d7431114e614f2cefefc4d5d244afcc9fb6
Date: Wed, 03 Dec 2025 02:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764727973
