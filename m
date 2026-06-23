Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 846D914EC73
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 00:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782175594; cv=none; b=ZjQdnk4Wie5pHrzAyrzh/HdAXFJas0projadc/GDk9+aZQUyNSbLlsnr3C3moUD+Y+Vl1ThsTzEGKarferzVYsvA39hbdXocTVN6vYE2nvkhyniR2b/XJlQ+/0+xeFZ/FG8bo0jUV5E804Z1l+qWlJAy6j/izG4Ceo8zpDPLE2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782175594; c=relaxed/simple;
	bh=kWXY48AZQ81nMzUlsUj4zo0+zUfjNXR9WaK0Z+3W3Gs=;
	h=To:Subject:From:Message-Id:Date; b=p4aZkhvj/yQ5gPOmx/sVA/bRCPVyBApVE05gPrdo73pyktaYSYqtztze95AIXfH9elIGhohVolUgwIvg/SmshXmKezLZ0cJl8R+0iNCj3vCefkKYggz0y4NpT3BodKjjc26OyJjen1xSHaBrZTIWG2LMF4oQM2HVf1nlq+Rimhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDv/5dr8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDv/5dr8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D049AC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 00:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782175593;
	bh=kWXY48AZQ81nMzUlsUj4zo0+zUfjNXR9WaK0Z+3W3Gs=;
	h=To:Subject:From:Date:From;
	b=PDv/5dr8Jmw6OXIrxW2qMBUb3M4VtO8i6Vp3R9W9obESQjUyAtofUx+/hGy1LL2Wp
	 qmQHiRcMBkU4TlWAha52ODBxmQlyhBy7HOZXzmoC1dswXO8PFdeLjxIk13klMHbz+E
	 DLsHQAkd7rtwfvizGX5W545ve6RbvVnrhAQviGwutmCPaKgNLSynI9TH4GdGhFmNOm
	 3zdJqTkv0DhMZ/cT+8kJbYK1SjyS65N5PT7JqEOM2jepPR2pkU2gBDmXC6Jhef60mx
	 ycm2D/5paXNyBtXNPMst05WWBAc/KYwtQ4qU16TKMJnAX6RTFXNdpt4modKOdHOvGz
	 Z+dhcmilYcSZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB875CDB471
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 00:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178217559369.24390.9048159229711218452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69490c2cad8a79fa0777a423b722af89b51b8af2ccdea336190d2dc62fed1f85
Date: Tue, 23 Jun 2026 00:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782175593
