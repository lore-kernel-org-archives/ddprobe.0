Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291A7259498
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788470435; cv=none; b=u+s4Kv/wI/PstuADttq9MJ2aAmgDv+O2DZGNTmnAOM1zkkeLYIhETsLWH1Cjfk9z3rWVumDK2VoKJK9QW6StPmdIO2OERumA+SnKHwk6hPKjoSf9QXwdBH/ssdt8AT36alFQGJZFKx+zhTWf80tABf2+XprLEQ0z3KOWENxJNWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788470435; c=relaxed/simple;
	bh=38gkuKFZt66m8k/UQgs7cj96NqYWyknQ+8MmG1LIzUY=;
	h=To:Subject:From:Message-Id:Date; b=Aq61SbUs0zN6iehVkaN9UKYn8N8tCtS6vtgybbAaMMsdtODh+Ae7kUH6bPb7FwbvvJyDTsLb5z8xgQVxMus6FXQqdsOq12E7Yu/49oyjp3A5m7JDUy27D0aN0NLXVJQFnADAo/wf621hjqxjpFbAQ0lc+yZzdzTMRFeo2SD+K2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=flnAzL4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="flnAzL4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD82CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788470433;
	bh=38gkuKFZt66m8k/UQgs7cj96NqYWyknQ+8MmG1LIzUY=;
	h=To:Subject:From:Date:From;
	b=flnAzL4iVvBnFLJqqPCOgIT84yGSNamUPaUN4BB64MMEJ9C/zeQA7hpOlCw9Uupsu
	 icDvx33qNiDBm2E5BP+XcP2t675Kef5PsTlSY1B6KSg4kaahL8b1OxfIklM+a21MqZ
	 CI0puLeJJ42fY8E4Qa5zr318/DJFhuhD+VarPSuXIW5ttmbYFt+0wGSvui+MdKJyU0
	 oUnSLpBu4PuePb73fhXtiBcz3Qu2mRMdsqkSIdraaUJ7qAaBc+J4SDyJ8bmMhrkCJF
	 qX1KWXCJBdQ6kLDCAYGoeRHzmMLc57eH0dGaUyajdIThQVCcF4ez69jksaK7/RtIBk
	 pPec/lnI65J1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFAFC61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178847043369.32187.8348907407664804699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28e0d0a4d15439a5c93debecf2a2d72dddac3d9b133ad2c18c3093f4331c90e1
Date: Thu, 03 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788470433
