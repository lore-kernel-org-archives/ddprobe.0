Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110C12367BA
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759775994; cv=none; b=M2N85SKYxtGK92L22L4sADLxZ6PL39DC+uGmm4c6MzkQNgRROro2TEPIfiT+xevfFMInVXWnbnTs4FroILoIObiWn1WyNmkpPL5CNFmCBuOlcvY64SkFH2G8NxP7XzGHViRVOyEuF/cL3p39iSX2N2rtGjAMnu8T1G0Kc8WgyUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759775994; c=relaxed/simple;
	bh=mkwPqhgn6//wQGE1c7dY35t77VZw0AcrDHtJ4XGfIzU=;
	h=To:Subject:From:Message-Id:Date; b=AsdgIm3WeHZ8yRqta56K77Zwm80ZmZZwm6f7jzdFVLsVmevsP0WpFI7BTTD1uMuG9t2C7daJYLg9jWoB5SGVBEhuxrBCoVF3+CMhlN5z4dvcR514fUqL9IcjvR3NLIIJtZptiq51laYnxCNThio3a0iLMAgwKoGIzsXIbzPJl/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qf+7n9zB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qf+7n9zB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F9EC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759775993;
	bh=mkwPqhgn6//wQGE1c7dY35t77VZw0AcrDHtJ4XGfIzU=;
	h=To:Subject:From:Date:From;
	b=qf+7n9zBkmgoUCfYq+rqRllYH9RZR9EUrtE5eQp1fTwyBaOTOeKenxcyOJjyUJ5sG
	 XVRrwcSGYm0FdGXI4VxxkCNXKDO3FKSpv+IbuI8sSGKfdtmkdj14WQZ7Ym3rPldqtW
	 QTH0/n4khSc+OREvkpxcYKH9xymXLlb9bnBlguKITOcj/fwwo9/V4d7jkZ56kR7I//
	 Fv6pOi+zvdokSL/6nCDPwqI5AuHXUayAoBK7zOnGHH48+WhlCNBTNg/z6G31a785bL
	 WZB0q1h23lQmprasoMJfUXsHJMb/JsdWziMQu5xUQFz5g8D7rOJGcvqIyRvtDDfadt
	 mqJ9rZyYvd96w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D50CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175977599358.12208.1236512030496358951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1da25b5c5b2032870f9fa3417f75b831e9fc0c0108262361ec0d7f36f9c1d6
Date: Mon, 06 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759775993
