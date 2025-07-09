Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FF223B633
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752098394; cv=none; b=B742OyJ0jEbTLplcXmVi1ikAUL6zAEfopA204x5wdGzI8JPb2cAgSk4QqFCznHepeeLL6pGx0hWF+16PXJNbT4TqC0WvXr0JRjXzeGqmBtDKuIJoX7ftLC6+FsYzbungmPiYvb8PBQ8jC6HooPiU3EMM845BSbSQ0s5xBM9s18o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752098394; c=relaxed/simple;
	bh=+FLJxDeo2K/yEri+/GgpP7D+ykkEvcgBtSipJvdosZU=;
	h=To:Subject:From:Message-Id:Date; b=TIW9L3RhchehJAG7zf/Y8/0tRtGPx3T2WblZJCicFEPGFuxj9NTupVml5LwfCrvN6OZDDabkmn/TDH1Yqayomqcs0dU8F6JOq59kzUVn4YyGEmhfUbeNggSs5OENnN9ViYGM64HxqSUeXcFUYgh690UFXZrVQupMiP/jMHrrqig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMCGHC6v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMCGHC6v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCCEC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752098393;
	bh=+FLJxDeo2K/yEri+/GgpP7D+ykkEvcgBtSipJvdosZU=;
	h=To:Subject:From:Date:From;
	b=NMCGHC6vdqQuxvWaEw90A8U8cuqO5ywlB/dzxf8wGZ1Ib+IZh7vOSb93DbfX25Dqq
	 30WGD3RqIN2AWBoXy1fTvnGJSp3eS+AbKw8SwtUWS5JYTf4LPB/1DedSlpFPNmiH1s
	 8CgT8t1NoE+C/21vsS/0EJRUFOCh3zEKzY2ZkFjQ8bcU/NB/SJr3DoYRGgebiipSw4
	 SQ9tCgGjZRtrNwH+cuEj2gdTyYIfm/hO7puIanmz68ouSgJ+Z1RYNLPWkdv6iiR9gT
	 0fZjgvV0sXqoLouNojg6iecCFPnjAl1Bd4rwl1VKKKlBQFCJ4OoELX/LLQmbRrBbJM
	 F5Q3LXNdgK8DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB94C83F0A
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175209839357.32667.6046670016259039764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c320e5e975e42ef2daa5bddcdea91f07e809443127773efe504e0adc92b7d5
Date: Wed, 09 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752098393
