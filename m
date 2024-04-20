Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A85A10788
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 20:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713646223; cv=none; b=AHZjkIcwymNZcQxMW3hw5jA38HnZ15byU4CzHeEdHgB5vIZz29Br5/tZus9+7k55RG7l0U1QTKLMqG6EHo4+BQItOeaF+hJrNhqguRZhv6JIwY+mWTWEt/5R/YIMe0AeeevUJlSu2DB0O2gReazETJcK3GRxt71g/JuCvQva3yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713646223; c=relaxed/simple;
	bh=hcoZ6eSjnEHMlHvMunzIrLewrqBuISl7tbZuPpq+r6M=;
	h=To:Subject:From:Message-Id:Date; b=C/0I00YFCiIMo33+jH+37h1nPkUT6qmpn9FFHEjFhm6Ofe0K+/+X2s1osEDig4SunDbXSiaGFRkrBoEjjbtvRNdJZaE6VTP0huqpzkv6IKynDblRWuN4S4bAzKG3bTSetFSrffo4durqxYXjwfWx+Q98AUjihkCkhichoC3XtME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cShWpBaD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cShWpBaD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA876C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 20:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713646223;
	bh=hcoZ6eSjnEHMlHvMunzIrLewrqBuISl7tbZuPpq+r6M=;
	h=To:Subject:From:Date:From;
	b=cShWpBaDfABs5EtpY/boBMeHtsJ2/+I25HRqDK1Ee76gc3GFmRP0SqzGSH97qxMol
	 0tZ8YdwtKFJ0ibLr4mFh2vXHgmtsZ1cn+Bsf05kxgL5c7xskVYf8FHEBzLGP7D8u7b
	 tYI3q5usNxZVy3nkfy1ZdWfHv+uiwEDXRbKFeM9Ar3GulgYqhR/TmvnBNxIOrhrDSJ
	 sKtDli8avckIrknoytmW6nAYozWp2LQir/B7uvKPNBt+a+1UUgA09R545pD7JibJsN
	 RTa+jp0s0wRv/o/qQ1DteUx/q4NfCqlwsFcPeCtX5sJd7xBy6Ym+ss3fO6HfuFUSiz
	 wuFBJ0KlOEF8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0ADBC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 20:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171364622281.20979.11029866219377847225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75185d6516f289cd887c52b198ff0a55c798d40f3805c0dd730720ffed47290d
Date: Sat, 20 Apr 2024 20:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713646222
