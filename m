Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368932BAF7
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745401794; cv=none; b=HJ2h1Tgv74bInlwJWvgC3k3RFinn9UdFr+jOtcdf6dyk2bkL44bWjwbeWyS22fBiQsT6RsoeCq/GX44US4LtRD1deo6KUyNvb5vlT7Sz5ySG3Xv9FtLlJyBpspLIXrLl70deg2dcxwHHddNFpJvFuSGUwxofZzAp3O2ZlbZcSpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745401794; c=relaxed/simple;
	bh=jj5mjO6CEv7vLHVKEShnTGG+vjkAjKQyyRmbt3id7Mw=;
	h=To:Subject:From:Message-Id:Date; b=Na1CROqHvVGIB2C/JvKuDL6xCnROnJS3y9hWSAbTVlimMZBLj7Un5/Q7J1YyQxB289jzghjAZoKC5yw9ijz7+h0x7moilBuv2mnELCPgG7RNmquF2SepRVS2HWLc+cKjRuEoLjyeFtzUH+LuAXd8+YIghyqIzQMJ68H10oXYXcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rq8tIhqJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rq8tIhqJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0912C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745401793;
	bh=jj5mjO6CEv7vLHVKEShnTGG+vjkAjKQyyRmbt3id7Mw=;
	h=To:Subject:From:Date:From;
	b=rq8tIhqJo1YIjDJ5Zk29c70H2E/OmDkch9Sdk490f1G1bQEoM5gCZdsV1WS2YFPCl
	 AZoX+h48zsdoQeXZHatugpbklsAaotPkpA3j8S9jiMLPjXAWYDsQnH4vtwtzPIsBZa
	 QHco6hGwmvddwFwaFUJYmATH5dWYD08pb3EUTbq14ikzQgun0dG0UF9lDauHxyBywM
	 g6rbPb9KMFI6f8m4j9ld8hIJd9ik7dXrCMscQ92AOGoy15pOybPcNaoe1FTEmumFVK
	 NtH2xHGqUO25SXioeWPcfSTfiShVGMyNLjqp1+W4dz/KqYtu53zmijOXRKJIdwaD9I
	 dAqqQT6fztIJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F47C369D3
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174540179357.1547.3065795664007085685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52e01e95966b869e659f7d2069b26b7bdda6d12b517d66cf2c24ed3c5dd8d0ba
Date: Wed, 23 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745401793
