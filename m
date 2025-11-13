Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396802FA0C4
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763050794; cv=none; b=n5IyUTwG3HwINljH30qGCGFMz1cV3n3DZSOC3vIF3i1UxZIx0YzgNe9opBtM5M8m9q0eZYMGEkSloBDKocmLHssK5af9OrgSStHLSP+Jw5Mt95as7k+4DUMGCIbgMhUaOLEtsxaoVqi8z68bYLRDjENyw/808IbEucIE+jzqsEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763050794; c=relaxed/simple;
	bh=21m6nxIz+zGiSCMPTXq7GghByGpxuWpUxJhtiHNt2kc=;
	h=To:Subject:From:Message-Id:Date; b=exRq8Oftji9jwKJ5+uwCSi2iMnA+fay7n7BPKV897m76k3acaW8p1gkGi+MU9BpPIas2dmlhK9UHPTve0Fx3RmYx/PMXiThRBZDfMGeb/KqAI3LZy/ICPTeMFgmAbzs+/rVFjQWVGyHZ73/6HgGHW8JVZDhBFoa7ddGvJqNLW24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EoX4ao5H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EoX4ao5H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB42C116D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763050793;
	bh=21m6nxIz+zGiSCMPTXq7GghByGpxuWpUxJhtiHNt2kc=;
	h=To:Subject:From:Date:From;
	b=EoX4ao5H9fU+RWkcN9bDPKC55Ao+k6A/9M/auNuTnDUxCbw0Qsi87Ro25j8LUOhZK
	 sh0c6e7VAdBChKZriwLDiKjol3PZZ1AjXcXZmEsME05hTuI9oCuCYUE2YQaCfoAOGk
	 O1Lgo6VJ14LWDc19HMc/KIG6/K1baGlGusa+u+1zIgOdbn9cqksbI7racZBgfdXnFq
	 LNxYdAcmTQMryRI0znKULtuMKa4DWahT0zSIwFs4kEZ3GGkBNF81OCv2gdFxb/xD4+
	 OsG7ufbn4LTFN+Hp6ccAiVFk7J2aCvxhYbM/ax3b0ocVrzE52RF+/6htQBrQvObDXr
	 fXvz6o0tOv3/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A4FCD8C96
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176305079359.12795.14511821502381736266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c863801224eac2001e20ddf2c004239ef388e49d3e473e64fbbf6aec3205198d
Date: Thu, 13 Nov 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763050793
