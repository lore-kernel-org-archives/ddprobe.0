Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9881A5B84
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769977434; cv=none; b=m3ZZJ3HiihJbj2NmiYntZAub4Q+N2iT2hKoGdk88kmnSk6vD3dMqGuh40vRFSNlkOuP6iMt7O0d49ek9pY1xDJRKL9NJZGa+pkYxl+xvkxTnZJdenlS2U4ITaQPciCacxaerPk2K//1VdYY82P812XuMy4VRfIeMHlm+bla1d3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769977434; c=relaxed/simple;
	bh=aFmr+OwDsor7NmOwvFepMa0qUciR8ZiRlJSrjabMITg=;
	h=To:Subject:From:Message-Id:Date; b=XZ4YWW3ozaMp0qDqNzA3afI9nl0oetZ08PdxH5uRjyD7ydmMir/r0Zu7Ygt5OpC+k5qSPoLEQ8Gfksb3VHPIATogC2Sjnry+JUepvHp5MUEuOEujhEQJgGsYi/7k31Ceu89+/Ls6acZlay2R9upjIF9NrzNFWjGhModXaSWd1uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CDxAnhks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CDxAnhks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA29BC116D0
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769977433;
	bh=aFmr+OwDsor7NmOwvFepMa0qUciR8ZiRlJSrjabMITg=;
	h=To:Subject:From:Date:From;
	b=CDxAnhksVYfkGylph6Kee0EPIyDoQr6ceZjUYBvKix5v+NzD3sHrmoM8ziup+2cnD
	 ayIbi3cS2IDEZ165h9SXmarTpIqOoVu1Qlmj3ZGKhFJfdJK0M2FoN7ppavWGmoVQGt
	 DuzCdtyuKykt1N5tV11NslsiNXxQ4Ra1zg+CDqZR/j4lSUnrQkznBHNKna3zdQpwwG
	 OxGJcn9ruHOKjSsiRh+fWSCs3EqvMCZ6MO1jCMq6gI7A8Q6OGVYFoaPsSlC55/Mtpv
	 07l0QHB2RmhgTx5XtD42NsbPzW0leytrzMXu2J+n76qokdP5TAG0Gv2V2nJ4rL70Nf
	 1s2F/YWH1QwmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F2ECE6529D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176997743362.30203.3274305273444982982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30d3079157e62dbdc2ab6c1956ee7ad1d071410f0136808a0d9ad14b9180fd73
Date: Sun, 01 Feb 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769977433
