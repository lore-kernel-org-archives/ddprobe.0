Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FF62248A8
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770046434; cv=none; b=nL5wcHDzUDjMrFDyUYZaY/fItD8DHrJ7+Fz7CcH/gwpUSDZe3iwHfxJJxR4gQeOVgjiSSSrkJLB07HdNJj/3lKTuHwr11MI9vWBHeI5g/rt77ehBDHQ04zUhLwmll2pqB7/3ezXeleKYNM/e5fbLPP88qSRUf32WpyeinPVV2zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770046434; c=relaxed/simple;
	bh=EkfND9xTkI3RuDu2L3OwQM4WLI1hbNsXyiotaam6Xhw=;
	h=To:Subject:From:Message-Id:Date; b=s5R1bh/H59XTITIzY6rQaTy8/7TlE6wa8e+5QlseizFDzbt3ZalYOryg9UCKK0ukr8f8LtzOedJ8oxjhffisBmWBGLs2Ddswgn8/rYsh4p5C0YCgyiS1zDz1LicnaiHtoQNvgoByyUzcd3rmD5cI0SBkIAnLA0CCNThj3BCdpMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvDK1Pua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvDK1Pua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B674EC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770046433;
	bh=EkfND9xTkI3RuDu2L3OwQM4WLI1hbNsXyiotaam6Xhw=;
	h=To:Subject:From:Date:From;
	b=WvDK1PuaArUiqCE8OQFy4PLrMq80iKmeDGyv+NaV5BCIACrnFgnh0GB7H6ofkFgLz
	 LkqzmdUpJ3X6Wn25boFTHRq0x8NVxCz4arxCCsvOGnFDh62cUIjemu908QmIDMbtsH
	 1I6K8SSE/6S148wOF8g6eDKNtplOh7UNCHSZsS/a8iLHwFAd0e2+mVmG6DUl8rElEX
	 i4yNjZlOOd5ZhvwwEFjsO5xABjf9XZ3vmcOoC23+KFF4W9XSDd65DiySe8Ae4aW3G1
	 77g8pD38BubNR0nOGYMYdxbTS1N/wi1MoLMCZODCrOxb40KKYVvrkM865Mpg4YnOhS
	 GfWSdI+y+ufJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C82E7DEEE
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177004643360.6511.2856698374863158072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe9572e7e891dd57fdb50c0e8f42d10f90edbf76db30539ba08fbed31b2670ab
Date: Mon, 02 Feb 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770046433
