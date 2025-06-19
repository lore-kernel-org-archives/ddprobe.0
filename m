Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D056257D
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750301394; cv=none; b=TqblwbpQjxW+wMQopHFg9VfPM5gkHr+PreoNNM7cP3l3xes+MdgwOFp/2IGWfXzRqSyc5wnfq68i07cPCjXq1lnTzCx0rliyEQXYPeVmAs28lGC5D71Lexgce47JCUjYEFBlu/+EeVpcJdsxM/rfL0G+0fyP2SUK8omFI2MM8bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750301394; c=relaxed/simple;
	bh=8GJCr0gFBuiBaERvKquulYk+x+fXHF/9wXJ/tiVzfSI=;
	h=To:Subject:From:Message-Id:Date; b=Qz1zH8kZ0GIuigmWvO2F8G8RB83VtLnp2NmnR0pM/q1+kQC2TViyIipzJ9j2J1y1R+QtSJ5m74cP4kgIWurFIU2GK1b9hPbmXBs17y1MpL0gDX3tZ4ym0ccII4ffMpfetIWpZsNk3WADHk+G7DSBI12TrKCQyVyaS/UhBmiTCBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLULR1kw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLULR1kw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CD9C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750301393;
	bh=8GJCr0gFBuiBaERvKquulYk+x+fXHF/9wXJ/tiVzfSI=;
	h=To:Subject:From:Date:From;
	b=ZLULR1kwxA0j6EkIkgAEjxjHYjTToDYkWSwI3HkW2CbtgVcVO4Ii77pLqmiufEFxU
	 NMta8xOvxJnVQAMwYO0TBZyZtlK3ZWoljGcKr+abql/+J29EpyeCSU2V4Gu8/d0fj1
	 /MdNhtqjYTZ3kh9995OU6EK4BNp3Qzt+kHqgrfpGz8xP5frmJyr7Q3s4vvuOwNlC+2
	 7kPgQYripL4WVFxCikfCr600lhbrpA++v/U/SxamixIlJqGmMUJaW8NyIcGURmoVrW
	 yRuPNpc1bVZSjdEoje8JJGTRvVgr1E4OQ8o/Nt/0K+MtBZHrIEIJ55OcYBOqUnZhkf
	 1pMbO2+ugjYgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FCCC7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175030139357.15952.3350754644050397178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2b8421fa800118786bdbeb52c81e5c580f3d7fc5fd9aa2ee7251b09e90c4e66
Date: Thu, 19 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750301393
