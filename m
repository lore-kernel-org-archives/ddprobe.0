Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0103B316199
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 10:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778841034; cv=none; b=I9RV0nr5wRdqqQ8qlpiER30KY5mZ8X+c2DcUv/lwznuTPMLEF5msyCBJIhuS2nHEceJCfJ2NiOdfXV0BEf6Xd4gvuJFc8mX4tDqAyB5NNVdsNyaNIiq9v9tzAMoIKC46wwMU1lqxxz8s+Nqg0sIf5jtMrNXB3at1Te+MN7wY140=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778841034; c=relaxed/simple;
	bh=9Qr0+LUqfgI77q4/pG3in0pBZOgcDF7q6N4dpDZ5/+U=;
	h=To:Subject:From:Message-Id:Date; b=Hv37Fo9iAekjLIC8B3t31SLCfpag3pjWZjM+WWwN/2VUa2+tjl4K9DQwCh3tOPE7eoGEoE65qFrv7LqQhSg1ygH/W0AslVqIhzlY0N1MtmhNyhPou1K3xEktoNu8hY3EqYufMi5hvLWV1anBcaPlQvTgoqj0l+aDIp7F7TIR8Kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACOK1UQt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACOK1UQt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D04C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778841033;
	bh=9Qr0+LUqfgI77q4/pG3in0pBZOgcDF7q6N4dpDZ5/+U=;
	h=To:Subject:From:Date:From;
	b=ACOK1UQtByg7usUctsv1yaDzUTxf1rssviHNSjp+eM6Bsu3yWb3r17w2noW6avW+G
	 EdgGWn9eA34TxGcHCSGJy1WlHEvXhGYAIhX3y2X3vNmd8Lxf6oIbZsAIlIJiaIeHF/
	 tTEkaV1kODpRl1UuAAfNuzBV0PZhvANPKDqW6AGJFk+Ui0iuEs6AsIALV1iYZmgCjU
	 j5uwuLsbfnmJ1cLfX1jVBNTy0Eeknr9pKZ68Tp7mCJ14Wy6ofWv386IPepS0c1jzer
	 a367tvgN5a+lCkB8ZcvS8jOMi7cFcWcDEmdQLZTJH0T0/93BNthjGWZfcmjWyNHo7A
	 UUnF3GA1KnS0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC160CD4F25
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177884103369.2749.6185662523300027441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cad8552fe89a5566100d13f3c3ada1d06a8bc448e238e0cc8b1648f4504bce1f
Date: Fri, 15 May 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778841033
