Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F61D428462
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 11:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777547254; cv=none; b=WlK8QT+8LRvi7rOnY0kotjGY8EIvrv0NILAlnE0mWYFN0pvA9x3QErempJASzbYCJc+WyTc62njkD5UG4ouWhESD1RsAt5bQUkJBW1kXbxN+Smi8uHrakZBA15bOHB8YNDcQ6s05MQQv/GXvtIeklQftfjrLN3rJUxvQT281uBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777547254; c=relaxed/simple;
	bh=wYuvojetm3cUsKLrmwcMX5oj6+B9Cysa7uqPaHdce8U=;
	h=To:Subject:From:Message-Id:Date; b=ewwUDRfEZ0mFmvLNhi9+f0LSQL0pPyDktv7kynwSw7r2ajqpmaTfSP7DSDc+KKQqyRWiAOa3d7sR9E/y+b2cBXj1O4Jq4QNkp92WbD91osYxjOBgEHlgn+XzwqFnHwHd5lWAdlSEB1Xb4JkV3RumuZXDJtNdfDCw8LyweeDW3C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h77O8oQt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h77O8oQt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B77C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777547253;
	bh=wYuvojetm3cUsKLrmwcMX5oj6+B9Cysa7uqPaHdce8U=;
	h=To:Subject:From:Date:From;
	b=h77O8oQtfDZE6keG/3W7BnMb6VhvEBLqfJuvqjxn17bIlbxKt1mAWosDe0nRa9lxs
	 6AlJVzOWvX1UylKvqtvz0A26zvA7tUiqfItDdft/Bf9CbaKX9N9H2D3tPayScVrMg3
	 u4ExlBq32l/bzUc+rsd7dadvKHrCdLtfiBW90gxCYLY+wJ7PcB+FyLYKLoeZj7WLnG
	 uSNOMayJaECpm0YtT1HlAvPgjvnRjdeorsJ6py+M6aO7+3wgGsLhjABi94QrCuVXag
	 BPVzn8oZBVC4lO699cWU5nk3DiAwiLnse4fUXo9/8NrgDs9WzR68TTLqDaLkGnCMPl
	 lrY0yyTwp5m3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E7EFF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177754725372.10820.5836958166881617022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 105f06ae9c0d2bf2049ed50c90010c8cef789a172806415ba35b1ff3ca85458d
Date: Thu, 30 Apr 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777547253
