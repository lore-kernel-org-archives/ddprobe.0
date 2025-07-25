Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FABC1E25EB
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753416594; cv=none; b=ds1cxyCIb5cBS8iV8HYP4MyduSrUihzyt6wYXIkPutI2lpa+w9Ae8KZSC0E1O15NZa1JkA8umAf+9yGmEEk4U/5q+C3ePKrMVGDpw2OtiM4XjjoTiKQ8ZAm26L67jliJq8LdnrGgqlnLNhK22w2H59WtJ+m8gpB/0uokszFCIMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753416594; c=relaxed/simple;
	bh=6X+sWmyRLJKLwJnL0PhFjVn5CjuZT/OqdqgrV75Kjuc=;
	h=To:Subject:From:Message-Id:Date; b=JOwn+qWtcy0HDYo+jcR7ZccQJ3r0G7YrhkU2U52cAEwAyLTSf5CJk+a2K4wT/1G9rWj93C72fa4qPd5yg/q6gIgRrSOKjxHkX+TmeiRfGL+9JK0bflTtTk/zU8RPCwqxE2CdoC+3icVSFVoNzjl40OoRF3PyK8wLhQm1UyETa7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrVst3wX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrVst3wX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37EFC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753416593;
	bh=6X+sWmyRLJKLwJnL0PhFjVn5CjuZT/OqdqgrV75Kjuc=;
	h=To:Subject:From:Date:From;
	b=qrVst3wXKUgVmg2FUKOLFUeevgyLGB52sKyMWndZUp1sIGTd035WST1vkL5r4Pzg/
	 mA/TpVrG0i1oZ3LlDLjRE6Fo9C6BDdH4NGjX/UZZYlG3PqaHOqPELQ/9hcxTmkC/x0
	 4BFAh8tPBtHAqFlplKOkk5oFkCK3Ksd51C9btRshGWt08I5gxyr3X1kCjxiiqJ3209
	 cnnMgjQVn9pL5lgCvTRCDdGsZqwMaRTKTVIEEkYy/z22/PXPz/lqVuJkJNtPly1iS8
	 tGgtC0UN6L6ZXgjw8SAyszfi8Ys2ByK3JDsuCs/GbKug0gnkbBVu9nMvROi9L16wXI
	 PcvSiu+VIrnsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FEFC83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175341659358.15652.6376751024972235424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a66530eeb531befbc9f80eeae3d512ff90b94d48fec835e81778cfcfbf318b9
Date: Fri, 25 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753416593
