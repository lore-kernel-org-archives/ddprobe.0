Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3B522156B
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770591234; cv=none; b=I5iaFncScfYGA8p0tAcTDKNAQHhEx2/19g6TvDNLwsfTf5xmxlh2V7/E6kAodXZtyqEDxJUfGsDwz51sJHdHNKO76ZXxMKjhGSq7/lPBejgemLOqLZuQcmBrMGLty8dbzdRHAcFkJ+aR9wQtBluveoOCLtZ+O2jgTRorqMHNROY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770591234; c=relaxed/simple;
	bh=SlfMfvV2Tcp7hYehExTzG07XV+To5R+RlDQDTifS/WU=;
	h=To:Subject:From:Message-Id:Date; b=FMYGpvH0ud5kEfDS8Ye44MJk8FHC4e5hDHOi/ntSRqMYSg0DiVhmhu3lmv5Haw7rh5h+nKvL1Mns8DFdPDmWKC8R/u0dkhOfDlvm6Bx4C+/Jhenhcgn2d4W631czZeC7tZFSJXZ1g5YhXjlofL7xRCVoKrhQ4AWD7U3EguUeUCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmo044d8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmo044d8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7048C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770591233;
	bh=SlfMfvV2Tcp7hYehExTzG07XV+To5R+RlDQDTifS/WU=;
	h=To:Subject:From:Date:From;
	b=fmo044d8T3FjVIssCdKPCEO3tVOj0grpBbCU4iRWyqzzr0pI/WzbmPDcEhr0Y1VN6
	 BOlUeaoB8ZcBn73z0Pij14binLbyfc9YGHQFdm8iBlVUrXgNzporWX13jXpL/og31/
	 sOiat2cOARPAwJ+F9rR8MUS7kteHIcqup3g7NYg8nyL+Cyakd460T0ha+4VovBgMMf
	 uyh0YGWGX3yfek4DegSHohiCjCUjiesX+/ME6mXJHKk4JW1U0aR3hdI+0/4986qUQT
	 Iyn52YEx7OziNQpZl/VMajF2U6Ub2DY0lUroFOjmlL+XTPViWfhAtOyMUSihiIZrUM
	 Ls1c9987KtDpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94129EF06EE
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177059123359.32484.9492388092671215286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 894acdffe58717d53ca8c5f7e566fa78f3a4d484aceb23ae7ff1bf4115ef23c6
Date: Sun, 08 Feb 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770591233
