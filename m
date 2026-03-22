Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E7A376BFB
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774207494; cv=none; b=hjjzhuvAP3yJtGG14Ac2Yhq4z6QteDwSFyUL0ZvcRHjiK2eenQ+uqKvTInW2x4aitKbqqSgu2YQrncmoO1tF2gnBNzMjtEjdrtTvqta4VItXCK0wTVHHGVOCrflTQ1JrZwjjxsZCuMnLlj1qh2a3gYgwhgwpibpsucyUmwotAiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774207494; c=relaxed/simple;
	bh=jNv+pSFGsNV7zXzlXSIloQrmQojzIybAJnFGTOfEvLs=;
	h=To:Subject:From:Message-Id:Date; b=Pxg5TibKfXlD4ZZayXTOWqtMTWPUcdE70gSVGQohOUhlaxu9dBUABlYxiXfMQkuSSJ3DL/cNbgALW0x5bJ17eepMqX1en+t+X9QTTzhggfYh85fXeBfqNDGSQRJ2ASes9YyvGSwYPoUihiKuIgYPcX14Os0rSosqKPknFUGk3ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HvbEmBJy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HvbEmBJy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9925C2BCB1
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774207493;
	bh=jNv+pSFGsNV7zXzlXSIloQrmQojzIybAJnFGTOfEvLs=;
	h=To:Subject:From:Date:From;
	b=HvbEmBJyuCAOgS38gNj/H8sqqyGzJSBhWxqJVzKXj2F1h1WYJK4kLnCEkVSc5IvVQ
	 pEMxpBKLcRoiC0YkKAn9txsw+LeiAQo284BO1Xlt8CYZwU6SkEOm0yVonrXi0ASRLu
	 XZYPvVZklKSNXvmtW76vQwgRb9H4Sr6pNYfuRNJaV0mmf3m+umDBUwBYOXpYy147SS
	 Fjz1q9btDwOWl3r7OlequmpUDGZ22lBdxP+TUnTQrK8T9dkVd7pDo5TFmOqQyG/JMI
	 jsDczSn3nmgVBcClS12AXo0Dzgzlz2l7DCxgM7/p1EBlBZiCoR9zvd4z0yFCY2T91c
	 +P7+zoYSW3MWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94441FC72D9
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177420749358.21835.1962626081584364762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64d72c033968024074bb92c88c0689ae98d024f959e37cc6571fb6f3d30650e
Date: Sun, 22 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774207493
