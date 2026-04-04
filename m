Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3848E1607A4
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 21:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775337334; cv=none; b=IU2p7x6GDtyNmgEUXvfm285WVY6iJm+X09Gu9bjf0RHx/GJF2lpC5MBOJ73OyMB8e5edN3hkiMtWSgqxnJgceGr4unzplQkWCMPdo5xdnTtYFIyvlUfmXh8LlRCypvlYQPcFevAxJOw13klATyfX0u/TNX9bS+Z0dJ225l1ImhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775337334; c=relaxed/simple;
	bh=qceL3lsv1gIb35PPInTaBFecpEFNp/TAAmVNOEWXaNM=;
	h=To:Subject:From:Message-Id:Date; b=NjgmBn3Nmcqaovfd3tBcYdrZS8eeeTPbk3UTN6lcbaAb4IaE4bfTjXpk3WYBlKDm9245q4rwTWQgx542R21BbaI7yoVTzXtkohjz+Ao/+q3Cery+n9yWIzNovSRf2aTofTRZAEPIOJuP4R26WbUmYM4h4dAMpUk008NCAmIYKiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKnkoVWE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKnkoVWE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C977EC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 21:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775337333;
	bh=qceL3lsv1gIb35PPInTaBFecpEFNp/TAAmVNOEWXaNM=;
	h=To:Subject:From:Date:From;
	b=uKnkoVWEZQvQqdnc9johlCkZ4qNUCNrTjU/0/YgAPXODydvfKPQkvVf5HFOfj4Aw8
	 I0aONjoh/3jsx+xm+LNp9mcYR4qTcrpdsEmpzYJz+dD7GQFa2kGouotxW2YX5ICQuG
	 hAPKMD/6RnxIo9K5OB9Pa7vJhVs0g3lmPd8NC0/WFCGNm4g4M3r7RJMErAd29IoiRt
	 1aCQm4ESD5zH9jU6dlxUXgUiRKlmXtCrnOXsfT6Zyk/f2pYUybXhVauCYTnKZDuf6m
	 E6mFnCQbFmSpbyHtFNrk5UM8G6eFHMveYh+lK72eGY2IuEJWLx4LnXj5LGR+X9do0C
	 hew6YGvp+eN2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26E2E63FF9
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 21:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177533733370.17512.14516912835414272843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d96e360f9aaa006937d954381de71b05ec85b893f10914f940659aac21e1f88f
Date: Sat, 04 Apr 2026 21:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775337333
