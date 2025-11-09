Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057444A07
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762658994; cv=none; b=LQIhYQHuliT/FqUEDYSSWpwGgRIy+88Xvc1Ystn3y5vrfMAz8rDJ4852xB+PA3SxHOCzNLxWWxdvgPZBhA4EPSBl5cSFLDTqFeoAmq2PeglbU7mNNi++q1wx4yAm7ekiXqJKdRUxy1gtO8237xiQGBjS6B44VxDyU+lC7UVcnTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762658994; c=relaxed/simple;
	bh=SfACzaNc00t8pDZCQSIc0NUB2Y0cHpVLZOIZXaEhRBg=;
	h=To:Subject:From:Message-Id:Date; b=OO48J9ML64cVrkB5mWAdwcGM0NQ0Z3TNc8357PmfwOLOebO062pNwMC8c6McdlHcFWA0nmoJNHfeBErumBB1c2vGDOjT4MZD36izDx3ZoHZYqjm+nxkgN6a2wYM+nNZE/Og6n/Yqu1oL4OptSE8FjsBaylOuQMKnK+2PlEuc9M4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/RWgv9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/RWgv9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE45AC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762658993;
	bh=SfACzaNc00t8pDZCQSIc0NUB2Y0cHpVLZOIZXaEhRBg=;
	h=To:Subject:From:Date:From;
	b=k/RWgv9mjcG5Exljo1oW1ngdaRUu3ZMdClBZgwPUupYqEWwRD7ZLIYOqYoj3KNceX
	 jTuB3y8g/psR7l2zMKYQkaRyk9Lx9CLd5GapLJJK7ysdVMOK3B5it0z4X+6BoEfBtV
	 uNVD/0w6GPVk7ZbbW1xGULY0HCVuqliBH3QvRj5pc9ejPen+c/PAKo2fXTTcUchX+K
	 KoyAnF9dx0zeGqtlOb+Yi86ON+o5tRpH4yy50ej/PWqH1os59ax+iVW8y+HnIZFEjw
	 QN0kUNl4e7vrB4P5RnHUn4Q2nxSkyUvf0c96IKkXC8w/JwKtv9ORLCkYjG6uT06tHQ
	 ZM3c8GzpH9wFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E8BACCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176265899360.7368.9937519221645168047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba2dfc5534ed6f574d47dfdeae6000fdd6e7d62f4d72c1a0eb4d2ab6ba3f5128
Date: Sun, 09 Nov 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762658993
