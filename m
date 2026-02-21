Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 075B7A930
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771663494; cv=none; b=hA7JhBKfJmUW8nh6PM7hB9wQqBIJldcm9D+hyqi9dkuFl1hLiFgdLonxR4uiRdPckmXXaiXkja2Eju18SUVzGBQy77I+Le2Km9c1YKOTL6+NEdvxLg1DwKf6pgL4tx2ImJc0DF3JStp7/KwsjLsc8HEzTgkrdk9NDW+Qs6prRQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771663494; c=relaxed/simple;
	bh=gg1ft81ZuppPyxv312opimA+tBvpOqlwRHE8OzzAEEc=;
	h=To:Subject:From:Message-Id:Date; b=ohS1o+Tb0ZjW33pD0G0xAFbBZ7lTDsAdVxh5iSTbJW+DuC3dH0oLUlQVQVvn53dlqu8cWPbnDCb+lovAsfJM64paKrdwr2kihDYzHuRgct99WTMPHmDaXXmIdbv1bifU2hMTF94DLKK7+oWbGlkF0TMEv+OzEUFKBIzQNh12yKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3ps2dKf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3ps2dKf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5029C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771663493;
	bh=gg1ft81ZuppPyxv312opimA+tBvpOqlwRHE8OzzAEEc=;
	h=To:Subject:From:Date:From;
	b=K3ps2dKfaFjj8/ANCOXExpzJsVs+MiCFXnZpr9uNHJG3hB/B6M8ji5hBxi7EA42XA
	 FALQmzagVfQoBPA6FZx9wGYiOIlPsnd0583MraRv+UEJzHben14fHesRWaOTIKVWWK
	 GcZGI57Q0AAFInDyrjYj2Reh2AHEGCyV123n19D637LT31iO5D91YwXVIuHIAcRqCj
	 6eoCstz+fHEGzbua91jV6qfXsgBKWy3K+O8qiCJG8Jgb1000HGeXgV1BlVRy5cAXOp
	 UnD8KRs3YeojzMBR5OAFCobywt0TkyM0XmHbCJlPcFpCdJzDmzXOAYhYizAw7h2J0m
	 P7Z+pc1gTnbxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94487C61DD9
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177166349358.12492.2151273983142461441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53cab19f42d4fe588bb8276a523c5d0cd302c4e528a8f6fb3d0d47a327f61863
Date: Sat, 21 Feb 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771663493
