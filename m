Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB149475
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742174394; cv=none; b=me0K94cq+mcEuiQ7dOtcJPnhN4y1wogZWvJcmA7NciVW2MpaQAvtwRipMly6cFH7MghqdaU5kq6538+2by89Hvlasb+POI/H/pe9QLZJvKMvqN7VnG0z9mjQGb1P7fs2qfYwOCV+NuSZMlRA6kCUFIb5R5nuMi2V3HwGM9hoa5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742174394; c=relaxed/simple;
	bh=lOngruKTPCv/xqknJ7VDFB0yMgcAUOfqLO5/Q9lIIFw=;
	h=To:Subject:From:Message-Id:Date; b=oBnb//xo7iM3zW4HZDaOVnBQwKTf8Ge74GA9QvGOBI2SrbWwnhJKUkVqb9VoEvsf+bSRznIXE0LySkPMNpCKgKArF4jYHdbF8I2X8dfoEi8aU3mFo9gW/Jm1haorpag9XGlF2vW+WRv1nB4HCR6om/vAHDyhOWEHTk1BR5qjeK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uv6KfF+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uv6KfF+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C232DC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742174393;
	bh=lOngruKTPCv/xqknJ7VDFB0yMgcAUOfqLO5/Q9lIIFw=;
	h=To:Subject:From:Date:From;
	b=Uv6KfF+7SyhaWgpwsJ6twtliJlJlZ4tw/UtQ5kLRrPwSd63t0KqN+SmYm1q0INUKf
	 JP/pmEpBRns5gPkoK7qi14eu3DDBGlclLbVAQek8stpfFhe/FJMY/hyshxEqK1RI1C
	 /jBKqqdA+HYj6sLZwRYP3uHANf0f8rBWkn2NeW6K0dg0geZDa65EeIJhmOejm+T8Lq
	 5D3yGLEbBl5OmpRDVD0wTAkw1PtZVMAmmw9QU75LZinLBJYkSv7yw0Yu2vXCsRFHiC
	 XXV23YV8xM3xK/OI3tESWeoBvX66Ri4530sPzfodzxG1U47cZ6n5pez6nEijHgT4Xf
	 cMcvVMKhbwn5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE660C28B2F
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174217439366.22591.8213690619317674205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d06b42e198da0ec2e734f11f0bf08c4ef70e1ceb604b0b6501453e3f9c97b4d5
Date: Mon, 17 Mar 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742174393
