Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD42380
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746230994; cv=none; b=O20E5XbZSK35BSpOr+iDUSFmnaZ4a/e3DkghC+TJ82fDsaJwlKxEvtQVl4UWTQUGxaGmx/9mq6rGb3P8E+lmp+xkoI8z6YWEsELF/GkpzJ6NgcQ2WTfNsuK9Kbg5Mn1ZbNccZPZYmmxLNFcSlz/wEygkIrOdCDr1DEnOrizE0pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746230994; c=relaxed/simple;
	bh=/k3DQIuIWcvyMAMUZWR2XR/DJLk/2h2hM+B9KahhIbs=;
	h=To:Subject:From:Message-Id:Date; b=Ult2DdvB0wCC9u32FAxpZ15ctGtGJLbCknG3Sp5qfmfC799DynZLQ1RbPw4NUeL5clGHicDzR1lt0hTZ4ImmOyGKM14vMiZ0Uxvr3DPd1CpOV8qU9/NKRuuzIvRP7EOHcvlP+JehUjqaB8y/5fbmuQDXUouoo7Lxei0sTcI0s7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmg5sR5s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmg5sR5s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E89C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746230993;
	bh=/k3DQIuIWcvyMAMUZWR2XR/DJLk/2h2hM+B9KahhIbs=;
	h=To:Subject:From:Date:From;
	b=dmg5sR5s9TaBmis11fWe13MNX8ALZ1SU6wdRS6FU03Dg+A6rDsiCKNasEYmbPXoB7
	 N0049+BuCX2Br9vlWbaGPI0DwqcHPslywD5PepwKuYDYVzPaA65/pyzlv+D972/AkX
	 M+A1wB4vOTDOoGE04M8m9+2tm+DYOo1x+aBzKcpvGuDYOSp6jexpXqvs3TdSSRtC4I
	 wAjWFN9Tc9xkuhpLLq/o/KpEGpEsI8Xj/W7TvLZ76gwX1X41zQIboCYgeReAG0aLNi
	 pqyo65+HQpMuz1OYS9XChR8+/68RbUPMu6jdj2MUww3TLeZKXEjst8qivdgKgmTFVA
	 zzTGDYYsNwR6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918DCC3ABAC
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174623099357.14783.10133303268340008938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f371569e1afbec8abc6e999f6be90089745ea1a73ea4f999d293baa60ec9b51
Date: Sat, 03 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746230993
