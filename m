Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECFF371065
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773270893; cv=none; b=AWfuUqwLHXlPmXgBtIO1GdHtFB4G+cDbSH/Pi24F/mT4LMtRVmCWlY8IA32boJ/LrIk/m2H7lA4sgRV/kHXlEnrNrv7vejIgXUPnQKNMKrDv2x2s7q+p8L1hxd9Aupp5NmD/vSyD9QWnANZJXC+82Bnxc8xkvg04BG3Cf1lB0nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773270893; c=relaxed/simple;
	bh=/oBJ34mu/iwh2AwM3/HG76GSIH1esMg/UItGRJG/Voo=;
	h=To:Subject:From:Message-Id:Date; b=mYIItzAdW7BWL13zE4r+sZ5Kv+D10cSHD8Tp1JRFTl9OKlUz74kqylB871+lFR6OLp/o5DcD/KTRwXbyyJnNJdY2UBrDh+fVFtPXQKbbmjFj3Vd8P5ghcA3eqKfckd+ra0DYA9WSyIAp4HND3VTGFcVnDOhtXXGlSKiPsKsL1bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UaxycA8l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UaxycA8l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F2DC116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773270893;
	bh=/oBJ34mu/iwh2AwM3/HG76GSIH1esMg/UItGRJG/Voo=;
	h=To:Subject:From:Date:From;
	b=UaxycA8lbzqbQaJ30evvTf9OwxcOIJM/ONB24dNcz91VYQczC4EDTbQECrawBzyjK
	 sr6Ur2ZEkBnTRYvExDydIspT3yuPoevvKdsiruVED2GehSsQYI8xdsZEgFTaX7kL3R
	 uSmCILXqtNXHTc5pimEl4s39XWdCLY+qjlnuhus1QYZ8Y7mdMPLsc5m6lgoaiPU3Bg
	 wgyJ00WucPICVT1je9fthr6YfA/J8wtmRmOUpXa7AG+gNefZJzzD/kAwJ9535S2ARG
	 qynRK2kQYe4Tft7ubUlYa1OyhX3oOgCifHDhKBkX9fYRln3LjWYL8Hp6Ub4bM2mDvQ
	 gXl2q4jCshusQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917E7103E2F1
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177327089358.8861.9422661310704291751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06857c86e843e293862378278f43db7e60f7818030989b7f850e54b452628e6f
Date: Wed, 11 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773270893
