Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247344B048A
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786928434; cv=none; b=hxVb9DSuUdGSjUY+KLGZ/MvVMG/gfOk3h4cs5buv0hRTfff1PYkmr2/LbNWL1VOavMHMK+L6WCII2NfmKMkxUKZhddbWFpAzeDwJ3hnEcE+mYgO6JgK1MwNIGYQj75LA9m/wHaS1Usz9PnD+5sDXY0i8HR/jOiffQ/K+PFk9Dos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786928434; c=relaxed/simple;
	bh=eRGOSgIkxVM3Ppuj9sm95405nyfwuX/jcVZEPMn/xKA=;
	h=To:Subject:From:Message-Id:Date; b=Kb1O8SqTEyGQrnMymI3CQXZy6qSF9L5+LBN4GNQv0cDHAFtpjeIV+FOhU5onKW7Fc23pRRdS1q5VZ/pxq/CFYzD5yXAjy5DlJUtZxSj4GsGCYwsgHFkGhv+3CnNavwCocMg9SyoeMbptehNGuAzPUhIPkdGnGPptUjjxZPJJb68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITrfsk3l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITrfsk3l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36BFC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786928433;
	bh=eRGOSgIkxVM3Ppuj9sm95405nyfwuX/jcVZEPMn/xKA=;
	h=To:Subject:From:Date:From;
	b=ITrfsk3lvSqnuk1XTk/UTYT97y4UO4meixvMA5zddBKYkjEyf03UqE8q5RoFLT9m5
	 ACi22rbmuPqKzSXuI6qRukTds5pX14SBK9+4XOPLjB4eKP/G0KupvOBJ4XdX9Q03vZ
	 ECErW9LMRvGLyzY5IdNxop0poTT39HqgqkxzQoWg9TFWlriW0wpLEXzcOfp7e9o5d0
	 IzouOtMY6j4EhuV5FzUyxqnJ1+rfAeOOF3lWVEtOtqpmqF5qIOhji26kfqc4++m+yG
	 SlXbrXBilb56AQ8lT5NI65fRKF3KteFHhq8VCgcaP/kqbTb8z8Iu0zkigBiVwS8O+/
	 UDXCoTl4o0lvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB414C5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178692843369.18576.6362067657695864189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1695236c7618b2117a153710a61db8c7b8d4d37de1729cce20f8f0c9848ab47f
Date: Mon, 17 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786928433
