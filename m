Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB5C345758
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756501194; cv=none; b=cS0QlPp2pgwWYHtvP99saRkxDN0CbRg3EsM9hYsdwl+x44rc5zohF3dBMOpRArlBny7rHkjJlFAugBBZCJUwSENWdKGDI6F3Bhs+rpNL2cFtJlWeTg2U2mwRpAk0ZSZtRt/J8X5VpWpKzIfgYTW/CYTkuYgjVnlU/mm2G28FQNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756501194; c=relaxed/simple;
	bh=nGNfnpKdj7Hj5G/G6vvabLUkTaWI02c12e+AW334scY=;
	h=To:Subject:From:Message-Id:Date; b=t/PVt7GkUSHlBY7zDFVmM2QCo35mmxOqTjoJfIluCVG48jpZYnZffE0Z3dTgaU4jiTmSHvusBxPfjnUZ4iHiCKlS4c0N1ndRj8B9gIR/9eunfVYZqk8UQGaFryeMFNV2/xiHDr1EbDlRV+20hks3GzRsa05blmCkWmC39+tRFgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c6bPHSet; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6bPHSet"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E78C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756501193;
	bh=nGNfnpKdj7Hj5G/G6vvabLUkTaWI02c12e+AW334scY=;
	h=To:Subject:From:Date:From;
	b=c6bPHSetKYik+b0xD5hgJCCTxjJhCJmoUdZHlnIocHW9+QCPTA8SodgkrYCAnZ88s
	 Igvq6U0LNGyiGGscPkmsMCGrCEfvlMwSUrdwqRItb1cVnMopCH+6KehKZ14iCG8enz
	 Rr+yqVVOi68L11SeSRgNZJ6yRQKSqdLhnIEYrU6g0ACU81Bkoec2h/hC4knYjaF4wP
	 M464Fjxqo02jEsnT3ohCZQS4XEXZu4UQZqYAs7Tp1+A+PRBIpk6qD4yVHgzTboGW2G
	 GNGN36j85f5Fi+1pSUei4mUgcvjmxbphdKTl1OgBZOwwax7uyy+Z7tNl/zd7bpcdFk
	 jFfhlnnnsRuAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AD4CA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175650119359.11952.1911624926633330677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34a64eb8cdcb47c1c97e7d110d902398d0e235209b293132ed3c1ef1dc4847ed
Date: Fri, 29 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756501193
