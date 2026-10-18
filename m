Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C52335E1B0
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792326634; cv=none; b=ceHhvBcDu6WkCSU4Sf0CKT62Qym+rXpy8n6Yug1AEZpEikbMqfQ2N9i2LECyAtMP0YJmx0rkeXG9KdEpgAwMW8vPrdrJxbjdkOwiSn9zrwjuPq5PlFO+btd2An28NxQrYFiK0f0Kmp5PdX6oNzZK4SHRIjEUOnh+LQqDBdw/PLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792326634; c=relaxed/simple;
	bh=i9jbQOUn/uzYtr9ySGOXs+AURPiIsV3eLs7g88Te1s4=;
	h=To:Subject:From:Message-Id:Date; b=HrdO/tZczU3zjNLotgufBtLfCMmYDS+GequeYZZNO+/X1rbkrAh9PJIzNIdPOB3XNYb6vmrVebnvonhsgEM1z0v4fjvxhOs4igdHbeJlRd5TjtibUlF/OG1TaUpeMBLr96+NrGpGYiVXQqrpORgSrHRqkrMc0HgZUXhDZmKJLrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pU1MoACt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pU1MoACt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3439C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792326633;
	bh=i9jbQOUn/uzYtr9ySGOXs+AURPiIsV3eLs7g88Te1s4=;
	h=To:Subject:From:Date:From;
	b=pU1MoACtCYtp5o0eTMUQkiLb2QcfAQEChzwlcYrFhY/TXjCnvrcHulsmF03AtTjX8
	 mesClQRZFex9p2sQuyb2FeL74NThWZJuqm4aXdpkaK1lbtZ3sCqr6rR0a2jrF4Hz0F
	 Yw6hDoz7lSUCokgTJBo5i32bOE7r9HxBFKEEW2NJMI0A6PItL/0vdach/qtBt26VHB
	 lTeYC5SF5cHJXoUzrmktw/3zvB0SrslPbAl5b5biUciZ2SO88Oca49o7fJEXD8kn+C
	 sS3yvHgmoNE46+h03ObXvnYMhlGncF7inDsKICWbe4ZWtw7lYEy4k3vOEWJzPwEEwr
	 4Hh/XBSrB9iAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FD9CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179232663368.13435.6949425661516158489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 531b58ef312ce5d362a1f24a9b4f84ff8eca9b93b93ead2c129a396ca0ff3aa3
Date: Sun, 18 Oct 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792326633
