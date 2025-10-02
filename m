Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239BB442C
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759369194; cv=none; b=EplQC0XFWzYwyLZpB5mLhotSQkhdiuLhtYJrsPC88AL6xbzTgfD5FvWhVwrPTbFaxSrNDdMEiFkwFixPh4veL9nTsAX1KaB0Wer+1rFYG/X37mfUbEnFMYbNrvhPd7X4S/SsJlOXeQP0ucVTmWybnNZ5AVO82ycVTC6FS1yh79U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759369194; c=relaxed/simple;
	bh=RNbXCRvPZTC899KTCZ4fOivwyfgpPg7WhcKt7F7i68Q=;
	h=To:Subject:From:Message-Id:Date; b=ffidbQ1UCX9tJ6ol17lbaIQE53hRgrINLDBPdjSb95l6kWMYxS0PG8JNWmcPRRGFT4j9J2anTE1uRlaJowOnVnvd96B3qTKMuOf/2Thcp3RTuyn5MlYKQRYrdK89/xkzteELTgVstb3IzSmtx0A5MoRdUsRvBpRuUsGgIg9jRGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RpnOTX/m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RpnOTX/m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1960C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759369193;
	bh=RNbXCRvPZTC899KTCZ4fOivwyfgpPg7WhcKt7F7i68Q=;
	h=To:Subject:From:Date:From;
	b=RpnOTX/mhONfZtU2D5BM+4o3lJVNSgr1RrmuxodgT6kiIdp6bSU1GVxi12NMsc4mh
	 mNyVm8ybOKuLOcKA6T3QBIdBXWKlQsZvTcgglKba6cOkvzW297vuUgyYVYMp3jhv7/
	 szIgnE2BmlUglXrQie6nBmcLooAAsDQy04wCtzohHsYM+mNw5O4T9eQFYV4VFvfapr
	 CuH6rqMwfNF7nd8wsLNMG8TkWgWc04LxYU8eYrjnr9IcMRe3Ea2gze+hDThJYsB5U9
	 MZV7iUW57ajfT24GRp2dLUZrgNRpir9Z1uD493CeXMoMhdh5ugGtS79VyzWBGexeES
	 MlS1/ilimSUHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE62CCA470
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175936919357.10641.4634104329710137699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87700bf92baf0c60485e167c0045cbac90617e46ebe99c694f7597b4ebca5d2c
Date: Thu, 02 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759369193
