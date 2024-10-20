Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1F47464
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729395354; cv=none; b=DUG9rXowIKLPOPYwi9+XGyCD8NZB5z57SzXKjVlX1ZjKbfG11crQmoVqsONZLNNiLSOiywlO6KpFhviwsZ/IIc34sWyYbwywQG/ioj1mQnqo3fVp+UpZa4wdnPYep/zE4UMs2x2kgwC3FTsF8u0cVxD+Az+KISrGo7ICOqI87Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729395354; c=relaxed/simple;
	bh=mhrPuTLrlyshtguQbSMNd8IMTGEHOF2sIwoCiJj1urE=;
	h=To:Subject:From:Message-Id:Date; b=Wx+PtptT7QYY9wVsVfDxYzJ6Mp2A+UCQ/AHuoI/7nTxUHPm+W2cFLEZEMljIdnygWrKAAjmh01dIVJ5N+5bodDrl7gX2hLN6dsvRDA970Es2wOcCGfZNySEGV6NbpMMHx8IcL8kQqLiVexKRUlh+tP+4BsAG/zrzU7HyIzXKaFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmXHJ8pk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmXHJ8pk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B22B1C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729395353;
	bh=mhrPuTLrlyshtguQbSMNd8IMTGEHOF2sIwoCiJj1urE=;
	h=To:Subject:From:Date:From;
	b=tmXHJ8pkNRBYyP90DCPxso5/1iz9oMR04cceV++A1JwGzvmUMsqYkhqRzzUX2EZZ4
	 jmpkjTQAzkq0ESPu0QGEuh/epQw6zmZmeAW05CNNttEbgPP/Z5bn5HcK4VIW/bXdzd
	 yWTOAPQUSUzb73/kTDDdf0+Q9IkmyaMqWDNPU5KaztWioRHkpsZJWncwWn1f50aa0x
	 NaiOQEIw+WeWXFDdtEXQKHxOkwlzIbBOTCAhKP156OTtwAIT58aEiOG2yo+NOYsQfr
	 3AnXAHniawH7bRSYn6DNxyJqJ+8wBYJZFKY3lFOkCAWt89BKOhnRrKzvk4OrhTVtpP
	 rURIuzZZxF5WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CEDD3C927
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172939535358.5047.8956413561667872387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9681a12940d9211585e674029651befa331f59e28f4847c32854f397b62c53a
Date: Sun, 20 Oct 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729395353
