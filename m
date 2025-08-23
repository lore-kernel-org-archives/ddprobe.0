Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C280224AE6
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755992994; cv=none; b=nqVpwey4/z1Ic1SosNhxR21YGWtZYRC1j1BSfeKOsKAQfWUk9dxw/KMBlfZ31U9ckK2k08FFgF1ZIxotBRFOgbV9jgCtta62AO//gSeN+kr+CmqcSPqgbL+v/9X05/t9isyAYwRMQKnHoUFrzmS6/p2a2EZwvKGZql9f6HvCWAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755992994; c=relaxed/simple;
	bh=6M4EHi0lOGRjY1BCwuMbshXCznays3Qa8s2byItaaoI=;
	h=To:Subject:From:Message-Id:Date; b=i2PxiT7vtEX5i2sHMNAf8aBQWY9rGcuHOsd916q4xcShDkNscNwStQYKFl4OAfon8BcomOrfDAUQa3NZQD+F59UqOUFsMlAVdfvxWmcGU0VZ0siNMM3X1YtKeR6ORGtBIUIUB2nCheyT1uTp451HZTwCdN3TtvO336G8ztxJGX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBTdPnJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBTdPnJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D86C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755992993;
	bh=6M4EHi0lOGRjY1BCwuMbshXCznays3Qa8s2byItaaoI=;
	h=To:Subject:From:Date:From;
	b=RBTdPnJErjKeVrAERSNN0pLbJvRk7UEJf9MAorL2t6YtcRWKpJNsArasyjeUqce4c
	 5fewVvtynM2eNYKcaHe4IFl6G8lcT1aZTR+DHWJ2ZcdirZ99++B2M88+Op0EXVStn9
	 tc4VxI352Eq5mxqHNApwJqG+PbT48w+qSx4T0qrdpGsz1cqnPUoSDe+/9iEjuOME3+
	 5lImKUH6Q6iB2XcbwUb+2XImW2L/hg0LTtJZhcTAAnZQFF38V8cGkiWexJN2WHikGd
	 9QXlY7CV5GSw+nI+hVMB1eC7QLuLDEuNX7OaAf0C2/RPcKH3h3sgF4A4QQgrQFq0DW
	 d3xIqb5dyLQ2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933E5CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175599299358.23362.2858180079760530736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cffa253a0abcb0690b82f14540a282cf47fa2e39bbf55962f2009b78f252288
Date: Sat, 23 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755992993
