Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 050B8221723
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772239494; cv=none; b=ZtIl10MMcvc9lJkuE4+2dg76x32UyEZIv0mqX2bpTmvLC0j/At8bJMWPjD75UHGmcxiHPr6BZ3z0kgTDV4xbofQ66AdsrTBu4DwQSdw4G+JWbcjw3hXFfVRwSAp0bPffIlmrRDF2Gsvn8aaa8H5MWaIxUUaQBfDsbKi80UzvsC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772239494; c=relaxed/simple;
	bh=ZAqtna6OvJR8PkT76LbrYnUpUAO/t2H3RjNPcbGZUE8=;
	h=To:Subject:From:Message-Id:Date; b=IpcZjRCweBlHDmlk8CeCBPzgszq52NO6AoN6FXPc11Y3WElpeBtGlcD6zZ6UPheXz8jvkR94lHluZ37aXMIqt0ZWvFeqffci0I/VHzPOdUWLlxj3qIWzSHwS/JGYIOtww+Kz/nXKzj22pTkSqbq6zZUAXomsB4m1RGbltMU2wCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ne31TKRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ne31TKRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE17C116C6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772239493;
	bh=ZAqtna6OvJR8PkT76LbrYnUpUAO/t2H3RjNPcbGZUE8=;
	h=To:Subject:From:Date:From;
	b=ne31TKRGFkPzFKjOdsZVNeAszdZqfc0dKLes4Ij1GxKPt/N+b3Fev+vwkQ/iPs4Ru
	 fTTNHmG27GXpFhK/ljl/VhStYpPs0+D4roMBaJEwvFDzTTNbPhLQfNHDruoMomujo6
	 lDfUuFCBbmFF0z6mgOrcKmmal9Kx2U0HQPYA3vAiJ64K3Nnm+9eA/B/CWwddvUUZH8
	 AY3pQdYMKnykQjPUwczVNlc4sKe5H/WSJIgt4Qnz+N+4S1AX0tzNZicXeNf4hSg4S0
	 EmZ0gmTpRMcnvdR21MnDJyqbv66T+7RCDKwabtzE7NXxq8m/wAvJ9SaRlmSF5os8ZY
	 DhpqJZ1A9x2ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9581048925
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177223949358.11841.11068487498009151639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee27fc8fb7f806d28c61124f3ec00810b1d06090b36b18fb620f4ac2ee929c37
Date: Sat, 28 Feb 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772239493
