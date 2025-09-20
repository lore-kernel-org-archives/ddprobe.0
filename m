Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E07323D7E9
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758364194; cv=none; b=WXeSwte0Ehe88zRF2S3oqfrx1kipyh/zJQ55nJKyEZEh10LaMmxwhCY9IvfOIGsxYSEHhNx2FUOLeKdRiDKVEuxj02sG8/9nnAnaOjJt7EnW04hayutqgjE/YREyRrm2AUfSYGCz54DD1wb6uj/1j2P1ZPxwOsZsOihgORatSd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758364194; c=relaxed/simple;
	bh=7bTBG4W4MAKjYjPX0HEnCkmhOKukXPNvoXqHMlJ1B50=;
	h=To:Subject:From:Message-Id:Date; b=JQFyjL/ib4bBEQ8F4QC8qHQk+fHU6rt4UKd5f9NnxvuS0UAH9YyXpUQqzPh+C4xkhQhA/SoKnIhK6B6/NoSAWJDUnpSAD5ffnI5WdYXP9Dc+T6mPG8IBs8ByhNpJz9DIR0nSbP2JyB8rloOVym0LTT5LF3t7zqNO9A15c3Kompw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUE36h/y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUE36h/y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B47C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758364193;
	bh=7bTBG4W4MAKjYjPX0HEnCkmhOKukXPNvoXqHMlJ1B50=;
	h=To:Subject:From:Date:From;
	b=VUE36h/yDx3t5Xert8rLwnAn4im2SJIADjIcQafyvDwUsxez9eHKr4Onm1rElbWfd
	 lrHRRmeedThiBo/AsSWJQv77yUQKJ6Aphe+mlYM5q4Rz+ruH6oMGGiwDCA2fH6zWyI
	 h/9do61xdTsZ1GD7NK0qWYAPHCgL6CbY5fIEfKUIMSmY+Q850cpyRQqGpXXFR/FJAy
	 hPmh1Dn1DHvVp5lCpBJrm22kv8jqwTSe6sl/BlZOyypRWlNJuP8gB3v7YgGSD9Yr/0
	 hRgQb1vVJRcBvjebPj0PhoieprRzzSC/+SWsnxMihkWICwhL6Z4QPArqnhHywBrQXp
	 ZgfD7Ki69HIRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B75CAC5A0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175836419358.16107.2467063389885406438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16dbefd933dd37d6803673e0f89110f2ee8eded9cc738d73bf737e1b3b030de4
Date: Sat, 20 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758364193
