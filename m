Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A4C186E2E
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744909794; cv=none; b=SxYurl+nKlSQZdN6S39LTpPS56CM0wK7bhaxrMM6aB97qNYd+3espI/8N//NRp/SljdRW305Pnufd5ekQDi1bwYJwSXlPg6nwx1TuN0njK/r78iXExnfThX84COZcf9eLuOgrzeCXBYDUmToBF7d/wItOcWKfFu9sv+TVOZC1ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744909794; c=relaxed/simple;
	bh=84ZV+pXhQcXgHCwh4mLfudOcram8dOK4usyjE1ZYpiI=;
	h=To:Subject:From:Message-Id:Date; b=NUsvpSGwOzLJbrXUSVAsCmf4zy5XmBYWIh2fPq1ksyJiMHL2Bb2h+nVpBZ22RqWtILiKuqOf5LjGkW18zfbjF8+KOuRAWruMbzCfAqiMcqnTrX+IOw0Yfy7rRfZFY37b9A4IcFFVi7mTheDmrLsVd6CgKqajqRzYkYSgktIlccI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bdk6Ir9v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bdk6Ir9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C87C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744909793;
	bh=84ZV+pXhQcXgHCwh4mLfudOcram8dOK4usyjE1ZYpiI=;
	h=To:Subject:From:Date:From;
	b=Bdk6Ir9vmGibma8z9LaMd80o+uAhNRlZhvHUfGgL0P3BAjScU7idqACma/5J4E3hZ
	 xo0+XzSna1OjLFPKXQDPJ8eObCF5nbICYBnxZzBQbBtnngAXTxz+kD1n9Og33tMFZ5
	 KMWCH3AMLUIU1IqPF/YTMYqISmEcC/xlY+3HKf2QieIlM+6oVz7NRAUmAufmmucYzH
	 m322YMPoqOluFw8V3s6HUN5TSkQjftlky550Z/QaMfItm3Jnc0gE/WJswjWHKDfmEt
	 yb2XUheikKR3ZViz3wpSpfGTaPSHLRKg2v6vfsvDg3dDKtFZ3iM1gHbS0oLMbBJ+AO
	 mK1MPRVRG0wQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90220C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174490979358.14892.699495153803521506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e21c3db7f124c28156006788335202e401fbf45520b8b199c3e680a57a3aaf3a
Date: Thu, 17 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744909793
