Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4BF25A642
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746014994; cv=none; b=cWDDebiWW3Vc+N0Ry4AUhx+Pyln8oOZo3EAmNsSHH15kNLcDvymH4N6jqRY8km9X4RgAoERZaUxVGw4AJKB2h+5jilJystlmwNuet9DtYU4hXFyqUzgNHUOJsArzHbEXqcf6SLmosUXUT+caSke1ZAbej7JrCOcELo6h1DbfC30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746014994; c=relaxed/simple;
	bh=itZAhExlWjSKOuupCSgwv0mE9kMq77W4EFmdTmZSGQg=;
	h=To:Subject:From:Message-Id:Date; b=U58+Ykqj8rGYISUxyZDh2LC5/GYulMuk+UaJn2w8bWwihBh3wtQ0wfi5SVdtwlqgX9mL9dEbsrxhQ3XLYh8Eg528Yafx6x3ebKjkHgeyFlfPlOn80j4wKNAPgz1UcUY4dEv6FUCLYyrCE7vfUCjw9X4rLMngx5mWwLmoYpV1Mtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVAKUViO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVAKUViO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BBCC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746014993;
	bh=itZAhExlWjSKOuupCSgwv0mE9kMq77W4EFmdTmZSGQg=;
	h=To:Subject:From:Date:From;
	b=nVAKUViOA0VaCuBNlmgSCRSqvko3UGiGgVe+Z8jAZ8qKIYPRy3rjJmdyWU3IRsiZN
	 2pib3CtXbaSGIWsjcYRhTYy+UgGa0aklbz73siV8D01b8v25V3UlI77UYqivSKPJHb
	 1MWHF0VNvNQUH1oly5SF9zz7VUwi2JLnSXjp0YNJf6SYj+eLGLjib8p/q86VMJipd+
	 wMKDBjsqbNVcSE2NeKI2gq1D7rQwCHcRb/BfdJA8YnnzvuoAXznFuMlrJFK/v2jPQM
	 DE3lhBifxIR/ON9culj1MxrI9NQgw0kyLNfU28r2P5KlK5od/xd583iAwqIVBPh1gY
	 vgOUTdd+mXtpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED14C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174601499357.6365.12820267462369595245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed45fe11c637f6b8d4962d5cc6e8774d0af15eadcd53ef97f565c2429dd7b60c
Date: Wed, 30 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746014993
