Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6420523AE87
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786282834; cv=none; b=D+SfR1Y7ItFnQyShIeShmhRjhXo9nm+9LiqbbhOWN2ZF3ttMFW6PQi0MxYGCD+pzgLbkRke/RmJxHJYhgJ5S5qrOAq//D5542khiSDRKH19zLu2n/ZIG5AimxTcFR6pE8iOSpxFkHbQlJDv5vOJeOSa5IHYpPsKxoytYffK2jwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786282834; c=relaxed/simple;
	bh=tyjycTCjYbzYWZpu9L82xB5DKcn7OCErebI8xGu5Rbo=;
	h=To:Subject:From:Message-Id:Date; b=ouWoiiTx0NqyBvdm1uA5YUVZL8dL8VGJpOIcQji6UhkvKCfvO7yIEujQVRee+TzYEmqR5IyIPbf5Mchm0x/moNzRo9RGe1TbWTcCp1Tj/gZUcqTmNyiSOA+eR2Px7VNBthrMyCZH8W5PvUQ1k4L5Y1dHXc1WYNV+9et6orTlitI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxFRFacz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxFRFacz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBF97C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786282833;
	bh=tyjycTCjYbzYWZpu9L82xB5DKcn7OCErebI8xGu5Rbo=;
	h=To:Subject:From:Date:From;
	b=JxFRFaczSEIm0zJy1SJ60fEc37udEqADEi6Nr1jcYkSNB9+BLl76Fct5c4n/y01eG
	 gSI0kteq9GUD8KKGCmvne4ywwo/igeTYGkqO54FUoq1DLO4gHob77FhIalb9QLEarY
	 XTUTZL+NygkDPE5AYbXU17gCr+sD7Vf8Kz3ejkRctsJ8VzbgRB3bIiO39qDUJEKfjI
	 bC2A97W8Zr8tki78U771mycIpXW1og0MOAtDzlDJhUnAyo/+5GsFc3Wi/j7z1biE5M
	 sEK8WdGOd5AdFzyNUkb8CYW88CrSmpSkxnpgqiv5u14+Yhbzk9Moe+GpQVSCJOw+VF
	 vZ5a+mwGKPPjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0F8C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178628283369.7169.3671123986251463595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a25d86259cc2be5f11c48b42265fafb667371ee4804405c005be1514c4db1d52
Date: Sun, 09 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786282833
