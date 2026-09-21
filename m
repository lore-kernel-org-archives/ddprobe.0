Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C721643B
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789959634; cv=none; b=SEKYQ4YjoKiR2jrJgGEPi7EcswhS7ryR0OHxmV3NNcWu6jp+rohKyfLzDQ3BkQQE3+YlrSIbuOBlZ0pG54GGlDRfRYeCedqTtnsmnhR5xJ/yyhJZIFPeP8z9ZyDmgVW5dXzPhTEeBAyATttlVR5P5WK7E6ewEplposn1e7mMJas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789959634; c=relaxed/simple;
	bh=Rup3XuY+OpLBp9f3Za4irLSFJvM/rlgwyC5XVk/i/ec=;
	h=To:Subject:From:Message-Id:Date; b=eNdRNF9+uhcTaeTM8Ho/NprjJj3ZecwX8ZGA6NUTKzU1CpFe/7Gn4tlOeSGvRE4LSSa1dTpLSvJ8ruOBeIRDMnF8+8extl+olBMcQGA+mZ/EwtC8sDmLc/irxPV0GMmDUrm7wH+0SmXTCEePL0I0Qa8ENphpYxOWCcpUsaKzoaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NW8FYhBK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NW8FYhBK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D244AC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789959633;
	bh=Rup3XuY+OpLBp9f3Za4irLSFJvM/rlgwyC5XVk/i/ec=;
	h=To:Subject:From:Date:From;
	b=NW8FYhBKTcb0B1xzC3nykrCGtqUcukYHj0GD+dhjI60Gl2OCtVroqlScYZbl7CTNa
	 RKdIP/5PkoHwfBL8lqNYzybNGh7mcdWfnCLmPPy+2dvMgi6MQCZAcTRASHq0BS90A2
	 OwCV1hJ32tYZYwWWOtLlbsN4Br5GSpAlH7Puido3VSAcRAQvuGsUrA0Dd9wuOcUYmx
	 zXM9FqcG3Lx+OhxIoaTfaV1qKxhzi2xPgFyiGC8o9q9Jaf+GGC7LEOni8D9/7JovE4
	 YnfdkABufL5S9DvrjUdF0XVBvjqiI9b9H6/4JtvsWVOABwzUo8ostSrLNM6y2WauEt
	 6XIQ0bMG9To0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF38C982EA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178995963369.9884.16341636128361687936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cff6bd3f55e1f87578802365129d611d4c7ea5a31c6497e4c79d8ef88e85644
Date: Mon, 21 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789959633
