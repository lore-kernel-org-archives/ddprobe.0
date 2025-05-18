Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CD1145FE8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747537794; cv=none; b=ttf8OWE2Rp0VVpQymsKH1TLqMN81ag8z84A/Tto++vTrJnZgZgmYBmNaP6fAhUfnkm8BvLrpQ58zOxTuQsyOfu6lFugvd+uZvETmmuHAY3OsfxPl+n7VZklj4AquH3iiBB9DqmvP7/lD8dVS0psgbERFA4PcpETnjbheg8YMAtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747537794; c=relaxed/simple;
	bh=pBPToFb6660QQHgoVvRG5Ec9ZtpGxtzxDCZ7Zdt1soE=;
	h=To:Subject:From:Message-Id:Date; b=pDYksFG59ozwOg5dkV2kLvjpNTQVmI8sEm2KfRpvE3VPXSc6OvQEbKZi1zSZdd4TsA9ECr6FS/fsiF3SLKjkTbzLwoO+EZhxUuZ0572H+l6lMk4LSJfR04waroAjEn/qpW1SFqs624SLwR+mJpEKAEcom4rTB7x7KN/bBbSqnPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=su6mf4PK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="su6mf4PK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A129FC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747537793;
	bh=pBPToFb6660QQHgoVvRG5Ec9ZtpGxtzxDCZ7Zdt1soE=;
	h=To:Subject:From:Date:From;
	b=su6mf4PKaZDFX9TXvqkP8DI8+3KhOjAt2lluGq2FJsaMzd/K+O/vhqi74wtbr5puB
	 iQ43pHtFwalYfInjddnHKPdnSR0Y/3Hlt5fl+QMpLIbt2AG3h2J4DxVSIhx5qtNuoo
	 NR1d5edbSVbDn3gJvkLHMKfqxz5gHMAMPYb5g39gc3BurSqS1ukeiG/bXys760+iGG
	 JVzT3z7rCwsZzLugLI7yfyswwNtaY9HDR29HxQmkpRBz4TusfkNX+XISIINyYop3GT
	 s55FwdKHUMT3rYyarvtandudbM0/DFF6dzDbCC0QYE0ChoeIRAaTeol3DrqlM7mxcB
	 wII3paN9DYgMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E600C2D0CD
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174753779357.21081.1674319293403323072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5133bee2f660fe95de7bbc44e81090d320d7798b3c7c5542e6e31c5838891b7
Date: Sun, 18 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747537793
