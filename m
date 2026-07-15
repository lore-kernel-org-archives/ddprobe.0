Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FEEC3B14D1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 18:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784138915; cv=none; b=JLHs2RRl6grVIob5sXW3Q2nuPeIgKlnUQMQFao2qfxV9xz98xbUExHvfrMOwwnJqt98mQOLgdV1HCvcN6FqWvH2njldSFJ7p3ap5Ovr4MPlhtkkZ/nn1dawc3fqqROS/9J+vZjVQs3l2MVuYs3xNu2eVFLoiWgszpDz1rnnF+Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784138915; c=relaxed/simple;
	bh=f+zSB70pzMf88SEnLrVJKDR5zzvoDZD96yryFelafvM=;
	h=To:Subject:From:Message-Id:Date; b=QRnPHa5/hxoumhzFlTe8Y8s8k6nh8qvqtNFKyhhuve8LMSCcKRgKaML1yWf6TLYkU9TK8ijUhf9p67AVKa40ztCSmQr3uw7TuZLyw+kFYVvv+aAqXtZVDbbwrDjS0BWoJpa+8kNCP/PMS2Bf+AvZ9dyBtBTCVEtBo01iltKCJOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SV6MVrn8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SV6MVrn8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDADFC19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784138913;
	bh=f+zSB70pzMf88SEnLrVJKDR5zzvoDZD96yryFelafvM=;
	h=To:Subject:From:Date:From;
	b=SV6MVrn8tPd4BtkFMsB2FTSX0/gn+n215WCe9JObIOpkeqBUwnd8tGMLEul+GioWf
	 z8oQI/CzA1HYOTKrhcZpNDeGNsjzwccm9TQ/n3f9IMQL3rrXrPCI+zHTCHUFcol1S9
	 rKBsmkwEoQsbgZGbMO/IC0SG9vjncURoK4VR0Kr33JpIrAuZXaSACJVja7SiFmQm+E
	 ACcWp8OcN20gx3mBDNaoyYsgPDK86YZyake9HRygcQltRIX4wWT0+QcGKahetq+wPs
	 VnPuL39ojUNhRWaSE5eo87nPDgE9wxjcMGHH3INLPlLXqevAjUB2ldoNksydShf7c/
	 4T0IANRyPOZqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5095C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 18:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178413891372.5823.14332257583164811585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01af053ed6384081a8061bcfbe03f43bfb39202860b232c7fe3131e345c5dd33
Date: Wed, 15 Jul 2026 18:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784138913
