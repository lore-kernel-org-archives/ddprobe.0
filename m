Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D64301FFC46
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758474593; cv=none; b=n6SYm/CCrFNG2CMUQ66YX7uLNX13AomXnasC6qe1asbmv0ER8cMCyA6Z1I3oqC5SjlRpjIeIA7tL6stwdzsbyHY+BW5mZRFfvzkhbSgiIuvUDkuNOQy8qhiLve9o2snNYdsis7ONmXcSs08BUkQxJYc288+pzTz7x9pgzPoYsBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758474593; c=relaxed/simple;
	bh=H8LIPRHPZU1Bk/i4FOYkY31z6C808BR3plmBglvu+fI=;
	h=To:Subject:From:Message-Id:Date; b=eszhX2+abh4s74oAnTCrGHKb7yKNxxCjlVeKlZcnCkWf1J8k4JWjUOMBgPnqGAZpkS0jOcdZyZdgRNFD2OVIKNL/juNr0wG5VgIMx4BXFQ6qq2LA+f/DMROfKJlKwyCTOxzOH93x59XMJov73uXgVW2OusklU3U6eT2MBynwuoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CyxAYLHj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CyxAYLHj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E606C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758474593;
	bh=H8LIPRHPZU1Bk/i4FOYkY31z6C808BR3plmBglvu+fI=;
	h=To:Subject:From:Date:From;
	b=CyxAYLHjZGiVBkjsxYkkZ2odaj4kwcM+KBoDrZm1DBzEOUP0xulcVoIUjoyrpbQI6
	 rT2Fb7S081dKEMMAiMGi2HkvE+DvAExKLBlL2pLvJ2+m+XUAQ1MuoBmtQW51nhBYiJ
	 Gp8pzli+F5+bTwek2JfGn+wpzNSlHOXrrcFyiqErbjWhXs2oTpLQzWYefd1X5rnEdS
	 C6OtHejcxnZrEYuSMzLAUFllsW6fcy54Huv3HyZ83oblFBrwZUhWUYiTvY3iprp1S2
	 eGP3wrQsyN8dicqxlrnrJkgUpYeTnQzHzUqhZ3q7Vk1i9od3o41tNRZdsZmiH36qjY
	 apstwnAsXTbnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DC8CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175847459358.30330.16484169685517392066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b105bb7296a83acc92f73487f4478d97faf6f69f0150bc549c8978e355854e81
Date: Sun, 21 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758474593
