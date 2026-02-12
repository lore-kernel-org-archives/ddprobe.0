Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542D729BD89
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 15:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770908694; cv=none; b=G6BpeFimxpZuPB6oQAxudooVwlYFdvod9ltlNIWsyEuGXg6RlhEm3G6403x9BKASxsspv7FeqXAUMRezexylnbcZvvrn7UzwRygDv04l2a+b+8DKTK1BTFL4bjjN88mKcVf0JPSETOAzdLoFwTyThfPvEu0GkKcgWNSFOHOGNso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770908694; c=relaxed/simple;
	bh=ko3E+FTC6Q3nBlXPY2oN8453B59zoPb+CHXRWnGVjgk=;
	h=To:Subject:From:Message-Id:Date; b=a404m+Zska41aH2XNvGoCYt/fYeL5gRVNiRq+w5l+LzYNtPrhom/vQ3+6/NrrB2SAfc3T8rP1qFCgJ2dqRWb8QzaxzoPS5AY4fRKkuA6UOUInIWu4++sX5k9rwXK7tmFfwta6EIe9NX7Sc4jOjv/rMH2cfMtGEeosew7tyn7E5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWTx+OdY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWTx+OdY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2A82C19421
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770908694;
	bh=ko3E+FTC6Q3nBlXPY2oN8453B59zoPb+CHXRWnGVjgk=;
	h=To:Subject:From:Date:From;
	b=CWTx+OdYJ18EvvjQORZE67Vt6qO4vjz5yAJo8o92fvzJzt7pl/cnPvrASmB5jxGX7
	 J9o7UE+7kewQDi7cPryblDJeFlI7dah+KjpJanNinDh6xJUJRgy9jpSru6BcCtEsYz
	 fdd2so80xpgjiHiCxnbdkCtY4RkFS9pxv68XzC5BrAMn8iON8w90pUqr8hNOYht4pU
	 Vj6xMkwRao9QTBGvVShcHbbwd6j0OrtIx30GPahorq9mgayqIaUJ4ClQr3GdN0Fyu5
	 r1m9reTfuB5uIB6FandX6/49393QdEPk5J+6lYw5ZhCeNs+5aN6PPF5J0y9ZV6t9L0
	 jiO2InT712A7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEDE9EE3693
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177090869383.11263.9831796012062116228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08f2fcc7344c4985522f9183043024d6bf8d608544ca77bfece4fb40a15eb9b1
Date: Thu, 12 Feb 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770908693
