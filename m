Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B8D61643B
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787947834; cv=none; b=gzptYRipYPkxNfdCi1iR0H6F96QL9wdj5CW4Fgzm1vyrg6otFTcCsHiwC9OurvJNTWor56gA25/dQFpVGw3TQ/m8IIAhmgfF4NFhIVKpm5DHOmgWcKvp8paRYgeP4URXgeWvQu2h0/+jtPI2BxB9XWwmfSdfPogGMoTXDwgcn2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787947834; c=relaxed/simple;
	bh=aO+B+MDCioejA9UPZNEUu/7LqjL6H9s7/7HtuqxySGs=;
	h=To:Subject:From:Message-Id:Date; b=a0GTUlte7pNgCFpyVDNp5TppUV73t5oMrHofTdVnhcmb+pC0kKY8waldy1Y8Grhst2g11KXPp5mVvpMlAJSTrdbvgljr1sdo+pGKStvAoVHZjM4ID6H6uB6tUqsKSMZfF//VHiRmIv4+2Z+MbG0sNvvkRC1pkB4166+80o5y13g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IP8leMPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IP8leMPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36E4C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787947833;
	bh=aO+B+MDCioejA9UPZNEUu/7LqjL6H9s7/7HtuqxySGs=;
	h=To:Subject:From:Date:From;
	b=IP8leMPg+1vEIQ4Akd8S9g9rRNhQm/+5+dI8T7IxlPesZ1LXGTxzb25NIJ6ME5bAr
	 h8AymjtOJXXhgJFP1leR5SaX7Pt4X8S9tpXAuHKFyjVOIPf4wOfUduAdw/k6ppZ7ow
	 pHGEM9JU6a+Hlw8oPgtU5tiDDFmkD9PHdjrKHSN4wysPUIhZuOZlU8mXcQG//5i8I6
	 QUFz3ISHf9ecGnRZE65dGCtRbp73trHkDN00enEwxnV44iRdH8WHB68FfyBYhoXymX
	 BlaheWIZtLUqP8dKQ/DU4LcmCPlmqbaZIRAFNF8aeQMKOOzYnGyAjOhq0WlaBPzbQq
	 oA0BL1DYnoGtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB136C61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178794783369.23777.2086580575261324181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c023dd945b4acc1842f4753da8e7080cedd8b9d433816c28c054a194a0223fd
Date: Fri, 28 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787947833
