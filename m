Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED669339B4E
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 17:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769103835; cv=none; b=rREXGdzYRLQ9bgfUpiL4Qu4NWQOthfyaVM69BvsXOLKvgbvq+tBux6c8IowlDSHU80uIEPsAlPgiktp8KHrDZelVlCPAAbAhnEHU3Qb6PPp840OYEcAmyHJ9HfI/+U8iWOySDMDbGRl6VOYN6bBojiOQgQwReFp7RKeL2y/v/RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769103835; c=relaxed/simple;
	bh=F4lO2PzTvTHcJi661UoPPq/Co503x3pxlvwmw5dH4p4=;
	h=To:Subject:From:Message-Id:Date; b=ShkUmXcgLSQeUTjU7o2VrzM7F2snend7zTxNGtikHImW0ya3A6iQOpGygsrEIBE2+GL0gBF0BapqdPwD+RS1Q+Tpb/wn1MJFVqD9g2TpBzo2adiTl63eJLtrA7BFWeIX2pfoNj/pTcxDpA0BCae2EU6D+JPvYfLvUR3wqucOvss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTBvv2r9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTBvv2r9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0775C116D0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769103833;
	bh=F4lO2PzTvTHcJi661UoPPq/Co503x3pxlvwmw5dH4p4=;
	h=To:Subject:From:Date:From;
	b=JTBvv2r9tPGeA219ubcbIjiZob2OO9i0+bENEdfgR/xOTZslxbVvuVjokcR08LnvN
	 k1WtU3JR7u5DLX6yFcgsl5KRCM5p55ZRFk29RXwrSITouq9WWCUSIK3lktLV9moavx
	 e3f4Ua1TLYUx7aiyp2f92XmIuVJYxg8VeQ5oMg+HOWwin9aMI2sVx/KN0a8Qk53KGv
	 Fd5Hc/y79eeK9PQxJohL5PwgHqO/kK/DdRzK7KyzKqudVTxzcnHVHs2i3Xm2IBjPoW
	 8pXeZGz2fcEb+2kL2ElmXNcVU2kGZwq9mDNNb2ZnPW6HQCUIWuLZ/B83NOx6P1OJVc
	 onQU0ElE0VugQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A2ED46952
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176910383358.973.6430023226427099472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b167a66e5018c2aa8f52db7fdf439f2cbe4ebb69d498c0cec8669677725c25ca
Date: Thu, 22 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769103833
