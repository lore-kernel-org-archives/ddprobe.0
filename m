Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6493F6606
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791195634; cv=none; b=tCw4i110Bigag9HDRZsoHgFUOX2o3hsuoopJdR18Zc6+b85l52BTwyVjo13oi5Li0ZHY0iHa7JVt8Za86VT6rU2AWIz+O3fCOci3mq98/Q8AMxjOMYPkXyNbtrrF/iFMRsEDzqFGJebzefyKRDhMlBQ8BTuAktrJiXUK5ncsOAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791195634; c=relaxed/simple;
	bh=+Mchoq62kQlmQ076aPdxMZ8+TsONtwb+w91Rmtn0TPc=;
	h=To:Subject:From:Message-Id:Date; b=kMLJ5eDtKrZz51wpLyzdQ2CucldRSKCvwNpuEjHSaJ+ocgCgBx0f3oLxkW0VXRHzvpkpXrrH4t6WuGDd5Mmf31DH8+0FwWvxU3CJSSFBfgKZmQSr+CddDTJDJH1uU+xqGQrUIooz7URNMzaRKQrQdhMyrJDUIJmVm903lfXbWcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6cBUHxr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6cBUHxr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4937C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791195633;
	bh=+Mchoq62kQlmQ076aPdxMZ8+TsONtwb+w91Rmtn0TPc=;
	h=To:Subject:From:Date:From;
	b=k6cBUHxrJQtxem1Lxn/UNQba1TX9vQgp1ZNC2KL6hw1ULilTlm0hfq2uc+aVWqU/i
	 HyBga2cvIcwSe3Oyc9kCNcjYSOyC+BnbNuy4AY2w+2hQyYJKMPiYrtbwDk4MaFgemQ
	 7L365w0P0WhSE+6Q8F2QtHGje/b/JPugsjbMEiS8Ne/9TiOZBOI5V9kqI7bAcyQ1ot
	 xHZK6Wc8I/0nBwWvJm7txI1IioJwuarPMr9MaGBQr3xE2e154LzbCZt2/UhFGjs4VF
	 tn8/TwvpFaBYqcOWXOv23JOY/FyiOq9JvOiSEwtDyrSaKaR2IyscXWSk2qKvZNCk2z
	 axovDAqU0PwAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE6ACA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179119563368.30825.3519425667154589057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da22160ee2e02c566bf74bfcab26aa9462f26b6f585d59f6c327f2af212b72a4
Date: Mon, 05 Oct 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791195633
