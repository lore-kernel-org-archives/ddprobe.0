Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B2AC147
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721385354; cv=none; b=Rcwn9bw/sd6jFEG6vzFHzllGRCBwnVPWB694VlzwiZdV31VcVReuxauESvYGpYZrowKPCe6h6vDBqotVG9Z5gEWwt+jW8mYjj2dyILzxjoQe9vjFhYYTL7Ni1fSRbR8Ed0KcrRjYp/zAr3MK8m+LmRPSWvk99ae86s9vifYE8ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721385354; c=relaxed/simple;
	bh=YYtemjQTlyIxnIenjYcJrUwtLNFrc3QQ/C+FLNadyXw=;
	h=To:Subject:From:Message-Id:Date; b=GJGVmMdcgQ9v62TDriKwKQXojplQlNfoIMTboXbi2ohx3TLUdxUUIoD+VkwxFZhtihCkS1TScEP3CLpkOZFFKtsXSU2kkEOjNxPcMTAzuVEUdhSj3KEES+U0TDjqjBL+kXL+Gf5qJAWvYiaWIRd+0frxhTJup6Q317pwl25KDiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTVjZ73i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTVjZ73i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1772C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721385353;
	bh=YYtemjQTlyIxnIenjYcJrUwtLNFrc3QQ/C+FLNadyXw=;
	h=To:Subject:From:Date:From;
	b=MTVjZ73ioNTCkZ2taxrOWphLkGyahYrTWNlxd3r45TCi78Kmm8dUlO6BKCLtFl4rH
	 zm1NrritgtONJz+K4ZLYzad4OuVO9l1hFQStLo22FlE57uPmwG02rt5TJCBWz6ebxD
	 EIZzFgavCZUtyLazfrhS1bzniKlpcUfr2WSyQxD/Pu5IFYnLdckF92HNaGMU9UqaUr
	 JtZETKm/hSJiQxPqmkBfinTrb+yVRCg4JBglmT7QbghZR/2ozH8P/v1DeuqdqaYDcW
	 unG/8Qkwxk0cd+MYaf8C/n+EJwUDv0iW+2NAa1MCjflksAu1IfGlZJflf7Eg2IyOgR
	 hlGtDZayQk2Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C50C3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172138535359.26241.7957083907157521623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e912d74775c57e74ef10816d04e2155b1c6b16d4d33b23bbbfa4ae2c60a3f461
Date: Fri, 19 Jul 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721385353
