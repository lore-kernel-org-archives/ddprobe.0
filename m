Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CFF38C
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727136954; cv=none; b=KHpg73VDmuDlSPiewFFHybRuFY6A4pQ8H927GqCfZFJxSFtn3MZit0/P49Ni6ByhqLwoNguXsq3xXlOijldWeuAHy0J1JYFeL27H92tMIDxhy3bly3SaS74MLbGZdVHvsKYy5xF2cwD12anfLRr5Lwj76OR3ZAScIlL3fRAd8iY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727136954; c=relaxed/simple;
	bh=wI/Omhbxf6uJ242j2I6XLruWSL06DcYBU2ygvzQNzlk=;
	h=To:Subject:From:Message-Id:Date; b=e8kSvCq7l1DZoKuLtgriqNxWXBV8RC3Ob8/itTQwJo5Y6Nexl0+M75I9CqRyhDszxd9u4h0pI7oN0+3vymxqVLCOKsTdfIld4tChaxHEe1M29gk3iQ01MNAD+xy7i6h5G8i1lnYpPq0599tJtDbtX3n3TNNrAvm2VV/ts5l7//o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q3IpMkKH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q3IpMkKH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D19C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727136953;
	bh=wI/Omhbxf6uJ242j2I6XLruWSL06DcYBU2ygvzQNzlk=;
	h=To:Subject:From:Date:From;
	b=Q3IpMkKHNVPjTDpShBk65K0+UXf+eXy1wOwJ9duzWkzU8xhk1PTRBtgZw/H7GMQxa
	 Kuxx5Oe/f6FDIDGQHUoV9AN4Dt/qIG8SXkCxyLqR6lmtamP9vE1Grq3ovPD3u0pyEd
	 aZStuWworCL7Hnvs94IzwYOdhoTrP4DdA13ASgCv3oSqJR6iuEGrDAyRL9pZI2DIWQ
	 vY4NCfgVccisrrJBlQQR/fxvR3omKo/MxMrAdglJudZO3d+okA38KptvPlM4LeElxm
	 Jo/JaQjdeRgUHKCeRxGNsXEiRbUkgmZZYLNutFDDkOD49ds9pICTTsmIBEL2OrISFx
	 mThf6pGp9EN5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E7DCF9C5B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172713695359.6602.2841668288211781384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dd72c9e5c43ec57c5f82d12b38fd1fd704e495f97f43b77e7e3c6e897666393
Date: Tue, 24 Sep 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727136953
