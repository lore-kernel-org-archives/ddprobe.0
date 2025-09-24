Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0C12D9EF3
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758707993; cv=none; b=lep4doq/DT5R4wsMoVALc9ovAqlB8lxS83xCL38r1ACawIy/Q+wgpn1S7AFB3FI/knUU4EILvwBeRZN0og8jKMIeEfxVYaSYopUgpZCTOePUDRZ6Dm4xBSNqLFHcQJtNAX8lwGrvDmK86nm7vzAKPKn6PBSBUg5LhFcE0Ky8ayQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758707993; c=relaxed/simple;
	bh=7gVSGO6UqvNO2obN4df8Uz5xn6ldGKUngCDFodFSI5E=;
	h=To:Subject:From:Message-Id:Date; b=F8XEZyTArrXqE+cFcj2xoflrUn0prLyqtY06SjTXaAzskSxcyyulv6fym/+M0vKK62AHPWxRAc8AVmfrJK0eFxaRdCpuFbvcy7/8Ron03R70HBoOV2AhrPAP7CzbcK02u9Nx39CKMysTVmszhHMBI3eNzliKsIR5I1LxAxSmq1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZYGL5lTt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZYGL5lTt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C67CC116C6
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758707993;
	bh=7gVSGO6UqvNO2obN4df8Uz5xn6ldGKUngCDFodFSI5E=;
	h=To:Subject:From:Date:From;
	b=ZYGL5lTttZ1Qk5hwacdCRSrvN4QTouCHMwYqxLP4Abcd3p2vBHEOCXg0ikRgM0rAj
	 pQiiZlKRHOqJcO5Syqsx2zk6ba3Lvauc/8WrYNI/90ET4SRv9yNzam/97ghPtw7sFC
	 lkPph2AufRbTHQAjt6NfsJk4YCfDfr8lkuNGrMUQ63n0O5sjh/c85NgxWA3Sxsfj97
	 qoFsEbksLYqllBI66BtHgIE4Ld1I1MkCWVLfuncS5Z3rcT9oPa97Aodm/iq4nSHz/Y
	 5I9E4lTm/ku3bo1SK8Y20g/iLohTgr+J0NOHizP57GyAPZh0A8uuFTtkxP0gYiNl/u
	 LPYynWKjY7sDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91023CAC5B0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175870799358.5577.7761850981747317731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffc7dc8b921e1c815b2d20d5a208b9193ae044e06590587c6da500db5bbbed78
Date: Wed, 24 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758707993
