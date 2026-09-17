Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7BB54DE701
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789645834; cv=none; b=AdLyV8SlYQT4dUudeXvUWl2XM90bkVk8x7dSmxv2dotBM4gyDE6qVACPu6PMpssvnxOSFP79Ff7pbgnigpCrYcIok9MeKgTg71+z5SvVjYUkgxJemlTzbwxpJwKyD2ghH+0dRaENAyrgYdtmV92eznzAWfuuSQSgvG/i/XphnO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789645834; c=relaxed/simple;
	bh=3BQmM2jpEQ1B3wko5PXb+XgPFjMfjl3OP6iGDJpWizM=;
	h=To:Subject:From:Message-Id:Date; b=lDZTPrw1HBVTdMyg4/wBCut1nrBleQKlhiVQVMhngjJiMqnyUscb16xBap/krdC9L4eWGjO31vnb0ajusWCP+BzuHAiq+/kjgf218m9axQIkEx6WfY9wso9liounA+INBdiMMwpe+1tZtut9485D7DaVfjH8rr+svuIHI8LwMSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwImwUhe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwImwUhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E42D5C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789645833;
	bh=3BQmM2jpEQ1B3wko5PXb+XgPFjMfjl3OP6iGDJpWizM=;
	h=To:Subject:From:Date:From;
	b=cwImwUhe3U8z3nMWmFp8YJozY4PudQFnFAeajDHeBDtW68bYkGJhyep7xPiaM0eJI
	 dfiL7rLiOicN+CQy/tJ55HsoOnG9FgvjM0mPP0KRx86WfsqkHlnOZJ7c9DOEYDNRtP
	 0ujCz8bDowK2UEmRkeCceU3fjAsg5rpUDUIRloN/0Dp4QsIgNpKI1f9UR6b7R4DeXr
	 JL0gxvH/AXNPoGiLexNUOjsqIpF0N4/CJaAYHfHUGBoXJpNxkNI6ncql7bR2qefyxW
	 +dj0n2mFkjY033Ky/d1Rjimmvbaqyr+dh05noP2Qz8xgely0R3rFGoO7v99OrMwi2h
	 3/diz23/oGMVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B88FDC982CF
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178964583374.8102.17529783119699291967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae8036a9f1ee02052c0be796d5f8c3aeffa4b70b76f9770d3321e16c98521b45
Date: Thu, 17 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789645833
