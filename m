Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30522261571
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749008994; cv=none; b=ZpfJg7lTWYBN3PoqQ346GmVcJUbjOen5HQzqMl1AYB+fphtka4vvhX7eohJVsy22wrp4OKu8HB/FcxADKYF1f/lxFyMFKNZis0wjioFo8csGEslrvIsRse9HMScLokjpXEO187GMvO6JaDyss/QFg2UCVqleBUx4jsjt57WeId4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749008994; c=relaxed/simple;
	bh=1Q32gniRLmT1KyMxCxBsFiJdvGD18loW+UUY64RX1bs=;
	h=To:Subject:From:Message-Id:Date; b=tc5pPVa6Y0MsQkIwIxHhx8iL/scgkUbl61rcCrXLCiyalBKdIExJqaAKW/ruqWFqCMhzi2PAkP2ju9aAyA2qXMqc0IgEpFac44Lw2ZCyW3GGP/7+HGAPj8WjP/CDJ/EfKFYVFHAybdTMnHFqVR81PMp7OQxy4OioanR85lP/X48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SmvhO0lu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SmvhO0lu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F50C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749008993;
	bh=1Q32gniRLmT1KyMxCxBsFiJdvGD18loW+UUY64RX1bs=;
	h=To:Subject:From:Date:From;
	b=SmvhO0luYpcmAg/pIZct54B94BviV3e5cZnRl3A3FUY/6gLngBlcJ5qyTmLfaj4/2
	 5Hn7J9MF0NQxR6fRhDMgtyeGLJvtW8Qq4izRoKtVeZruPmXwDF4TtFEmBQ5uP3VMD7
	 HRIn0zbiqlCn2j8iD4ogwnRvLSnLHk0R2hH4MRXFYLNcbNgokhq9Nb0GyUakIm5b32
	 KJgwAPML8dfNJ0vG6yHaWFA7MOuNlwiY+AbrhQ8P+LPBXoaQQkBqyVEramjoF44J/8
	 Ec53T5hifC1ibKtMdvQsBuUiHh3dnqgR4o1LL07WcvU83nLH6FVmqrHhoBbQIyBWLg
	 OOwf7B5C5bfAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE3FC5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174900899358.2175.16055905167132022980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5612724fc52efc35223b8cd30634ed3c14dab649e6d4a6069bff44c08e09465b
Date: Wed, 04 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749008993
