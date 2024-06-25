Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7053716EBF4
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 16:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719331403; cv=none; b=g5G3lb1igH9PY/PafcEOyhg+EAhvoWjKyyZZD5sR814t8kBDxAy5U2kKjvTOR+Y/xhnC6FQ3BIcoB3IJwMjhTAEPaaj9jeVTZmFuzjfUIAh6L9VDPnCbaur9URO+wTgP1FWaJ9XukK4J47jiMXLsR2gLy8B6tnjdQJwEwhVHPhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719331403; c=relaxed/simple;
	bh=L2PVd9oQEs0CTPywCOTEKG0127y0rREsUG24BOkCBmw=;
	h=To:Subject:From:Message-Id:Date; b=khH2ef3EFgNXUE+nes3L6JuptgrckoVZMkn8WRxtqvjHlWPpD07Uf7D1BqspyUgTOKHv4jLyRLvbwOzfLif92pGXgo2AoLnK+vClqle5f2rFA170bi+vTJ0HITR2UHDxaFgsAl+tvUfBPRuNNfMWqRHg0Lu1p5u/oS0qAv2zDYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YqC5oXPG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqC5oXPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F00B7C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 16:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719331403;
	bh=L2PVd9oQEs0CTPywCOTEKG0127y0rREsUG24BOkCBmw=;
	h=To:Subject:From:Date:From;
	b=YqC5oXPG3Hit5d4/Nyj5I33ZjGXBVWs/GuYYownLdFJsa05D2sNDGCL0Rqba2VbJl
	 2Z5WkZsX1PsQGz0Isis05TAeiM/aRM3u9maFRwVsWxNctTcBBXSiuke8cOlHE2sqy2
	 ilUL93YIsW9f5mgd27e5Hx3nKZlGj/WmDqX4LiOVaSjScqjgErDbM8jaxTfsERSYN+
	 5dG5clyE+opjK3X4nkY6//P6tvNff7PxSGKvQvi8VcpIIadmn1bA+T/CyiVX8EJk8c
	 rE3Erpp29U/Vjkt6NGRB0Qfdm+2nGux02PLYzFfGrhjGUpDbrRSfmdTjipPWQFFdtc
	 +chpqmDtrd8Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD385C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 16:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171933140289.28375.13214392529926047693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5065361a49b98dd6d8987d6d190db46ae27b9c2ec3f1f94f0c85143932745266
Date: Tue, 25 Jun 2024 16:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719331402
