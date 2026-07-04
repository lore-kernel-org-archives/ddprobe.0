Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B901EB5E3
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 21:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783199314; cv=none; b=nIqlVMrChCSuneb+zJPFOn4LRVUhmhGTdkpwcoC4mJCP0tLIUKDWINoZjbAt9/KsjeZIM3Q+5lCZlT8Dj3EO1ITveGI67bJSoWjklnhfp7n796lmtvOdDrAw4H/Wo6UeLbFdqKaLYwndeGC4SJvIogtr2NbE7ZFN/2NAALnYNps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783199314; c=relaxed/simple;
	bh=C334TLPfBzsbqWhZifvCQtWUFc78ms1vsTxDysL7ktE=;
	h=To:Subject:From:Message-Id:Date; b=T2mijdPt56empb8k2jLqiOtaD/CMevV3MDyTq6A8GR71btBWQhklFmHiebcvyTeSMKUQBqlY0v8duL/fGevbAeClwnxwb/1v9p0UPmoKMr/tMMgf3qg9FPPCE+MA4u9Z9Ob4bUYYkvrr2D0H3kNkWsfmz1z31MCfNozUO7ytzww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DK/bsCOJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DK/bsCOJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB20C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 21:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783199313;
	bh=C334TLPfBzsbqWhZifvCQtWUFc78ms1vsTxDysL7ktE=;
	h=To:Subject:From:Date:From;
	b=DK/bsCOJKLhHKCXUcE29vkuT1/koallgjAb2zPERloLqKnpM/olWfJOfhLgR4Bftd
	 KxTOzftuRtgK/2uW6pRE406mVMpfjlIBZ5X/Y1uUoX/i+CMGtIcj9RpwXbLcMYS/p9
	 WqECwtdUrMxcli+4RQ2NPpLaW8Yn2an9kZ9UTONw4M78nkzIFSjWdByK+24+ENrUW3
	 2Hbg5C8SG2i/yYi6mu78oobCv6y3FqyryUE62BLz/Q5ykb49Gm4CIx6OXhqcK15/q2
	 ynR8hhffZ61dnNibhIctFSuq2vWqhrT7gY3ygVpxm6tp3OwuCLNTC5kZoa9jAMwCy6
	 FabcN7YygE6iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC44C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 21:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178319931368.5533.10867337693065142354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c92e2713ebc28de9545a27c79dd893d3e18d53cbc9551cc6bb391bf49cf08cb7
Date: Sat, 04 Jul 2026 21:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783199313
