Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD41331064B
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772337893; cv=none; b=EQ3eVKyPGy0sMvbaLaywoFp+S7zXglpYjtsjWJA089dST6CPpjtpn5rwTPG9MN6z+efEUlOggJRWDj7WDGBc6eHmiNqEUiD8Ns+k7fXyThbe6C10JfM+mjAr09jJpdI9jp/2j3U5vdBbVb43DvtBM0ShWqZpdk6jcl3g1kJZ6TI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772337893; c=relaxed/simple;
	bh=geNY7H2L+orfUTJTDd3Kk7DkdVwy4j88+kGdiO1eSuA=;
	h=To:Subject:From:Message-Id:Date; b=HM7aVPhphecquJWyYvvoIBcFxOXXsrIWcMTCXRtmX48Dtmtyp7IrDzlE++tnIvat7UODFlHswHxCHDVflZGrOkKEpojlW1jkLH9aGADHM/PNffYEiL4ge0ZZ7vCmoXIFEegTWLRsniP+CWS8DdWDxgu3/4ExzCx84B8bMyFzZXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OeXYwDvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OeXYwDvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D04C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772337893;
	bh=geNY7H2L+orfUTJTDd3Kk7DkdVwy4j88+kGdiO1eSuA=;
	h=To:Subject:From:Date:From;
	b=OeXYwDvlGqNUoSugPjjfuGvdx0erPYOaOiXd/iQATLf84AL0UdF+4SYyyprx5ujxS
	 F2Ty/fvhEWYzDJxCFmSkTCm96hiataXPn748hSWHEzP0tya0oofM1oqEV5VIbzGbDF
	 nRdR3SJutqAsSjtOsdyTk/ICPYNnt8Pqy3Qevlk453YkPdj1zVCqkh09wyYkcQS7PS
	 zguSCbcNfjKCvocaRWlxJAe9bGr9rMOEGP+h/swo4X43KSW1Q3u2RAVKpiy3hTfXvZ
	 jPSv+vgGCasCb6ii2xs85qw818J9obXfj/B3WJAB29Cc1iBiqhT33LLNrJB5gKTo3f
	 x0P9x/NOay+Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0ED1FD0055
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177233789361.805.15408152169213435259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58bc9cdcf43a45ea4959ff1b8590b5d1bb9f0c30b2d347afce8aab84d55604c8
Date: Sun, 01 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772337893
