Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CF034AB01
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 15:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781450194; cv=none; b=NWTuWLPkVXZpAVexPb6G5yJF7jY0jHq8yaTpDd3CjB/+f5dViuRGo6T2gBRiGC1ab0PtdekOAv8xOvkeX7C/WjYfvMwifgi32dVG4XEV495xU6D46GNjmgmAjIQMTtf0/qnbRu6Bz0dmjKq40buAORN+Dpz87lOLxn6PSn6mXjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781450194; c=relaxed/simple;
	bh=Lgadd9yDuPI87vg+tWDu4ARjmjYHGcPFg1nkgiuPta4=;
	h=To:Subject:From:Message-Id:Date; b=Ns/9YdT3OGsj4DMDTDpewbyV5+qauKq4WpEUXKeE971neWa3Xt5YOOXeEkFNbPQm5pxS6+1Fx4cWuy7FAmj41eMkVf7UTj1u9QKjdtJNpaPvr9Br5OBMUvGQ28dD2rD/700N8bGtXTqZbbJq7DXLcV2TCQbpjexbMmIq9mq501E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTvJEKlb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTvJEKlb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA774C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 15:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781450193;
	bh=Lgadd9yDuPI87vg+tWDu4ARjmjYHGcPFg1nkgiuPta4=;
	h=To:Subject:From:Date:From;
	b=ZTvJEKlbOgIbgN4W3FnugWP5nwm2ED83jo/VmXAKUK7vLYvxMo1Gz2wTGVS68KGm1
	 uficV+lAK+RbG8cSFyJlXwQLe106PO8hdcWINrW9rxfxTu480L5UrpTSoB9hgGgUo1
	 WJmkgJ+5jLZ7OCDPGpMjsbQOFv702ijmaHCUgSCF2Y1WPAz4xpTuhX8es8gWTADx6z
	 eq9maOUvjr14gzwsC3zyFCUId+sQisMhhko2bjS4bbq02SmzZRTfPuT3tHkseyXA5x
	 8U0sSzW3tiXxdLmzEUNqVnjzmA47B7gjdKN4bwyxMO6K+ZeSEsdblfHjPwhWlcYXNT
	 DiB10u0nLw+WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCC8CD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 15:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178145019368.5250.7593603821490070074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe5c79ab979dbcb03754299c93a0b7887067bfcdd1ac6f3a7d96826d5abebe05
Date: Sun, 14 Jun 2026 15:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781450193
