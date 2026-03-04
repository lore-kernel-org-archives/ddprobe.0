Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366FC21D590
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772598294; cv=none; b=ntZwgG4kh+VC4m+9bhkYVK0JUllrg4xGgsL35dkNOLDO8zukunBysiXGUyNwrtj45iyjKrcguhgAxPdyYGJGbFdu17rCW6HRmHLFtuMeadnjyNOHnWK03Gsqro/akAPaLtcA6i1OVqP1hrEBMU2skDNRQw/mru3HDZeL65JmB2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772598294; c=relaxed/simple;
	bh=WMpBcAM3tHvCLGgQS/dvAEDMf2wx1hBkzRLUelrGvV0=;
	h=To:Subject:From:Message-Id:Date; b=FQ9OP0KcyY3fiBAAZiI9guVnTdqQ/nx9IfhsEk8IFsF7bHDgO8blnx9A78M2haqyz32l9O8SNTqczk57iY7SnZXB4Q6pjpuFLRge91ysN41CXM+FK8qgOTJ8rLKvIssHVWTKton4UJoHaI1dQ2bqrY5vk+pd987sqmMVZ/IhRBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCeHGAHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCeHGAHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC42AC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772598293;
	bh=WMpBcAM3tHvCLGgQS/dvAEDMf2wx1hBkzRLUelrGvV0=;
	h=To:Subject:From:Date:From;
	b=UCeHGAHnnPCvhbHeEVMEvmJpvb1eYtT8nPDbsrx4pguZiaBP+rKFrOdEVqAT3oO+C
	 tPOQrgD6psxazMua2SqoX2f4KPpXFXNUuFLcYn+jwOB6qMoqIcR2p+zFU+524+tgba
	 WTSHzkegHfF/gClNk/Q8OoAkXgJOpOJKwOflejE8A8WQAxd0Io1hpokRuAIWRBmhRE
	 WuF89K80Xw/N9vAi5SFOi1JoDrK8W4q43cN0oMxBZuv9OMzmpR5hxlij98Hyo0k/a6
	 SI3vFAATU+h7ACWlJtwzzJZa7VG7cHNVipfqswfKY4Fn1kk0AQ0O0sbXtmOusKykuk
	 k60dzg4SvC5Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF9DEDEC04
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177259829371.2335.17024352483560151308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0661110ac0ab885c7f82f5393b35b31834b4b0f38161752394d09e042574039c
Date: Wed, 04 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772598293
