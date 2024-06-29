Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E3C55B05E
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 18:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719686063; cv=none; b=A7s3s+8+QaFJ9Xz2HvKPrffuCylNloP0+mKyvU4EDQ1+oiGgw+XlWk947EpsWQO9rNUKIaz1MYQhiLyLOvxUuhesENU4O5LxOr+JKbJtGl2xPeO9lJII+viACiKJ24f/eVE7qvQ9hWhXn1icmXGhmhfyjS+zw63IPbc5DkA112E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719686063; c=relaxed/simple;
	bh=vxzphj3FBZrJiDuftXJGUORWyPXTk9vPPJGFW5fnhyo=;
	h=To:Subject:From:Message-Id:Date; b=bQ00rmUKIaw5hkYwGss6HvLGyn+EChXfEXq1x3CE2VIM5hPoghuwdoaHFU4OQc1+4yiS/TpPDCTYtHd6xC1fcKpkbHwU3qimY2Ku2eoHIE1e3E21r2EWqkrMoZO50LXxhS2j0w3MNFs0DbxBFBAivTaHBUAUvEy2WSq1knVrx8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvY0S1V/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvY0S1V/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDFD5C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 18:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719686062;
	bh=vxzphj3FBZrJiDuftXJGUORWyPXTk9vPPJGFW5fnhyo=;
	h=To:Subject:From:Date:From;
	b=KvY0S1V/gj8h/WyENWyXl4thvpAkPpaMTDGshh+TutvcWWkojB1KmFD3CdoSYKWDe
	 VoQUwkavmpMmiMkvNVmp+KlzQ/LO7LOovYUzks/QzbLaE51cGACe88wsOdr3034pFh
	 dFlY6Ld03Bu+QFZ9xn2BXjM3Ug9jLkk+9VYJiElWkmw5/XGSy8i0sSAzOsGuEdSKW+
	 KgPr8qmnHA+1cgdbp8AAH58CDLpRy5nWMSCwiugXXpCzUvIjnbwLgKkjD2U50OAD/1
	 iCB4ZewAefGFBx/3PmSHodoF64O6dKLWB6uG0EhhLHVeREINUW49v+U4cyf6VpoboZ
	 2ENhnU3iHEMBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C96BAC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 18:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171968606278.4997.18285311527986256833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c93d29173945012440e66f156fbab2bd313be096640168b3fe601dc8df739c20
Date: Sat, 29 Jun 2024 18:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719686062
