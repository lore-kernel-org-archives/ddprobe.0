Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A83D3E4C7D
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 11:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781522794; cv=none; b=h1CgHvQrAb7nQIlJ0aFagHdb6UTnpBQ49iEevNN1Ddt/MjahlLMAca7xrKmQeS4TRS2xQyPfE1WcEhiuUPIzDge1Dj+Sqw5jECgRqsGSlZ48KeD+i1P30BiEK8vBLMDltAlfcXUJ94wmMomOAC0yJVxFxb5PvYotGUm0LignyZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781522794; c=relaxed/simple;
	bh=Nhu1iPxMqjTypZYx2RwDpDtjDLNc1KBSYlZuVNeSXnc=;
	h=To:Subject:From:Message-Id:Date; b=CYi57y0C7YuivNXhqTmVsHxF+wpSOjwEUrsLY0ErZSzl2DzsiR2CjWFdgeLC2d907gUSS2ZoftdcmpBTwjzFT9/QcSkkG6O451CiOJ1ooFhmUX9H4AwkvlZl4sOiMhXHqDHSJ1B6E5xyH3mLKiOoXYKNwFGrr6Ufby3syTfbpXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLBfwoNd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLBfwoNd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FEBC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 11:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781522793;
	bh=Nhu1iPxMqjTypZYx2RwDpDtjDLNc1KBSYlZuVNeSXnc=;
	h=To:Subject:From:Date:From;
	b=WLBfwoNdI0J8Y9/C5nApCdqKz7HzlyYQ3djB5AxItLvVmMjYpMMDq3AMzJ7ctRLr5
	 2Wy5b9azsDCE9TExyvbUbDfAX5Hm6UFIsckwrFylDz5e7/suqnF1p9jQSlG0PhiR8X
	 L91eJ0T1SFYziXJEzLS22G2CcI2oFM9lOVPjDF7KkEmzsZMAbrnQX41IVpIW4Z7X1h
	 vte3VdDx/rrtX4rFh5buYafF8OsRykPIx8ZZF2MEgY4MGJanppATLYQyICJC9DCROv
	 u353TTqdYkO96IY6POJjmerzmhiFzg0jk8MMYPkY13cgP4fAW17Eg2oRmj8gxNIwjC
	 8o57Ku51oFaIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8740CD98DE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 11:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178152279374.9908.4302196581335862980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e650bacf3fcb2917d67afd0e01bc3280c8d87adbd0a49aee302c6f680419eeb1
Date: Mon, 15 Jun 2026 11:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781522793
