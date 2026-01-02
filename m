Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20219271469
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767324234; cv=none; b=lhJcSO98kFs742+QeqmaQfJMd+a5wojc9WqqQ4YI4AvzYfIcpGGFnS6lNSAm47QbhdCXmH0CuOAOR+Ah8pYHkpZVPRFGiAFu7F09DZLC2440plo5NPMFZ/8Q6E3ifnKMYIopRAKMg+y1SH98jj8mpTqBk6USQkFYm6pl5Ehc6lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767324234; c=relaxed/simple;
	bh=g1n+CjG+2i9c1dNuZ8LEIdhVAYEfXjdrKcg34iku+ZQ=;
	h=To:Subject:From:Message-Id:Date; b=d6pHg17hawQri1UvlAag+1MB+NZs2pkOj7T6xXv3w/zaIgAxsMjPKKXUCHLr5S+H0fo08j2ProMHXvqzPLAYiD93TlLRuLUbbIOg2aCLTCVphlI7Q8z36pz2SV8vlz0zxNCOFS+QhkOEWwykWoRoNjzpXPGT8BzjYvjHGghBUJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKK9IATX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKK9IATX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52FAC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767324233;
	bh=g1n+CjG+2i9c1dNuZ8LEIdhVAYEfXjdrKcg34iku+ZQ=;
	h=To:Subject:From:Date:From;
	b=SKK9IATXNb5NTPrQT8yH5LJzvwrD9Fzs9MYrnbDCF3QQOJttAeMp0O7pBMYzIWOwC
	 NTr9g7vss5uiz9xq3Fh81HW/60IALnsXTHmt0W/fz8Cwnv2xQhXs15bWdvyYfFLSgA
	 d97pgT63BYxsIgstNsqotiZUxCc89KZzfx5i/517xz5YmNyD2fq7UG++/J4V0JuKiP
	 NxJDMwA3Y1k4VwwRECH+tPuS9kRNZBSQh9YXOt+2ONP0C4Km3YNnwcEk3ncg8+peB5
	 AjxNoef2EvXvkTG55tZ1+1sd/XdCf53Yw6xCOinLlTimBxJo/y7BQClhE9PxrzDSYy
	 ggYKulP/FZBtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94242EEE265
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176732423357.11096.12562180780662072634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee8357d34a87ea88046e98957801a86142a7f6e5d2969f829593b021890cb5c2
Date: Fri, 02 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767324233
