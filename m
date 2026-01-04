Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078552BEFED
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767497034; cv=none; b=m73PadATYez+sALpXp43g4RDOQWQsGFWMAhaAKBTgg1GX5O9F6xP/sHRS1ji9dPKzRIXiz05tvIAFqSJSEvygzeKPm/NNYbKFTHf6TTEblliFJVfaO2bbxpGzrCZxWCdC9cN2/s8RA97ajlacCusmqQfG9NtgZIWqf+Fo9FXQnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767497034; c=relaxed/simple;
	bh=P1mv1/Q/kCXUFba0ZnWTvFX4lMLIGkq2wV5JUAWULmM=;
	h=To:Subject:From:Message-Id:Date; b=GugAzBp+QWx1W6PWTutjfrFGGOcE8+8JmpGcSbPDJvC3qkTVrAtU4L1cEwZnAMIkY+GG7XTrX/3TidQs1m81xDu41Fdsb414rPulBOLXnUXiSp8uZXdj1lpTGDi4hF2Zu2WY3Fxhama84P+ZcCCGe0P43oiEXDX131Y1YP/0UPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nx9ExLNK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nx9ExLNK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C9FC19422
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767497033;
	bh=P1mv1/Q/kCXUFba0ZnWTvFX4lMLIGkq2wV5JUAWULmM=;
	h=To:Subject:From:Date:From;
	b=Nx9ExLNKPMbQr/iDivCtaCfE//waJlzrdQf7WvkydKb44SFLRiTo2iz1TwBGk8aaQ
	 xotN7iWIHAyDhxOSU38DTbupDmIl3la8ad054CfsPoNNsv/bD5chlpgCGzmAkak/vI
	 mWtNUmu6OvZDaJsfHMathRbM78cnQjgCoAqqjPXIp6d1WSQ2BR5gNK+gScKIcnl+dV
	 T9yKGreuW4m9wbdBu/jcWgTWJIQlMK5Aw6iX6A2AH8zFsMs3OmBCCmtkJhV1xsCl5u
	 rHI3yXSEpzQTfSfgVwAEla8fh2H+IF+gRr5C/3fDe+UCzRqs03nho2/1flhdDS2a60
	 jICs3jytmZvkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91492C2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176749703357.11627.12324032777498374032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 882c11726562af892aae45425b826886ae089daf91b1c8a523989eb44fab2fcb
Date: Sun, 04 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767497033
