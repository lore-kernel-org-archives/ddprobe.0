Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21293425867
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785413434; cv=none; b=L//p9ahOrM32y8F0t5qOZGeZZOyjZgJrV+iO1Jsg5VVqSGKLEB7MLbZJjxlvE7/LpcrEiZ5JSfebXPGVo0DWEVLibocUtPYM5OJCi/v3RRvFeHjBb+M/piOx2cVFgMPzPobSFL1921OcKUl+K5wrWmPEnT1y1BKfd68ME7TFK3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785413434; c=relaxed/simple;
	bh=aX9TzBlRLKP4o6zrg29QESl0JrBdAVHYbtqd7eVWlbA=;
	h=To:Subject:From:Message-Id:Date; b=SbXodX3BbyfezxQ6PWlE3vytTYqknlaDj1fHPJ5xzU8cvMpfiW8PMBU1Trb0zB6Dc60s9ozVWpiEFckvXNUZHEmTD5U2F6XJLgC13OQTm40eZSjLwmOqZ6LTWzaqePQ3M1J7LuW2REveZdhhEoougbc6yohN93ZuPsT14o52ywE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIMbTU1E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIMbTU1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4D2C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785413433;
	bh=aX9TzBlRLKP4o6zrg29QESl0JrBdAVHYbtqd7eVWlbA=;
	h=To:Subject:From:Date:From;
	b=fIMbTU1EJ15cZtHWY3U2wJr281bo82w+2n88LKiKLORE24ZO9mWNvoFye713POd6K
	 IZE3oWq2qoBHaCTvsHghrzym/wyiCjHtWA8ZBpAPm+ddRfo+eOsxQr0TzBM8emLL47
	 XZ+icHnWBY0Z+h+QzYysMHCQCkbqyeBiLEek/LOp1BeejbPzhO1U+qAgjiB1bvKIHo
	 ihm+5mIcrQ0sYjSvXZpZUvJSfKlsnLO1in68uG15fLEfjcKqvTyAPlmDY/FgICJuLk
	 aqYpwlgYT/jk4ASQae6aJoQDl5xkKLcFEnTSJOWstDnUAMcrBBvz6eSDTJNSaITozk
	 qr+Ft4Znnwhag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A1AC55160
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178541343368.32125.1908280080036485096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be58b0d3f55c3a815bf3be80511b93aaa02574c3cdb6ab2006902570dd7600bd
Date: Thu, 30 Jul 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785413433
