Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF03322E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750391394; cv=none; b=t3ByBsJ0AtyuxOIJZbTmfOd2ngXX1IH0Y7s7J3OPE55uR3u05mxwTIF+OXTkVlMmnVlecmyy3ASgyWFEh3ezz+x9txONRqprS7nYD578lqR8BFegk7dK85r1C8a3tz18j+ZoqCbWKMEN9m45eFYynSqO2ipuFVH1hTiikkcesj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750391394; c=relaxed/simple;
	bh=KgxOjbIG4KlLCpcLrIXguW4PixV0iuhguldBzpos36Y=;
	h=To:Subject:From:Message-Id:Date; b=qxdmwC6Mvb/AkpUeKJ5uR9L4GEaUYE5ItksDOmDrCGEqc9vJnULL0lygXWBZD9bsfdachs1M2Dn4VwCQ5tbdvEROcht98GEqINHmptFXNEVZDum/z3RfuPX2nanW7UJpDUfjNAurtFnHGarXkktxIcl+MRLTCaQuqmoSxWxNNLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYVCc1V4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYVCc1V4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C1FAC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750391393;
	bh=KgxOjbIG4KlLCpcLrIXguW4PixV0iuhguldBzpos36Y=;
	h=To:Subject:From:Date:From;
	b=pYVCc1V4yb+pCri1uXZO6fpkJj1Hga0NCD5w89WHS6kxZDShocvYlUDW+wEeUlyGn
	 yPO4bIU5XWiPQfXl0c3h8js3jZxlIxRVP/K/yt3tasRC54QQrRs3WOxQs9djxVsncC
	 1TKoDZF1Yj1a3R2t/0bIrF/cqzWT3M7I/R616XgZOeg3o3Z5y9JUAyVjDsLeGfCxov
	 K7siyxKYySsYBVIX1yOR3GbSVnGqF3Y2myjwqhSOoEbblplQDl7kwbTC91QihLIaOU
	 cGwf+x9B//m8SBSJAJY9fItUzRwNg07d6zPjIpjoKyZX/K7xvOJvAJ36ad16eyyipu
	 EF547Vgwj/odw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6C5C71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175039139357.7752.12560028719784499618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d72e7ceffb03da0ce28e952b60c5648b7542c82cf283e3fcbc63161ac7beb922
Date: Fri, 20 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750391393
