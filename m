Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3583916D4E6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728342354; cv=none; b=SjWr7/JWJVJyjrRssx+pnUbCQB23AGKOP2D8Lxb10uI7hhAIEsoRMEgq7hLEX7wI0gBsdEIWDhJzqCTU28Zps4pwfph98MlYuJIWVnjzjMgzCUV3nYsFIMx/cppfCub67JcwWckzz+vTWcdf7Kged/7e1jo8wgUhJNkivQa8UKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728342354; c=relaxed/simple;
	bh=VONykmGym3sUo4/iHLrx8T4aIHWqM76xGmAELf+Su+8=;
	h=To:Subject:From:Message-Id:Date; b=bR6geEF5ofDBEFUP5Tlo06FMUsKXfJGbBeQe8dc16kjZx+yRhZQWhsoZQkk5y4rgCa2C5NbYGEOBZb32sOA04EprxMWVl5lpETEV2ao7q61SPH3yiHrlypdf8DjQzu7x8eLR5BLLtL7IytlxP4/3cryvkJfT7f5TND95w2zNKis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYm1FA8m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYm1FA8m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E82C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728342353;
	bh=VONykmGym3sUo4/iHLrx8T4aIHWqM76xGmAELf+Su+8=;
	h=To:Subject:From:Date:From;
	b=KYm1FA8m2s/c7aJCsRdJ65A4ffTMFvdxXx/D9ZAeEzlI2yAu4/UHMiOTzohJ22wHh
	 IleLaEcMJiEKKjtGAx/bNSz1fwDELJ4Li55yoqU5CpXuUhOcAGudHtvwwrs/3Wb2Mx
	 m2zu57Fs1PDWX7c1tB2SASuN+1bFQ/6+PcE0UQpXO3G5Tm9WIsnQ1D5ngs+34yYkRd
	 y9HiQn66AL2mS230EX50JDJSIdlZiY+31UH0j+Wye8p7+KMO/rFUr4vkZZlHf8Oc1O
	 WEsfR0qXcCZMxK+nDKiuAB/w1c/q8OL9zNH2zNhLlp3MMVoDZafyr07Pu3v5FyCatz
	 DlGE1rYHv/ucw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9619ECED247
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172834235360.11539.16593789152537894799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebf3f7d4e9139f6563aef9a2e9d50a1d2f34d6543d5b0125a3210fb785b608b5
Date: Mon, 07 Oct 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728342353
