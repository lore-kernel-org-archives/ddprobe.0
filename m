Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A0071D543
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 22:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713823823; cv=none; b=t77dq9z7PQ2uD0orY/LV40HzP7Yt9ZwdtJWgDUYoSd9WWHM8/vT5sIVOvd5J6fC2nInHklyHTSflbOLiT0ixk89rj+gby2Si+pcNX3VCs2oX6CE4By9OoUjnZsoYBcki0diTrJn1u0Q9gBm/rmrY+0mFCNigb/oewv2FMuL7NE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713823823; c=relaxed/simple;
	bh=POAtTSoAph9rr2gRvOcT+GTBxh2V9QLqoizXY2kqlbI=;
	h=To:Subject:From:Message-Id:Date; b=a7ZhinFxUR7uMP8N1CCc4BsritMUBw15ku4GT2BFnZIFqZAcZF/JMvTJ76X+8PAA92cSG6NFc84opSLaEFxe4O/1gkD3T6KhL93X9/kAKDFk7nsFJc8r4lVFySPYnWVGyb02k3gboy5wBFYa2IsOFq31nxRTsMYeXUbJoJtJARQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTgAOuYz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTgAOuYz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFFC8C113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 22:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713823823;
	bh=POAtTSoAph9rr2gRvOcT+GTBxh2V9QLqoizXY2kqlbI=;
	h=To:Subject:From:Date:From;
	b=cTgAOuYz4/STWMs5xWW1vfnQx2+y+MOQBKAWGVqs9qNlEh1pYCEatZaH5BG2TacRC
	 bll9fwzR2Z3WTtjyxWcXqPygDPUim+XcOKoWjMeswxKrsgvfqbJqO+Qffl+LXfhafF
	 nyx1U9ATGH1cMVWvBZE5+pd2cY32xMchDLZytAWSuqCX3AGtcJt1CYGBvM1UGg1Pu6
	 HWFvjBA0EI0Fiua3LkTiqpOgtdy9zny4HM4ltXFcG7K2MOgGbgkGbmDGYuCXPVDXRX
	 Hjkaqw4uiA0urYNMuwbRfHXq5/7wp/D0dxHCtxpVtni3a1/5En7k8njHGHVHWLrSf1
	 UbgTeT/1B9qRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D60BBC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 22:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171382382285.26912.7919291455289215028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c654d4d10bd7658fd4604c0bdd334d04cf1a2332f3b2096d8ee89eef56e7044e
Date: Mon, 22 Apr 2024 22:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713823822
