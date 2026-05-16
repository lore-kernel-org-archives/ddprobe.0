Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189ED25228D
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 00:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778892034; cv=none; b=ZDNUN1jJEcdOyn0IXvfIObfndgTKl8AIKiJbjBh7asJq4zzrk7mHNpWNvrzJ1Vr9uwWY3tWzpAwk+mfc/Uwjt+E69T0slEy6WCj5u1j4b/OdLZx4w6P+mtdDzM9/+TmcXIpONdZAFGkLYHij+yykVx6L14hBt6XjIm4nShDW14Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778892034; c=relaxed/simple;
	bh=8qOlNuACxGu2iJ3AIrpkjmmkEuL/p02pwTB4c55Zb+0=;
	h=To:Subject:From:Message-Id:Date; b=oIXCSBiUaAY9aRGRIsYSrgD+LQEG8TMEyXbflZCBufDfAWhmFlKKQH9c3t3LKVB/NpNeJNMoXuVWZdafd2UzaemtAcdea5J80+KLMMFabvGD9OQD7YzvwuMmgjmHukRtL3gZGuax27VFl0rWdgQCszccr06zbWMm6Zyg8FoKPQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LB32Asb0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LB32Asb0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA77BC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778892033;
	bh=8qOlNuACxGu2iJ3AIrpkjmmkEuL/p02pwTB4c55Zb+0=;
	h=To:Subject:From:Date:From;
	b=LB32Asb0e/TQR8pYzZYk7aMevnDjGuELok7ie0QiPey50HSPTmslhA+fsm7aLTVgk
	 BHvM2rnz4rLWAffQhgd69UxTN31JlYDpg7CbQNq/1M72FQwDUwc5obpCr/t4xijWBg
	 bLg3kddq5d4XVNpmDvq+7s49I+3ryMzHGQmTBCxvp4tfKwQRZ8AgkPm2hsjQQG0NDa
	 drErVuRnXRGWj9PvqeeFvMgwZNL/XkqMv+jYAE8Dm/+BfnfRbf0X1fV75zX0YJ3BG1
	 TE8Iyoj/0EmZlGipittIRVvDNPUcgh+5t02Q0rdPsyguAzWcZtRBbk0uYsliT/+K7g
	 TSiDUuGCi5HIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2C1CD343F
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177889203369.21402.16161037346822564291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f58c779c33acfc9854e32454c433d5b2165114bf91f01e73745b3573dd2b45a
Date: Sat, 16 May 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778892033
