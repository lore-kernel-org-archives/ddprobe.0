Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84D52848A2
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766179434; cv=none; b=QGVlpUEJGyrm7XQWqMwf2HVnqkOXPaOOVMpY1SrBd20c9crUgEA7spgNVfBxyXFFzrzkUzjtnhTqdAtZ9tkD8Wioz32fqPXagXA9V16A2GT99Y+9+LTSooIeUnLdZIoDXK4cdXMKjYZZwMa5L3VYLRRzXgDANpvECzAOryKhGS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766179434; c=relaxed/simple;
	bh=gz3NsIihs2bDT7S49TRhqTm3UjUyRhr7mo7rGX5RHuw=;
	h=To:Subject:From:Message-Id:Date; b=AyXmJ2mJ6BAZDzHu6JRC2BbydR8xG0etNb669kmBFghvICVpMRS2s2Qv58EUHmSv7lswQUPXSy0b4Llp2GxNCAgwZ4PKUaBFcmObOtOg+JbaCZJdZ2IcW+UPcBfG5Q92EARE9QoPgvAGQD7LsOO7cGiQH9BTbrD3YtYf18jCLBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1maX2Ts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1maX2Ts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FE6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766179433;
	bh=gz3NsIihs2bDT7S49TRhqTm3UjUyRhr7mo7rGX5RHuw=;
	h=To:Subject:From:Date:From;
	b=Q1maX2TsyFBaSOtBwpIBf/FyYb+Htn0CFA6WyljksTCmgN2Zdzls+FWfSkwq2Ja6P
	 PXpW+QeA/nU455fYj9CDn7ajTZXYdRCJYaClI21aEV/Em5+5Zv7mf+Ux2i/6+6gDtK
	 cBoGU5MfxsG2Sw7g73382kFsTREamLdyq6soVO41puxuqBIbwcZNOFuuZNsY4o7TQw
	 3oLs6m86WPKvcg2GSasgpnm928LdWIo33zGFtPnSxusx09NOWwRc80qSFK5eDsZ3mS
	 5IFLZCSTXW2PSpr8908WczNf4VILD+3/cd8HaINWZwULia6uEV1+mABsXMdrXHe7BM
	 fnjC9TLw3zhcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8F7E66891
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176617943361.4997.4564944270581984480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e1fda33b4426d4a734077af7719adda21d5362e7603391146f326d0e2232622
Date: Fri, 19 Dec 2025 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766179433
