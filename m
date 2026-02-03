Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261A817BA6
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770093234; cv=none; b=Ck+vwcVv6Hlw4O/uRb94r0kjT4h3IEISKN3vB8xFpt37nkYH6XAEW4KoXQaXYHRSqKheIxBdUZzbVVo0fPlEcuH+ubvd5lZjuZqMGzEoYz8Bn0rRTRiekTCMonIEagsDoc5Eiq9VQOO+8MhmkjQ1vCzQQYoeA8SWKfJ9WdTM8Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770093234; c=relaxed/simple;
	bh=o10hL5djeP6inGeaF7ooVdy4VXlSz6zmf6+DDm+FDLE=;
	h=To:Subject:From:Message-Id:Date; b=duoNdmuQMiWUu6t4vv3bqn9NzxdtNB19R30+WnrDU+oRLrRniAy1r1shLcOh5fzIIesRE4WbvX5CO3S7F19V//FW36/D2O8bV+Q3Hd39PoXiGOCtwRafTHffevwzmPtmNBhG1hzrjTcV9DDyrFsnomiOX1vFkdWKYeQ/C9hRO2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2WdQgBt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2WdQgBt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B053CC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770093233;
	bh=o10hL5djeP6inGeaF7ooVdy4VXlSz6zmf6+DDm+FDLE=;
	h=To:Subject:From:Date:From;
	b=G2WdQgBt2Lro/lcU+v385RJ1u8J9ZZKM+yU4EUzLpA6svWcZQASLCg/N0g3N5ywjh
	 ISOfXNKYycX72J6IasPj17ACPtMJC8xtFIzwv1EEQ/oXpywpUr1z04c5En3ilai6uQ
	 F3mx+HN5TZNMsb0qkTEd+F0YnOkRcNLSQM6qVrCCznA69EppjppkNyKuujlINuMoCg
	 Uwaj3q4LigXv/0A1vF2AaKYNw/EDmy0W2jQGMhRfi50BRaWASybjxdcBlFur951eTr
	 YSHMAkVzhNGywlKUHRvjASVZLxf9qLYJpo9js4iSCXFhkHQ4+Z5KTCNiItnY+vzoDo
	 sPTnpQ1mRseFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992FDE8304D
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177009323361.28875.4084729406558876552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f02f4f1f8c1553cadffd678c824d6aae158e06d539999340094590ddff157ee
Date: Tue, 03 Feb 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770093233
