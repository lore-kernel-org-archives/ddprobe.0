Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312A2185B7C
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727431554; cv=none; b=cia45DZq3yota2WOX/+v1Q9trrJieStzXT48m6WgiMFqshYg60lLt5tyr67iyygXkTPXoFNiRvpfTn21ifivHUmuVDw024AYXr6vHEdCca7+B4aX6DSYUNjT12OvuxvvKR8xdkFiF3uESB2rBjG1+9FPe0plupp/lau3btYEC9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727431554; c=relaxed/simple;
	bh=Kt/BiHQf5GIKlOy/qfkAV+WOAOvhXpCgavPEwrrXlRc=;
	h=To:Subject:From:Message-Id:Date; b=Cq55g+KN9s4gdUaCSyqDpeR3KRgm7QCANi/OOA2SmIfuLAtiKZVkLO2jU+6BuW0FY+5jzCDZazbWEcXpDLSJw7dVrT5QKuIgMqDxdZCHObQJaDDTXIxqQVR5T4Z3gW5smzvR3VWRpUuj8Kzga+oUMcqsQlrUMsojAQUAe1c+qcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCy0W85I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCy0W85I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5642C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727431553;
	bh=Kt/BiHQf5GIKlOy/qfkAV+WOAOvhXpCgavPEwrrXlRc=;
	h=To:Subject:From:Date:From;
	b=BCy0W85IJ6phtnxIFQuXNHKQtq0A4F3w91pduleBiozJ/M0cJgZ8mYGKLMcqwqotp
	 3ODgpqYQlu/pFSNFY0guX1t9ZVnAPnRmYc3MZB7s4xg0ERw2diFm1JQ3KxNTun+ZZs
	 +5cz5ToezH4s0K4BAqIhcBFHbCuMk3MCnLCgcHFPYJRrvFSc8i0IUjZ3u0YMyiirO5
	 xTkvs+gm2/d63n0kbcAKBstaRtfHhaa/4UON8jFVWe+ngVsq9dODpBVuF30TI409hL
	 uxsVylBACRm3ERJpq7YYFhmcSetIFrBe+emsa8EP45G0ce0FBkHiZ3u6Suw+fHNCE7
	 IOCN0DrnKNH2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC9BCEBF8C
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172743155363.13109.6813387292909652537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c3064c72907b47a1d8f5cdbbd62fae3dbbd42a59fbac5971bd61abeea54b9bb
Date: Fri, 27 Sep 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727431553
