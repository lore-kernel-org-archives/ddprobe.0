Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334281991D4
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777093654; cv=none; b=qMxmt5AMLX+YmnO8LG4WKR8MxvVesu99pWlCq09gJdFNgYxpYYLlTSPE5ZSUZDHC3ukWSilJOKp5P5rAMt/ieNrIHt5pVKQCJ8H0jCr9Jm40Xt83huK5II/V7b2e1O0qlyQVOPHZDJ2NnT3u/eDKdhctLpaBTYlzObW+npk4Wdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777093654; c=relaxed/simple;
	bh=iI2gzk60mNfVIG/vIubNmD7VxbC++aN9BZOGhYUO5oY=;
	h=To:Subject:From:Message-Id:Date; b=KLbwtKIJ+2qsVIi/ui7179W4rBdgF2wfiwwCNa6GOOJ7AK2AVyzCdyRazDINFL2SA6yZaATAu7GfyLAh2/9bZUK99PkybSGxzMBo/UK/4z1TQ2+xpZIcTU2x3ZikAwh+7fN4XTgWaKtLUf3+jobZ2khps1bSWQYFRWf9dcuavw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYW83cYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYW83cYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D1AC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777093653;
	bh=iI2gzk60mNfVIG/vIubNmD7VxbC++aN9BZOGhYUO5oY=;
	h=To:Subject:From:Date:From;
	b=NYW83cYoe+u9T2Aqj6bshsQWCkH5ytKFoUOjH5M1GSwW086YGU7TJZ4xXKJzqgkbW
	 KAdf5gObGuMx+EZDQK8rKgwlpiro/m9n9zZTj9ffMZkGcgOO+GWUC3KnkdviffnD5L
	 BYQl3XuhfzdMS2uT5okGadeGmLPrsOqEVyFOLUV+sVFWLjYH+pZtoz1pHbJbd7kFd4
	 gh28LMlwHwimF8pMeQNBRVZfySsaz0rQjoEQBzFYT8HKhMy/t1dn7D77reQj7Y5+cv
	 CCCw/quvcwsII2BRF9fbbESmxxJd2FELXmF0+PXfLFGYlw4l1ajqfXOU6ra8LnQykR
	 nn3szFiLyU6RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90F6FF8860
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177709365368.3426.13047718578432574164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3d6c2aa7935aa74741a9f04eff8c44a542cef862cc68859559c853fd1196fea
Date: Sat, 25 Apr 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777093653
