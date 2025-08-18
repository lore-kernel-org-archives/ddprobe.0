Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3242D24B6
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755539994; cv=none; b=tdV38C3/h6G2fZslVUGQj4XcWsz4vA5sL0VsnxUbZCemp6CgpRk2HidZT5lifR0ASpLsVWzbO/M52Ierxv1Dqgy+gl/EXHfx/cZYllTQaIixOz5W07ihR85M6mwpQoUaQPE1k4UZvVOH2bPXXEhoKUuyrKQ8vKGc7mMMu409LiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755539994; c=relaxed/simple;
	bh=IflLqlquwpIWiBkvwxHIguNRlKkt3P0x4SEghGnFVk4=;
	h=To:Subject:From:Message-Id:Date; b=At+J2HpKJ5nheKHqbo+RLgUcx7aU9iKF6LQ+w+SliP1vuGkfgXRUF+DP+uXf48Tg73eXGVuR4vTnbEY0r4AWgli+u0qTaVmitSv0c4TihlvJaEnD5r4cCsV/f+hMmR8T9deeLJoruOSGvACQWZjfekzh16mcIMkJP51halGPzew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgbY5la+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgbY5la+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C404C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755539993;
	bh=IflLqlquwpIWiBkvwxHIguNRlKkt3P0x4SEghGnFVk4=;
	h=To:Subject:From:Date:From;
	b=mgbY5la+BtPKZMXvAFM600Wu8zdaB+PhxF2TmXL2/RM3wAqENtX0wpc73Taqq/+cO
	 DPAdh4JTFgcdpLFCCrEDa2vBU0qjAtnSm9eIU3LE8jZaTr+WVGwaBJevGbdgNWtJU7
	 bscSYNIKcoZQkRxVzHEAryHgq6UPZXXpqop2tJRG9LLFSqsRsPcf4TmHl/TEc5ZYtD
	 9QYCFkUJNCO+PQodKy1DRTa+Bp7irs6731DYmSmqFMokxu3aRDqjDJENdxJ3UQbaqJ
	 CC0uNizvxEwzEZQbwrM9zc7kGUTD36CBY00XiIAv2zhcW0HqRzS1AW5Zn0KVAeI7z1
	 WyIsdKMwuJwxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9BACA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175553999357.3056.12083964068549028905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6356aa133df9236f02bb949f5da3417565ccf8f2c686a577c5a177aec6e52737
Date: Mon, 18 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755539993
