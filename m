Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E983101BB
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767161034; cv=none; b=YYTFb22pa2imOPNPYn/J18aS3Ls0Q1TcSaVhyKdOtfPT3EaaYFnVOYnBlIjYFiJHhue7GGKyQ8d3eYZkr3Qu+ADguQKUIgorJqpXrUWh6WqJ5KQv29PoRGdDIY0+8Hd1AxRnSmi+fFNVSb0wyGDwHx4Mr/oXnOTZtWqPBLE6eUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767161034; c=relaxed/simple;
	bh=muxEVjxdX5wqrZPxtUVce6Hyf/WiGW0haBPtiDk639I=;
	h=To:Subject:From:Message-Id:Date; b=j3prnXVIv05/bOOsTexU2I/rMA/6yFua9hIm6J5UgZexQ20uz3wAsWVd3elMC5b8t8Vo3EjPBwSqL8wMU36nDdLEZbX8koQJLFMRgWIOsWsKmENjMC9pVfIhqEQnL6UWIIYeD7XpZaW1WjuIZzmz23P4pBt8IfNoItpcjgBHltE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOu429sq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOu429sq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0476C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767161033;
	bh=muxEVjxdX5wqrZPxtUVce6Hyf/WiGW0haBPtiDk639I=;
	h=To:Subject:From:Date:From;
	b=tOu429sqGQ7r+b0buBTrqAT001jyoPdgo+rdPmcsNRWGgQYZoWFB69ozJHAUu0oZq
	 4i4v6vGaIkPWjtslPQKuIqtdAmy6bLm8IwSt0isiQ/SeF8OCceeMDnH8PE0hTwSNXR
	 6HZ5ee4k4ibZyXyzMBheit9f8BmoRZop5jJcpUTQf6PzqNiuyosFvIhC8wCEzDcpc4
	 FrpkrtRaD8irP5lKNy95oYkx+v7NOckiQGAQ64yR1n+0Oe6yQi91PalEQaMZ2MulcR
	 WKGQnndc4ecqcrHL809EAuVcViYQhln2XbOGkhrOAKTvu/6MeGu7aKCuIQxvmDAVEf
	 m3bueLMIW//VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994ADEE57D3
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176716103358.29081.9677259250650866079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 364540cf3e035566b08d3dcf05e2403ea77bb0d1de01ce5446fc17523320712e
Date: Wed, 31 Dec 2025 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767161033
