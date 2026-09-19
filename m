Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1661931D366
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789819834; cv=none; b=kDI02Yvqf2t1t7OL6YWGQ9Ce/s927VtiURrpW6h8M/zLyoCOxWZLjs+Mca1WAtHOTkM8QVZ8mBvbzaz+k2/MzxfUN4yNTtqFHf9VU07nOD6OZ4sqlD0qPNjX0Omu4lmQQst9FEAQJeqA9WVC6aB2jGPlZ0kD7eHZYdwOCBy4mTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789819834; c=relaxed/simple;
	bh=ZYTZ7ZNLUvGj/kzUl9l8YAmSp6bl5pHVuMjXZoKx9AE=;
	h=To:Subject:From:Message-Id:Date; b=hP++O4VpMKF+R6gXk4VfHaCZ6Am8XqzOTROGHHLza6YWeEIqL3tg4ens1hkcOcLtaxLZap0xowCSZMzkgraKRQb+VDykkLxZSaKzWLvzziv6LxX6oQLm0uExD1V4vTR3emdZoGB5ic7Uuu2TPfzRkNiFUEGtTUsR5mUGGKVdFjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aiAdeu7b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aiAdeu7b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE91C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789819833;
	bh=ZYTZ7ZNLUvGj/kzUl9l8YAmSp6bl5pHVuMjXZoKx9AE=;
	h=To:Subject:From:Date:From;
	b=aiAdeu7byDyFNWv6htiOWlm26o/K162ryj+5bSyk39ZG2bjnPpUJ2tKRSK0RQhx4T
	 4Ex4C14x6Z8LrDzRxA3uQPgFop/grbPtXtVKa5FMycP7EDoGCw/ejQJX1m4Yevj8YD
	 i5aawPsTYTNQfzCHEw4YeK1udYU586PNxsb7z8LsVulV2FSpTTJbT+anq1/hiZJgjh
	 zU7JKd60QVT+N1FxsjbjcCTjCZFbvx22rMOvmrvW7rX2r4QTjucGAufXqCRSONHisS
	 dDxiK6Kfpln6elZLuOcCf4w5aIfXBZ5N+5Bp1Bj2meskYXJpH0axX3sk/zSVwLGNi6
	 X19jykjSZrtTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB9AC982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178981983369.5743.11741798852145044460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31d44119cd446fbe5e448dd66f946ba7fd0cb9a9fdabeaceefb7280ba47e0ffb
Date: Sat, 19 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789819833
