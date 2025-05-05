Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2E6B1AA1C4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746472193; cv=none; b=BCtb1qwtUpwfDu2v3E26ZnEY4Hpg3OrZf0ZsW/RmEDYrykimQQsaPNSINP6B+uD5iZkV6cKIXLTLfFi6iiyMuUCL6Mq9AUp1lGBPonFQuOH4rgEk2KGg7GSIXJdozGobwkAyIZyzxoJoRGbZhclF8cuBydBX/bzTnqFlvG23Yuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746472193; c=relaxed/simple;
	bh=CGjceMJoHDioUWltzGYqxzIrdWIg95s8EBxnTgFgp40=;
	h=To:Subject:From:Message-Id:Date; b=iso5FGHTlW2aipWNQwDTHjVVVFZOJzwlH2JrpfYcUpUkFCdN3vyPCnaWsTKCxvjc+U0FIw6Hrl8cBE2EOyxlMlDvr7kkptn0kyCxzwKJGQWqpYYXY5kyApY0E4fZ6Cfl8jDzUxVT/2xlKzVLCaFnR7grtGZWI01HipkSGVf0Lf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eoTonBjV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eoTonBjV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A295DC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746472193;
	bh=CGjceMJoHDioUWltzGYqxzIrdWIg95s8EBxnTgFgp40=;
	h=To:Subject:From:Date:From;
	b=eoTonBjVOrBuhto8AJZ3yQzWu93vD7NC18jdEfcWNIcMi46bUv+jywvwdFWwvXz8u
	 uqKjeHx55FMokAjs3cNA/eHs9lcmVBJaaOotCTL1+HPA1X3uxCzDsAkP4lJ2mLHXBw
	 V5Q8Fp+pR5WQpofepKsbUmSmGr0wA8oI03o6kROXoQ/xkFbxz6IQv436C98ON/aulF
	 OvWTUzjn36iSHGifEGTCePseStRLzYg6vY3Aw/LLrBFxbpYP60gsahcP1bccy9ADFq
	 tp1VUJtZicx2/Ku+2BuKSKvW2Sh2gmCkmaTddiXnGtx2tV0yAgcT1h4Fl9yAVjGeLs
	 54ZWVFjrg6xRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBF2C3ABBC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174647219357.15723.7810308254732321128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b6ea7a0ddef72a8cf26e4dbc3fcb2fdf57d95edbc2c55a8886c54fb7f96c1ee
Date: Mon, 05 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746472193
