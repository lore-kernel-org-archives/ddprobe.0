Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589B826C385
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786213834; cv=none; b=LeNDwFmdR5m4v1SwDZfhS9jA4Cvwwc0pQ817wd83KDBqeDFLmzRilJK8MC9lU39aKXCKIhf8Ml5vHQneTtkrynb/QsZtO703PMmhbUhDJsSOH2JIv+Iy4hLE5ShtjEIJ010ePtGANV3RnVbrt+X9y1KtB+x5YkDAq6FsSGN/Ah8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786213834; c=relaxed/simple;
	bh=jY7kdDh3r2mcu64f+6bo/xsmpF2CxV4nyanyhFrC40k=;
	h=To:Subject:From:Message-Id:Date; b=PB7U42evfTs3LAKruPzDj69CW748iX1LjXF6nu664vISodUzrBfi2ouiz46Qqy6m6L1QTm2yHO7hFJ7A69EhV2gp3ZpOkv/msxvnObPmqlPD+GXA08sSYc4P45nycA+03jS8dUCwqeaYjSwITkFSuI4y8qQPfdyCNjmhD1egRrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpuml7WM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpuml7WM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D76E7C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786213833;
	bh=jY7kdDh3r2mcu64f+6bo/xsmpF2CxV4nyanyhFrC40k=;
	h=To:Subject:From:Date:From;
	b=jpuml7WMSgF51y/jTm8kF6jQxjc7mT2ocSVbJps+IFQDqExPM9lBqNuxlWWe3EfoL
	 zHppCmwu8iJQh92OKaeIphV02eaq7vrsHqTPa5LDtlDqstM9EP98tQ8rphR6GrysnQ
	 K4e3wIcWiJAVSvg94wA7s1v69oiJo0OWAhdQs+2adCZk+YlbbrN0oCKbjSw150MUAA
	 6exdO8KLD1NIXoal/kZ3CsymZ+GA52LD6TCAuyIaFDCQ2dZVZc4g4FLuB5osCK4FBD
	 IIyOneIxrTzwOVJG0FH4IrJ/4t9uedrATcvOxkpxDQFUJePsHg/7aVeTsQMkXKgVdN
	 IzpfCjysPJC7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B58C5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178621383369.5545.2764277166897662098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e0c4c2162eb53b9a6ccc1fd28dbf9b325d7abb6ac6bc8703f86143d7598f01c
Date: Sat, 08 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786213833
