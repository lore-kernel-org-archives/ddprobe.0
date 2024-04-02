Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B09175BC
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712034497; cv=none; b=teyITZ807QEmG/S/ksG/PII4wMek/+w0QJJHqDDWkyjooOTJQGpN7mIoQN4kqj9iKTtlgcO16zGPgHNMVFz04MacZGYWccMpvkrodc77lMWkHonyt906WzUaERuCWmP+mV8P+agZXmgqLIK4rvWJ7pa4fac5050HSHVVusfsb/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712034497; c=relaxed/simple;
	bh=88WOQpBSEMglnDImgqkoZSYyqQSWIEv1zzgJ9yPA8sA=;
	h=To:Subject:From:Message-Id:Date; b=mj3imc/UO5UIjzCwNj70ABDyLUDIlm46px13/FdPVtR9es+MOQehD52ZwREfJ16YV+TwGz29hJTgZQ2H/lx55kt9SYUPTS4NSKxg0w3798A7EjiJ5Ui7IShF8zkQEcYDZcRKvbyLRnvOCXyNVN61yoQr3u0fSAKSacw813ejXCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hL6FZdCH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hL6FZdCH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89CCAC433F1
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712034496;
	bh=88WOQpBSEMglnDImgqkoZSYyqQSWIEv1zzgJ9yPA8sA=;
	h=To:Subject:From:Date:From;
	b=hL6FZdCH4RVG4Zt3AN55YpHUGax6N0heRfF+IhhCo6Q0Ewowm5AhgQssSf6tLJBch
	 diGXRwMKEvD0FNDUg2qVZy0UA4QqFgRD6cHmyxyyF6cS05aqPM0cFugsZPzilCf8B2
	 01sbTlGG5UbQV83wyn+6b//MAuBL0Gm4YeIFPIt9+BBNilYL8t+LyU0F0SwsF29Xiy
	 Z2x0hMGb82zq29LjoSExMAm2MCKKvjL2Q1UF4AJbY4zqBtHhQ28Y7ML9gyMM8TYbJg
	 W5ITULhl4h0M/dGPjxGrKcYKHOyI+pXjl4YlgDws4f76kgqBm5HX3nsmh7kXIypZvL
	 UMEAFxrtGBjsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E33FC6FD1F
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171203449642.14302.2549424157472047363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25055f399718d4f850958eaa0aae2d46df3511c6f2c5606ba055d5751cfa72ce
Date: Tue, 02 Apr 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712034496
