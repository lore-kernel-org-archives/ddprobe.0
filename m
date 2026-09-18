Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E67830C161
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789691435; cv=none; b=OZoZ7pGItp+2SyDqC8/9e8JG8tNRqwNidvK7q2mtbOx05DJTgPatwm7fOW/HRtuh0fTqAAWD6PEfDJy/Q+M1Wni+nrvZXH5MwBsRcHpmZFPxGFsBME66Jc5oHOVW3spMUHgDBOGPSw8J2DHPoznD1PSUv0icsc+KAkUBn0bxfmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789691435; c=relaxed/simple;
	bh=TiOwz0qdgnBVIzy4tCtqZ92f3FeyRtxokVWTtctfBPk=;
	h=To:Subject:From:Message-Id:Date; b=kDj7B7XccLAmpWBV0Uf6s9di1HL6ojxIEF7ORpo4t68opnkn8IbnfaXc9MZ5pGHEuDOhXi8cTwQtfudSU562IdNQIb5SGkbcutd8EdXyu9d3AmCgXdpZUp4fKzKPTD0dDMpLqFj8ESE1+yVWFf3UjSH14Ej4CrjcHoJxI4nO9Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yy3tuAkC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yy3tuAkC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7731C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789691433;
	bh=TiOwz0qdgnBVIzy4tCtqZ92f3FeyRtxokVWTtctfBPk=;
	h=To:Subject:From:Date:From;
	b=Yy3tuAkC8wJ2AL0T2chs/e4/QL1BLUc7w1RRv5MOgzJ1TVwi0c+h2iGVx0WN/NBUB
	 x0bFVoNs/CiH8PQIlO6EyMRNB0TDe2zy4GqEBnUhD2xStqBY8VNJOU+PcFvgmyU/vU
	 oQMd9nQVBHPMDSw0ardeh6INuwZhcIVphZTF2IT7Ngbv8NOv+CpEGp5WLIIzFyn1JR
	 oEkpaNk+S9PIyHBHg01sW46srR39eEdGn5JO0sfwZ382yc6aeuZ37e+/xJ1wAZ4yiD
	 i98YGO/V7N3kwR+aKGpIhuauxXtf7XA91Zj++XAoHlu4auxogRYjIC9mrc9jHPytgZ
	 GwkUpR3/QOsCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B249BC982D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178969143370.7155.10850437687172722545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e139f138efb64df468c0dc2c11247c3c9ce14619d878292a5c50eab44b53c74
Date: Fri, 18 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789691433
