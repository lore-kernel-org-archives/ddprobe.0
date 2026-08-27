Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3100218A6D4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787803234; cv=none; b=iYnh7ut/ynpW8SZmHxEWkASjl9PC61G1vi0QS+vUu3ClfNNZbQx4bmZwdUpzEQxefoE+3TDulq3vKruoCFSKLOgGrKIjlmXHIKcXdUaw+19e3xYgSY0WcLVS0hPJVA+uKQyvbHCm6H+dLXtgzTB0SzC1A7wcdPyboflrSHcYdaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787803234; c=relaxed/simple;
	bh=Sr0beslaWkex0QNIuWuEV4shBdCWUcoa2TPcpIFr0U0=;
	h=To:Subject:From:Message-Id:Date; b=OxoJPZpxg+JI8pvN4OMw0rVbDeeIq4lMpRI1wi+ZJTODFPaGouaQD1SQNP0yw/P1l/alGrLLpE4mRTuMMGV8XFwzyb7DQS4FLM3es/UK5hEGVjEndew2t2RaLb8qn124n0OA7xWBP20pH2nX110bPn1RMSayh9N5lh5Wx5vNcRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQMAD+62; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQMAD+62"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4250C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787803233;
	bh=Sr0beslaWkex0QNIuWuEV4shBdCWUcoa2TPcpIFr0U0=;
	h=To:Subject:From:Date:From;
	b=XQMAD+62msbN/BvECO2TeLV68hEXulBT0K2VeZ/xbMwhEvMoPpgsclP1fbLFCwGfz
	 9qzndndfxoAheGsc0A638WsuGO9Poo6J2Ff6UKFftv2A4ReGFL7yjPRg9j0nEKlH56
	 +FlsOi3vEOMjM4w7UmqQJHjEYU8HKdMwcxkGaUeoZq1sh90GOmzkIFPSBA+7dJjfJT
	 992fmZQ8S7HZiyyUWhVqlsbvgYPvfZCg8m9Dg1ZEEaq0UtcNT3IGM4RyAzPJ01Po6F
	 R/fhA6tqBZ9IxZ6uezxOebgYwEBjwswPNFAXKS7lJZe9rnt2OqmzwK4/RCLCPprdPF
	 rEd3oAB1C/hmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15E5C5DF9D
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178780323368.28586.13130267005307396506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb2087d1ba63bb8f4426bf046a6415279541b6f3d1744a94f694fb3ca9ad3e92
Date: Thu, 27 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787803233
