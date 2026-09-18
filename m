Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF8C358372
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 17:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789752635; cv=none; b=gc+rntuLEwWwny2B47vfLHX1cbomhxkk/A+2w1sCYdjmpo/LJq+nq3s8M4IFxIQbofq5F5Ybdny0hGXQGmEsJ8LzUi4v/RlbOBJNANX/znKBObCHvJ2XEmBxRxR9mdAo28AzeuHc9VWBT/VfHQtEB5ac5apQFkrDuGJ6B+HqEHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789752635; c=relaxed/simple;
	bh=xgEDPcCYBFxZ6aiDEHDULyJ++V5z5ODDSvLPiy17rfA=;
	h=To:Subject:From:Message-Id:Date; b=SC/FNd2VL0o0xMJtk07/VhtG9X7/xtybSmGZs2vXujnSHbDkY2WblDP37u/JE33IfKTBgI1hiYmNLeS/pnURIuYBXN0Vyz+A5/kUWxhJYQ8W9oQRgPwBFAW+kSnirzoUElMss1EKNeSX603XvAHOqzrBQxg39mbewvHX7ct5ddo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2RK92K5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2RK92K5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5197C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789752633;
	bh=xgEDPcCYBFxZ6aiDEHDULyJ++V5z5ODDSvLPiy17rfA=;
	h=To:Subject:From:Date:From;
	b=N2RK92K5p0OhRwGhp2+xQ1aTznltw3F7zdQjJfVSPt/n88XuDmJjRZK1AmTodIrQt
	 df6JL8UJKM/UOsg0UXAHABRv9h0zSDEcymtm8w2HW0XlfZR2+ASxp7dSjf6IQhI0Nf
	 o7GPAX81VK7JHHGc5RN1TwNFCIcnSC0RBm36tOt0J6OSmQIP367WGd3aXBS3TLod8q
	 D0DJSs+MEvKVwKhCwYPCSJnIq6aH47p+NYqFcfc1X5YmJBXCPwXiyBrUfELZDt7h15
	 h7Pz0OnqUduqQ32szfI8ftvxjudYkyyJvmMNXFObhegU5q+BCjziMW6xrWdkAv8nix
	 CjcsUuYpZuWLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B241CC982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178975263369.21449.13537952342086988898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c55869445ec3b7b9cc589f3ee54f206a9d9937fc86cb4fcdfd31f2ac73f59f94
Date: Fri, 18 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789752633
