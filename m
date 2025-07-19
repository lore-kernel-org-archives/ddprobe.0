Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B16A21D3D9
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752917994; cv=none; b=txL9sRkyCBT8/R+dZR/D55mPcG8lK+qSonpEmeulloYUsR8buKp5doAGPdgLXUP+LwtayaNERbgvZ2VXr97e1RapHzkY1c0zY5VdI+EE+FJ0kGk7RjgfG2E6s48RgbfSk0DyDcn7lhVLbM7GaZ+XLWtGwQddSfXY2c0cGT6VUCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752917994; c=relaxed/simple;
	bh=Xa7ZeqaHan9MOMY7v8SmRrSiAPQ+s57KuxdNYeglYkY=;
	h=To:Subject:From:Message-Id:Date; b=kng9+6+14wrH6ockQ7Vdb5Gg1UPXJaQYN+6HTQwogsUYE92KzR4M4qmK6OydFX3gnYZawlovFzk8J6npPPm6i17ueVPlpckPbG5MJqL+s5OfpkbkOL72cUKUeonCtDL6w/5sMA8P9c636FX+dMpsFkdiez/fHutKwNTmeqt1cPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKqX3B/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKqX3B/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2D2C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752917993;
	bh=Xa7ZeqaHan9MOMY7v8SmRrSiAPQ+s57KuxdNYeglYkY=;
	h=To:Subject:From:Date:From;
	b=HKqX3B/hWhGvD95qWroYkCLaaDYxpGgRbGok1+Zc/8LbVvt1gJc5FyjfFZ8uBDAKE
	 Fe7ycSM2a6mXYTwIkpZqnjcBAWiTaRSs3soqxWtMQpyje2RUxLQBZ8ZSOkXdMKC0AO
	 zYxI/AlrJFIjvxH8SXPDk/4bF5Aidwv1b8lou9lU6vr0EeSfch7eiZwA/O3785X4Ev
	 ZZcMEjwm5ycJtSDF8KOK+s5jLdzPusfW8yLc8tEbus6s2HzREadQPOYt+XP/7lAvWd
	 dd0RDiF4j8BGAHeHhtMf/Y2vj1TTSLro2BZkpsf7k0cs0Ky38wQAjAh9vXbVjl7lcM
	 H9a4TiwfDsImw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E957C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175291799357.20314.5738503624152320950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00819fa0762183f2e0a5e90bc4c11c2a369afa4919f752c489dbebe50c770b6e
Date: Sat, 19 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752917993
