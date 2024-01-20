Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1864C15D0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705790897; cv=none; b=gvTLwTFZQymglJGHXoLNJHnt2Kq1O1xKoZJV4x1xsNWI5JcR7Y7cZMMrvSm3m2kJie8iuoQN87g2jYgkUbBO4fqh7Ya4h37EogSFL+a+T81+PRNCUxK1lySvzs9N4bDdlgjgdhFbBkzZf0dI+sag6GX+rVY43aNo1axLJsVTc28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705790897; c=relaxed/simple;
	bh=Holi+z3t2kymTjhplOL4zyMEupwdthWK4XCHo9HyJZ8=;
	h=To:Subject:From:Message-Id:Date; b=Azj0mK0Lc7KcwUL385AAQWZy+4ZKyDeObQamANc/3eTEijqlguQV2ftTD6H3CWeVYSEMYdK6gQdcvcQupVIvRoXRzBQK7moIcqkinjK0OpMngMOEkVvJMonZ8X50JQMHEC+SWsu9dedBmGcsjWOogErFtN71Z2jlIYx82wz7m1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzyx+Az5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzyx+Az5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8094FC433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705790896;
	bh=Holi+z3t2kymTjhplOL4zyMEupwdthWK4XCHo9HyJZ8=;
	h=To:Subject:From:Date:From;
	b=rzyx+Az5QuY1VQtObGF+MiR+HXzaaxWnnG8q8x2HKJMNH4TX3Y2yJGBe3VSgxtmom
	 PH0g02KhwL1qu38dSMWsF2QenbGKapzGi6KlFIhU4dNMwKEUTSyo0r/8VUYZuFgi/M
	 PhFeMvLFFOVzzGlYH58KvSYpqT3fc/EAvdyS4Uaq5t9re9bf7l60DXOnm9jdiP+kw0
	 07d+s9xh8DsrcmCjm491DsKuOJQ/yP/W0p27m5SOdUOHnquwRgbi5IoomHStZSC+R1
	 /IyDqJm2pJt+6hXs8Xefhj3yIsbEQFJmvs4BG5OqRViRZ6fxl7ZbUuilGrsEr0jCVA
	 tGrgSYwQlEpNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DB26C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170579089636.26053.16200800863735103470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32ef5f33b1fac83eaade9e7045148b2a5b8490f0141adcf64c97cad5f1c0f824
Date: Sat, 20 Jan 2024 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705790896
