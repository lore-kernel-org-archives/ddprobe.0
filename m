Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467163321DE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768880634; cv=none; b=mGP5VnNmAB49b3jHFCCA7TVDF1Bf7arDOWJq0w5qjMT/c+NAytwB2bHEluRPLIE8x5e3IEgQuJmqMb2jn05fpBI91xTeXI75MqH1O5m0MWqH0goodXr/qmvxeIE7GT4pBGLanLOLZbyJyjBoRZVJ2gFBtAwQRvjySjVbfxwlaiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768880634; c=relaxed/simple;
	bh=KWw5oewqut7E2412lK3ud4ohB8sC5iSZfIjnUAEahcY=;
	h=To:Subject:From:Message-Id:Date; b=QB7bCCjvNlxqzGqd98//kg13R3o1vCRlRq8CHy8phSap2YUipMkOx5IMjfJa5DFEyd1l3Mdlufs/xVTkJWoh/qJRSXAlDjqDj99KqVLBSsfLizff6IkqDtg1mNjKQ8+3p3DRylov1WtLmSCkKuRZKSMky4PUOsyeYaurVeMau7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k99UWRMp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k99UWRMp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FB1C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768880633;
	bh=KWw5oewqut7E2412lK3ud4ohB8sC5iSZfIjnUAEahcY=;
	h=To:Subject:From:Date:From;
	b=k99UWRMpWSKLWHu20o0PakiEQknPjOhwrX01HCPWRTXI03m261xU6qXQt2BQuQbNv
	 vKyjrTfHY8Yl3bd2jdb46CBcFr6EM8wBaPAVAAj5OtgVA4HB1S/tILcF4t3TYZuEPF
	 4uBrImC5DiVr8mnmENJDkGGDfbhW0LRPcWYPHg/6Kkyjql3yN01AXHUHil1nVdHqrO
	 Am8lFbnTXQWO76elsfouGO18Ae733+PF4t7sdEy4UKRHuoL2fgzMuYPdKGLs+Rmqle
	 FKE1b337Dyvi/E8Xr6FOntEXqSaJURYkeV8YoEm6Jvpcy7PHoeLO4Oq4NUxprz8aUj
	 3YKid1GN4uRAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95138D2ED11
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176888063357.29935.6901895470859768105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 909cd16d998170c7c3b6c6f8c850c1ff79ce61feb8858e4a47ab94679840da47
Date: Tue, 20 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768880633
