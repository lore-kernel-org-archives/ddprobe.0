Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75CC2E541
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 01:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718761763; cv=none; b=b4dyh7H9T06wk5pN5jbAh8X+PPwjtzR9z0Q7re+zQfbuUIH0+4TOoALrOmsGbqCdwMSmBz4ImdgD2tpeQA1hZHols2IffYVfNUWLstBykP2Wgp6d9RBhoDSP5Qek3RrNktFjNTZbbf46jn2EialK7wClpmMtvjtQTl1zBaMVP18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718761763; c=relaxed/simple;
	bh=oMc1pcbzlvW6WqqIg43ZRWHELBT1wFTl5r2+wwNuyYI=;
	h=To:Subject:From:Message-Id:Date; b=JMk60VDr0Ptkbsd9mJmD2tMm9t82xi504XxXFFruWOkFcStTfx1Gcz9ElDuOhrdCzBlCqFOtFAg7S427JayfBbD2vPEINv02bLQMOdsNp15/Ez4kYIK7KqlWEFXPaRls+rXEo3JjU3OPcmtlECs/0BiT1hj2aWUn4pCWX1isczA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HhViVbNa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HhViVbNa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D83AAC3277B
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 01:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718761762;
	bh=oMc1pcbzlvW6WqqIg43ZRWHELBT1wFTl5r2+wwNuyYI=;
	h=To:Subject:From:Date:From;
	b=HhViVbNa4mJ2m/i0YOdz5NPAK02GZSj9Kru8ACE2wvliLPtVtmd/ELndE6z/hm+er
	 G6IDaBW97rEkMJlUJtOXbE9uGP2DdFS6U6LQ7zs0C+SbzpaXy0pc4ayIEQ7yGUBRMH
	 egoxFP1TGQDPJGLNfO4ewLJGwk51iJlQMcB+IaT9v+ohpZ2kCubrqEpZrTQdzMZvvY
	 2u4+vR6bYpMjxFwCLdoKAC9jVVwJrOvwoZP6RG/BP93mZuxsQCeB9iBQLtABAiVy8q
	 Hl8nq+QBRcTqNf5lCeT1DFRXQR55VxREtF/0JjpjMasHgVsGlsTbeyQ8auXy/TlVZj
	 KtZV5ULKAPwpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4832C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 01:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171876176279.24310.11716524449529853350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62755570f2a5ae1b52fe593075f73bfe6cf09e3ffec3c9b5f210ff329d581945
Date: Wed, 19 Jun 2024 01:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718761762
