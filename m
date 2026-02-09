Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115A0B672
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770595434; cv=none; b=ebwTJddo4ilVAiIt7ioa8DYCY0J4AbocvnEUnLrDmhHlSAjG++xqfL1XmzchUwLv5LdTMHEBJXreVXWns0CG1vCAJ4PDwP2BwqIXEAkhJtZP5anoFXxeKswAkXf+4B8uxmDGRBDvwljaOqxwFKa7SJauZikOOZtWuxqbLKoYSMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770595434; c=relaxed/simple;
	bh=Apeurb3+93xFOpjFkbnVBWW/iIigg469/5tAD+qI/5Q=;
	h=To:Subject:From:Message-Id:Date; b=py1efgu4UK3fsupZwtdQKaqDEoPfS39OHaKAZIkBaPf9lo+uKpInA9zlYxdILybUuJ1axuOVHNCmj/1SIum/XXrg0X3BoKfA6nG52gze324tpFGnlgwW25mvThw/a9XTPQ0drOE45VKhgoqyYUDOPJwcjEJ1YH3FwWNa4r1cDYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUEHB0QU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUEHB0QU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2392C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770595433;
	bh=Apeurb3+93xFOpjFkbnVBWW/iIigg469/5tAD+qI/5Q=;
	h=To:Subject:From:Date:From;
	b=XUEHB0QUZShndc7zpCG3gosTrfvEGps/PUPRwx77pxuAzIb16cKvlL+1kPYE4H/2b
	 On6PjQ6tARjPoRj8fTCb4gC3ZNtUjk8KSjUMo5esBED+rAAQA5sYtydK+IMt7ErQtG
	 hpigdXvLi9tj955BFDHDV78fS8nlIqM7lgNOY1JEkvfDaG3HrcnBJRCz3bFqNt1PtR
	 dUkTNbb8vMx1Z2jtJkR4GSmNwjYtJR6g6Uc2SHeHN4+HL3IUPAphjKuDPbLaXmKtIS
	 Ll4xjKYEq/SqE7HYnoctoq7SBPHgt0JtzrtWrGaA9j//LMngLOmkdgto1zVkVLzwua
	 j0yAYTvPqJW2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B879EF06FB
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177059543361.4912.6580012387463514474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16ec73fdb94506dbd15f15cdb95608a6b87c5f0e7360c21f938e885ce1a89516
Date: Mon, 09 Feb 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770595433
