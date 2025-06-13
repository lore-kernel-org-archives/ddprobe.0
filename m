Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C80C83595A
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749850193; cv=none; b=PSR/q5lMruvP0EqgeFYTdOjezHGAv4KW/xpfhKLJ4xSRwFmVyI5nLf4PmT3qOlohF9ETSCklA0bOBo/sfU1ZYnEbJtJLlwedTsIDAApTEDophDrAwXQ+OXIV6qh8O1joGxHVjVvpXyua2w36lhabAOaIoSPgNd60S8ENE/SBCh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749850193; c=relaxed/simple;
	bh=kezLU1MR84ZKtzwgPdelHzPQl3SbU/lvnQwIBZKbibA=;
	h=To:Subject:From:Message-Id:Date; b=OKyoKibbOdK40wV1mM+5ui34LPVGRrFle25bf8oIxy+2Mch52KoIYk56ns20CpeE/kkuorMi+KPKDqwyPpwUxFAZQj44/Yo0RZTU0tqx5E2k4FoTWPvRinU6eRYXV9HlcF3pEs3B3vqfiuDyGhTona0mqHAKJ4Uqvn/3cIUUM/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vIki1dvE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vIki1dvE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E185C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749850193;
	bh=kezLU1MR84ZKtzwgPdelHzPQl3SbU/lvnQwIBZKbibA=;
	h=To:Subject:From:Date:From;
	b=vIki1dvETtK9ILXw/lL8La6p8p4ulgqut7AG4kRE8fhb+1atFqn1AbriOUN8oGCqa
	 W0mQEfSlVuEp9DYP1obbCWNQDWS4rHBfe8+phjeg5r8imCJ3GcbiZQjAshmgjNT9ld
	 hTHLc6HBk49NwAcPUqWwhooZeIXK8HlNuwS5iI8nURIPEPiqqlwgcxte+239nQHETi
	 YLkneSG25fYmlPoQyvZaO2UGafVjfv92NHAKsuC+L39TeIry2nBC1X9dZcjYxx3sD9
	 SkKzrYCrQO51rEds6GOd8pO+MF64LQVoHIrdWOW/QJAgspFyiHnfL85rALXBOgYZAj
	 +EitRLf6jj4+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDBAC71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174985019357.31152.3473106335464455869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9efdfdb78172bdb63668a7567ec0eddd99d20482c99ed4645310cb5e57ff52e
Date: Fri, 13 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749850193
