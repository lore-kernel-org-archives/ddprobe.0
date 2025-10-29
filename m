Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6AC1D5160
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761779994; cv=none; b=QWk/XRigD79jTuhRmpuKezRvkbsmdV5Rq8nxQyTFQGgRSBdEOkDB3/PNzcfQ74HEM7zcfH4FljjIko38zSnkKtTkBb5aEWqi1apxsVYnIM/nF3EzerUz8PMrU3FpDBwroisFBD6+SgGjQS9uWjRjra0Eb9Q0UIhMbW+df3yO/pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761779994; c=relaxed/simple;
	bh=zh3WO7rTrZRQU7WifMRZ66RRFIlJmqs9kzQIYzrpI1I=;
	h=To:Subject:From:Message-Id:Date; b=YSSaZG5LFBlP27z5mGgdYDgQta1CIPUHEhmy+WQl2ulbD2LZVWXFu6ReM6OlEbXYkcU1XsDxeTy19NKWYp/fMlWY7q2Aw2J4DJFOep1UQ7zJ6ULNGze0D0vRJWZW5IHqxYvGB9Eij33THmCckjCGYZmFjxk8O5rslfuYuXmbGGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYJI8otl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fYJI8otl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB4BC4CEFD
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761779993;
	bh=zh3WO7rTrZRQU7WifMRZ66RRFIlJmqs9kzQIYzrpI1I=;
	h=To:Subject:From:Date:From;
	b=fYJI8otlPuwHIcuXvp2oXuz+3z+FHoeqACbfdC2DEbOvM+E0obo1io7UY5EVgO1DM
	 EpPkjFHfHt+tg7jz3t3dUsCzQtOS+THTZMc6U+ZeUZyP3B9LY3Kz/Qmw5LzfkytUte
	 F84k2iP5tWkE00sWFxqPzvfOO/DffblTr3Rcd22IUa/UOKgAtJYOyk/cokDc7p80O2
	 cMYHrmc8mw8gdicVY18Pp6cjx86skOM+lznuAwf1f8Fchelw6KYG6MBJvA0byne5jb
	 SbWsu2eTFmHEVm8sa4yIggIU3g7RW/VrmBtxmuHiAbdyc8W4DJZfY2P6Vefy/lEQ59
	 B7D/IfiuVhQnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA5FCCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176177999359.2284.17993809981909296952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 348d9a816bf78adafe8efed86255029151cbde3f892114b3cfab74b0aed7a1cb
Date: Wed, 29 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761779993
