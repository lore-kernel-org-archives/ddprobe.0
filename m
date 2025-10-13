Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC1D2566
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760314794; cv=none; b=NoSoZ2AvlauOy7TujUptPSxevQObF/59Fut4/NbhMVQRSR+slgnAb0vKGn4jy9ulIBVcS3c2hQDol+zlFyG2fiip3zCoeqjEGXDb7jFFgxgm49Ggc2bRJWmDqVteW/DMe98H/tz4eh6xxFmtZyQeZWrUQecE1GsLQ9vaLQJ0M9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760314794; c=relaxed/simple;
	bh=7+iS3iPxwADuBuRUGdQXW6yqSa+aMDS8eC+DDaYaFR0=;
	h=To:Subject:From:Message-Id:Date; b=gXULljMXhOFt0qyCgViUv3FH7PJyKTOB/gBKCLhEjd3+mCY6FGHpMv7C1KgyY7GCK+or2fHmvEoNn99JK0ma/D9X6OfISVJcimCgzZWPAL3pnE8OAQvc/hDKiutQaoPOcD9+89VZ9zYkRdLkfgRy2G94Xid/sE4bjVkDliDSeWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kIPj60FM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kIPj60FM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9484C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760314793;
	bh=7+iS3iPxwADuBuRUGdQXW6yqSa+aMDS8eC+DDaYaFR0=;
	h=To:Subject:From:Date:From;
	b=kIPj60FMaKYo1Yd9Nb00H5dDH19bx2ZmGOF8lG4EQc/ZQVy+HC56wtPzohjJQ/Mmy
	 YOagaZi9zFUs+VCbgGRVmPzfBt7l+r8e0Oovh1ktqdNPg4ls+7fdQkXuoICdBYJhbG
	 /AXW46wyjxtgUMjsybarZRQA6EbDn6Od9VM8IRFRryDzT2GvF3O7yp2b8VqU0cxXNb
	 dK0+TYzjjbwcF2YDlVhU4I/cBWyRE0DAN+nCduiYDISeGOFki/zE1U5XOWcSpUcBYk
	 OgSsnL3iIueCgi6FBOuVNGwTeXcjMp1sQl8ndNh94ap8Kk1DNdR0pcGu4r8gZgg/Qy
	 yfSXOMDbQNxrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E40CCD184
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176031479358.12067.6041788490431354753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51797b23de3325b8260503758cd43dfbc1b7fc789d1e99535c2dae91639d46d4
Date: Mon, 13 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760314793
