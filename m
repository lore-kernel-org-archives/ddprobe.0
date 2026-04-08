Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C7C33B6C4
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 17:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775667934; cv=none; b=iIS27Iws3lh+AoqEucwCGi/kTpvF5Kmy0whI3RJ06Dlbsj+W/AA8scpgnh8Jp7PkyaLn3SHtBoM+xkc+8OMIp7YXarS5vBR56fDIi8hK6rvE+GysnbuSly7FgIy+vf8uZEHR2fCX+1rFwWC4xL/DplDpXTOJxrKouVzjbie1cwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775667934; c=relaxed/simple;
	bh=o/3QSCTIXkTZQabPg+ujRNCIfTJ/2KygroX1nB6dS3k=;
	h=To:Subject:From:Message-Id:Date; b=k3VQezRJpUfpE7JWfwIB0DrMPmvamvKQxM/77jZYV5D2UMGdnVtqwC0aepWmH3EcId02xMCFqBV0THAyLdZd6P4Z5lj1WUT8Z+erlC0QoKG4MndUcbAqEryW09mgP6vyGfKm4Xoc3vM8sZCWISxuradURmreo/q9X9jAF9oz1UY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgo33iH9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgo33iH9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7FBC19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 17:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775667933;
	bh=o/3QSCTIXkTZQabPg+ujRNCIfTJ/2KygroX1nB6dS3k=;
	h=To:Subject:From:Date:From;
	b=sgo33iH9v0pkoWkDdLeZbS6sqGyT2xhDtLSG0Ov//SbdR+d26x5ILGGjppeeuN/ke
	 YhfX3cQs52DUafP2m1mbSiCP+mNeiVFoDwebtwTUg6PrnHvolhjRiKXcWwX5swwnK1
	 46AY05MD7/IAqPyOQhbNPPSpa6qI/2f9B1q6GWDdme1exbqS8TeTfewNReacziy4yM
	 9Ltkvmf2xQwjQwbOLv+X8Ngzx8yupc39DtFN4L7JBP6ND+BY1G83k7D8djf94VhflM
	 ihKtVSN2uUT0YdzEsHGvUmuqtxqjvZD4S02MMUePb4lgJjk6D9Gj8iBjAcG6jcn+cx
	 mvVaNjDkIjt6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA94F10F995F
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 17:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177566793369.13871.15527240433275990470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0776b92f80f1ca6c93d07bf0479e78e79e8f3eed3656281814d396f2ac696367
Date: Wed, 08 Apr 2026 17:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775667933
