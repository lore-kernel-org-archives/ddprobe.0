Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD60155345
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737321954; cv=none; b=m2XC2bE5Egl7JbSsagtVeyWi40hojpV9s/aMT6RLQzKrb0Q3TvJKJV4YsibdVBM13quebCnqGDNKdUg60L3t2Z7/g9WLieEuEBm4eVDoBYuGORNZ/T8m1d0mcHIpgdj4ZLRHaYA5fF5nf/s7DoOK1yiXH2c9B8AiXHq1SKeKjXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737321954; c=relaxed/simple;
	bh=5gGbz5/ywLBdIGr7kCHMbNPdd/R5w0FOwRNz+Hs0srM=;
	h=To:Subject:From:Message-Id:Date; b=p+7zdQQWPHhOMU1WevZYslIA816CM1DNWFnYmf7okTfp3MSZCPEgqoVBQOKPsRqaLwsziqY/4qOssr0WVH30ZVgbLvMzuWctsnWbz9RttfiMPuccO8gdPj0hpZ/N06Xfn9/xIZAaVJ8CJTTv89nvnGdB8nfyCFAp5wiVGLuEjeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlWYmj1K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlWYmj1K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BADF4C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737321953;
	bh=5gGbz5/ywLBdIGr7kCHMbNPdd/R5w0FOwRNz+Hs0srM=;
	h=To:Subject:From:Date:From;
	b=rlWYmj1K7XPwJ5UkwcZhmz7F4r4OWtadin3JGXz29ZkHoAkR2d/GDpDaqo6cAQhoM
	 /MbgevWgUUqpGbEvuiRsOLjrTM6nuts4TSKSAdk9j4d/A+tXjzP3wqo1Q5Q9WT0TL7
	 t0SCrG5HMI5UY15lzvyfSAPUSTe3Xvlr6Zmy6nRqF4/+AqOOtAgOYIJym/Z+NlSwRq
	 ftefcuS1xw1qdLvRohKQeV4bAsS85qLrdoXZ91RCxe8dE3LPdt5Sj9qlxZa4g2oVxA
	 d5/lU0Tf7bSpQ16lYCWd2yCIsKaebslsYY4sjcfh6/Ia0mckw8QQ4SfFUvYVBtoBlc
	 e+WuhojVBuQPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A41D4C02187
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173732195361.28160.10147209299705324301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a76b9c3e3b128a2e558b824c0bc8b9c6e82c6b4d1361ade168e15a1914635ac
Date: Sun, 19 Jan 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737321953
