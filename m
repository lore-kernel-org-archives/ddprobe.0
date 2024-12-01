Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF3401B6D07
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733057153; cv=none; b=EWhVWfk9Q/LGUco/nO+JIXFBc9GtVS1mR3Dw8sJNUF4hdSo9wLAMGbGDxLDAjhEUiQsKO4H7oyh79iAa/KrhFGJVPVDwZ5UpMXEwKbAVdrCot/isrs4+TXyXWJQUsSS/YJhINa9oI0vhTZjPUBCkp2NG20I2f1wEyuXxcfzcZ6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733057153; c=relaxed/simple;
	bh=1I/YfUujkazdqJ7rtsEByhi3QZC61jTsXtI8hRhgmls=;
	h=To:Subject:From:Message-Id:Date; b=Wk5Mwd1QMy2A1PzCqsAwHKEkIow5u9Xb1OFgbObVCYT3G/LW/d/1gtDObsEfD2VUYkqn8WjXBgnJWZgCpVqMy1u0lIESGlG/AJRbH3Cv612xHpgcEoqhQRYTHqwaFLO0RChUOfkbDygPUueS4Zfp3rS3QmnF8aLirwA4ojjy7ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bj2ll7Q1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bj2ll7Q1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE55BC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733057153;
	bh=1I/YfUujkazdqJ7rtsEByhi3QZC61jTsXtI8hRhgmls=;
	h=To:Subject:From:Date:From;
	b=Bj2ll7Q1hBG8rF2T4wzOJlco4jZC70lEtSqvEgqXCD8tVKamZj4bY2CEi7ZPURIY1
	 TjhOKHtgdWKMKnsk3Da7zCbRLTl+Goh9oZQsPIrMwEDQS/8hpbxkTHhIptJXvARPyw
	 QfX/rUhZ84lNKG9hNtYAyVH0iCPmslakrghBDjuTzRN6jkZumBF7oaqimG5PDIhT0k
	 w1hMu1cTJ+Nl9WKCB/ET+bbOLKPruj0ZxfqAkFnOPcGHlywDaMdSAWCMc0EVJHGRyg
	 aCuvHkJ9ZyJVvFOTW4Rquyxg1Jn+jKrhMfGo9zEEh+snqjcqWc+8L62wtnAimGxLBp
	 qPgrGmVGfDYWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965A3D4976C
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173305715358.23160.5709773053989424134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83ceeb2b9211643e4d85359124aa924e471d3cb0950983e28c54c5ce184240fb
Date: Sun, 01 Dec 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733057153
