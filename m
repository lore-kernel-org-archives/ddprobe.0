Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA252EFD89
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750191594; cv=none; b=K8Jn6LNEo1VRubGRrWl8/jQ4Nfj1glnhvjjykifWa+PmmoBu8TIZFkwvzGtGAQ+Y6vVDaiOJTgKZ0q1sL+YRo6eg1ROs90QHbi7LB488K8v8tEVyDzEcnvYa+IpyskNrhmCo2XWhzLyVTuTSTaq6ZwHgKSPHlwwAO9cfwgO3t90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750191594; c=relaxed/simple;
	bh=BRLNEwcG3MraEGieqlmxL+lcgNUlexpgHj5ZtCKpUWY=;
	h=To:Subject:From:Message-Id:Date; b=lLs8NrhS2QsFkleause7QB6Qw4T+yUZAmRj86w9/34rYbmkTxXhkDEW4UaL7ea8HSbuGco51PM6/2pde1HvtrGuhOXTbBTAxwo/Fjp7caIPnNTYFRYo0jY/KaCBii8mq9XEmG3BER6TE4in+1VQaUSuI5v61TamhcCsshTP+rqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tITgu1Nn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tITgu1Nn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86A7C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750191593;
	bh=BRLNEwcG3MraEGieqlmxL+lcgNUlexpgHj5ZtCKpUWY=;
	h=To:Subject:From:Date:From;
	b=tITgu1NnSdsUkRVssjsvn5z/e/T6/YNI2hcM1iot9hbMvocc1lUjAMJSWnUV2AN22
	 gwt7qCpYlNoalHONUreiIlgCVDmmjtvcKCmV6/JGTCvhmCMmebIz7CKBSbUGAOaw4C
	 RB/efeLuHoyUPYyjAPMogMP2XSBO/GYNtoc7Q8YubkZ36O0pEFiqrhXZdULuAeDG7g
	 6llwN2Wa4YVY2fq7KVyKFulfxyvMNON+BES0bdNLhOFm58ikTgHvfmeJjCN9xX1SpW
	 0oA2mp1BmIU1cHURzoDNx/G/M5rkFVXx5monsOnSoHWquqrrmtU/UmY0Odm2js+M7m
	 s05OagAyeDldw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BA8C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175019159358.7695.5104802665926731006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5227e7bcf518d611a1a8af5fb7e7a2aca91468d9d42f7bd7a813f270fe227c3
Date: Tue, 17 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750191593
