Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2939F1C5F14
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757168994; cv=none; b=CuIoFeetYyQWUGJ7WpGs4z6Pn9Ngczcy9qjumSlarEGD+HKSZOUFHnUNfzTCRyOtNMZSA2AepisRm8rD+rVo/GfzPerofVct6hb/Lz+F5mgEscnIewcY4EbFnhbx54839W3bZU5WArAiJkmEcIKzoSvAQQAAS1ww7oJchs8bfQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757168994; c=relaxed/simple;
	bh=CoL37nSLy8xaOUksK6f4Il8XF/gVEmC3lveUQKgMbo0=;
	h=To:Subject:From:Message-Id:Date; b=iBKs+sCXIM9qTnjK++A4GQvekp/M23A3v2tGLLYZ/5DQsBbUB5wxD5alZsK+AqbF5xXsJOI/JxKFH2EiGO8yhfE3sGpzpP/KkxjPz9oK3kjnLMfhgG7wSZ4UQaOc2Wy75lhFEj2DRrI55wQoCIGGILQetLFJN+1ERHEc56pNH0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZgUQg5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZgUQg5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6532C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757168993;
	bh=CoL37nSLy8xaOUksK6f4Il8XF/gVEmC3lveUQKgMbo0=;
	h=To:Subject:From:Date:From;
	b=DZgUQg5iFPCLhcJyzcGXz6n+qyQ7U8NHoGU9hy4RHjeFbmnRsCndtLRouBKdjcI2/
	 znmz7oMQ3R1x1Meapy8jXzgeEaYh2MNDyGyMqJ3M7jintSF2uln3rtB3stN6c7p5e7
	 dmkVhG34jGHJIKDEVl8IN28P3USbX8CskoRyK1C7zKCYmd0kmq2pJHLQQ3a8NNM8jZ
	 YlySApJdgBBMb0nyFO1egwK6AxfkJ/pdoEy/eeUnyZhgeIM5bk1Ixab+oB+CnDWwxo
	 oxpHgK4TzvZz8oIE2wt+RxsfRh0GiqVOR1jj+RUuTgzu6iS648Mjc7B83APs6/g/qx
	 U38md5yxf0VfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DEBCA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175716899357.1132.16238066958722230271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed0ce4fad4a2f4dbeab702ad55a08660e2ab88782c9cbf4f922832a2f2531df6
Date: Sat, 06 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757168993
