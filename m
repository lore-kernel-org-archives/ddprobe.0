Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7388828376
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 06:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717654045; cv=none; b=bSUD54hjhFCgtw2SvvQ+/+HSCLqHFqaoGKbwrKLJbmpWWEO61E/4Zf7GcgtI/R/CNalS3DlkPD1BXpDnLSE5tJYap0y9Arts+8DUD55bdrdnDLTTMEPecUZedqhECrPbO9a8GmMPlR6pc7qJ9XD4XDUzmnR54e6hQHSipuPh+PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717654045; c=relaxed/simple;
	bh=umG9cLJRpAkaGOYxQOeLTHU/uBP1o8194OgZr5SdPPo=;
	h=To:Subject:From:Message-Id:Date; b=nFiMl8XaQvZHJjLINHUfnwZBQJXwTZbrbCB1xUre1dVgGzIM9XpBTv3UQ/g+rnpM9FJI7VB5LAWI8BM5TArjMI9WeAxmHLjiXwxbu4omOGbqJ5tX9j7O7NV3ZgHPOvvJlIa4z6iRrTV4/RqUtcvnYFVruU0kBCxht+C/5NBR2I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmfGZuen; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmfGZuen"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1B61C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 06:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717654042;
	bh=umG9cLJRpAkaGOYxQOeLTHU/uBP1o8194OgZr5SdPPo=;
	h=To:Subject:From:Date:From;
	b=hmfGZuenvq+B1KpUxUz4iDVimRTHh7VPP4GI6dTB7QIpKc3460vyK6+meIJPV0KJh
	 3ZJugZCw1ogMvDcx/GlFxQm7dFT3VbQ1wk4GM0pc8cvyDuEGs2C2rJp/X6yqOoIYGE
	 Uw681lWyr9ie0dUxF70BhSeaz1hpjg0u4WLRUPGQGXtyXWSfvRBIM6phTNuxDnBuJE
	 NSO4jbLflIT1fFL5MUYWkEAWukXfN5brc5wCQu7eTRFB15g2nCkNkrH/Bnm10tzsBd
	 CpR2tJYA0sXPCkPu7c+3u0BnUtqdpK+p7id9gHem3ErTpdtk0umKrmdlcSnQOdVATw
	 J+IMjjrd5tyeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C83ADC25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 06:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171765404280.20156.10687386355651645427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d794e5a1916aa5cbb666585559dc593e8b8b6dc870bc1d022b188396b2d8cd54
Date: Thu, 06 Jun 2024 06:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717654042
