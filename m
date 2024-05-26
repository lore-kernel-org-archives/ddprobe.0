Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103B513281D
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 20:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716753863; cv=none; b=o1wsJrOUK0kqSVdIpsdJ1do3OkCd88zyHckoF+Jq/4Mw2FozHFgzuz8nuHg843o7ucIByQylsHzkI0XsE9P3i89PH9T4NFFbMeE/VHg1yWApY3RH7BXFEqpFs5SFXHsUNeXZ8YS8bxJiXQJft5lsjoxhXq6FZh9qOeMMkia45rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716753863; c=relaxed/simple;
	bh=yfK3S4UzIJ9Xysl2gSI3pLAxzVseKYO36nrkLcOxI2k=;
	h=To:Subject:From:Message-Id:Date; b=d4ZXmIcXTXxFPYFXpX3rSTuyAUd7+uVxC4y4ksJzm3uFscxo4WIUUkqwjU4mxN3lNQlgO3X9FqJav5jhqQCiDD7O8WXCHAsQxoYXUjY/g5A2pcPQieqkXk7BY7L03OIUt0kWKZB0xrwdHvIcHjcHv/5PBrtquejKv6voRzCHty8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFO8geMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFO8geMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E1DC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 20:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716753862;
	bh=yfK3S4UzIJ9Xysl2gSI3pLAxzVseKYO36nrkLcOxI2k=;
	h=To:Subject:From:Date:From;
	b=hFO8geMmjXmR/Y4i0ralnvyqrc2TiK8DpRJ3PGCrJAHh5iTTq1QILihljP3gmM9jl
	 32mkKTC8pMn1znOEvXaCFYuH3dcaPn/Bri1pZUxPN1nW4dWvoCtYYZZsd2JvJLleQ3
	 5oNxdgE3aipgwFiLxTEYUIJL5RcWQDYgjBUmaD2900CT+27BNKyz7sT4M5vebbr43y
	 dIyzmki17Lhl0KYiIlBudh0m0Zjmz9A5CW+tgVOiy61kVTBlZehYPfgKjhGidsxle+
	 IcIF3fVSZIDGZuacsTo34r30CRuVOR/NwfwguJ6XvQwOOWeiw1WVCdDNv4sCdJdBKT
	 qyIn7l1E3SnCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D02B0C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 20:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171675386277.9155.17385563016314107990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79add3e39895fe552f471d6efb8faced6168d127e9bed753dae874635b1c0809
Date: Sun, 26 May 2024 20:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716753862
