Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6962581
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750574995; cv=none; b=WF5EVBuJIy1qbAF6EZ7fM0r1GAgFIzwkENOGwaz7suKVefVPU9/HBnMqirswm1pvY2xsm6D5VSeQjaT9FJ8QmdL9cVGK5N7cdo6+swWLT9lpLvjX/vrwvXewYKxwCM+6q17YZat7A3/jfcR8ARSS/8DsqekCuyH42Dh7OrOz/ZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750574995; c=relaxed/simple;
	bh=WpvR6E+y3wrODCxWLW/dDDBOdDkU9TTzlXmDkWpGmWw=;
	h=To:Subject:From:Message-Id:Date; b=ekx/enDz6IpntB/AgdEcKdCNpTGLESUMovBrf22ixT/dFbPjVx93u6xFeXFo8imLQ8h2hK+3mTp1OrSyc+gjzlXkLKILI2vIKxGxb2vVooxax69DK2SLEA3coMafFxMH5JlqswAiDisgCSIqbEFT0EeFbROryveFAH1iycmcxao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnFDkE9Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZnFDkE9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47B9C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750574993;
	bh=WpvR6E+y3wrODCxWLW/dDDBOdDkU9TTzlXmDkWpGmWw=;
	h=To:Subject:From:Date:From;
	b=ZnFDkE9QYIADoV5VqMgNX0CNKFQhr/FZxzDhBh/C2BTQ0fsqhL8lPennqiS5Ju/V6
	 6SxW0uJ1U7HoNe2zGgEqXIOlTGUSfdxFolDeKNNhO4LI1/aBlVlVSyj02JzgT4Kk2x
	 hBvQ7RmtU+J4Y1vbhTFd81N9guuwCc1troPXAC9j52/30H2fQENxhM+NhI+Y/9Lyxb
	 zxm8lDUF+DgHmSjGxiiF+b4MId6eC/fQ7M5OuDN5NisbcxJ8Jd3gM/Nk08k/vjIDME
	 yDEMHnK9Tbl6SqInD4QuqnVfY9v6D+UenITb80+t2bdc8smyzMOuYFIwdxhwPUoT2f
	 ucrpPGxIYEUbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A50C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175057499357.24128.14527649325729092580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 379bb25e921fb2c98511ddf9716ae1cb95704aeb8dc62d8ad65796a1f05ff564
Date: Sun, 22 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750574993
