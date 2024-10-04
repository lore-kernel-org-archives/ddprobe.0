Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6CC1D5AD8
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728042354; cv=none; b=Xe4BLCSXj5WBbUoQmFgEdSTc8hNDvRlhDXsznUIhgAKapCnwRIIbliFN6bM/N4c+9SzNARaPMN9LU1CGkCeceAdBiweD3ZTSFKNKGopAYiV6ogbnzIBmpNrbM7Sqz317Pv6EA96fpPaA/A7jQtrYl/cWblQu93LldEqzDxF3pzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728042354; c=relaxed/simple;
	bh=a2B4c2Fq6HtlwwzIrQq0KShUERd/YuahtU4MoC80oKI=;
	h=To:Subject:From:Message-Id:Date; b=hAvkLGGvaH/KuNznTdwRMJP/f/x1kr9Kob0IJUpwgN6zessDXjWiZiBxOVT3qP6qzr3eJrCSO6zPTK4ytyVrmksQU4yy3LV5m1Ah+0rZ1B1ZDZQt1dwnQZsDbOh0nTYCwrZFBUIAuWR28MxC/97lL1Wvab24Frs6RgxFTDYtMe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EaWpohJl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EaWpohJl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE41CC4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728042353;
	bh=a2B4c2Fq6HtlwwzIrQq0KShUERd/YuahtU4MoC80oKI=;
	h=To:Subject:From:Date:From;
	b=EaWpohJly8V1aGbJJ2cqP6oGT+pnExlBskDyZ8k9oB63JEZ53Tdl8Tq1XvQfuij9D
	 MgIUmcXPZD+w4y8jdDq8ml8qpAyiCIkU24KJUPuqjfwzcrWJ9T1P17xp0uJPvkxqE5
	 PgLlVErQ6SXZAhCQTzzlJ4QooDXOoePuAqDO27m4EVCgrnvBVzN3CUImMJZlqbNDGg
	 qCUyWtvtB1PTFsa6a15n452dbTo8T+s9NdvQvd2jzFF8zkPzSDvfOLO0Dm6TqaDziE
	 jeOOoF5mXU/yRS/Jun0iyC4EtrPN5xuGYDJ49ibe7VRc2WLqQt1RVi7HrcLNiFoUUo
	 a8npE95O+1F0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956F1CFA76E
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172804235360.26542.886531905584612184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b486fe70d755f7ee18184701fe38a5e0fd333a0def96070008cd9ba50ede76e
Date: Fri, 04 Oct 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728042353
