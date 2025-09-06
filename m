Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6D41E51E0
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757191794; cv=none; b=c6KW7597TBl/77NCrhmxvgseYaV9gHUnIXlVAisk35hdwP2ZxMv/fOuLQLzjSQpjaECWUcP8AJUcjEzwu5BpYpe349zjYMrpC3HEcrrJSvRWEFI6QVTCcFpVVorD7IVfsSK6Q9pH3nO0+IH8eGtcDwhflu38vXR5iEFa9k9odS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757191794; c=relaxed/simple;
	bh=gfEY05zF0PHs1i+cSsOZKeKXxtLHfYEc3K8oB8m64/o=;
	h=To:Subject:From:Message-Id:Date; b=jzXIqPohbSvoj8ZYCVoga6g0vs8/xbaOapvhwYq7B/5oq6e3wUmurLwe1mOHRSXpPAQGziVI2tlFL54tOfx7kyaVM4w9uUUzm5flCYcoC/NI3m/vVWy0vt+fgxgZgbf7QJk2JSau0+B790/mbs+5ROKVtpvBGpbgjMtWd5iZRtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGsW5iP0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGsW5iP0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E10C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757191793;
	bh=gfEY05zF0PHs1i+cSsOZKeKXxtLHfYEc3K8oB8m64/o=;
	h=To:Subject:From:Date:From;
	b=gGsW5iP0U4gvnTzE4JcIiAo1Liifzw2OqncTjY7RAN61nTWzeaVD+XPqv62lMUKr9
	 nxRbvinxYlUiEl6sxcyd3RZPwYGbRO8oy5MrPNi1MdUZfd7iRmEklzEl9uGxzHl7l/
	 N8CqVZ0C3BpabYs69xfBGY3lQIbhc+skVuN6yE8pWA3tyijMmkKNBxGb9g4gEoxyNn
	 YyunmIBOT/J+/9obPZAZ2Qv7c0fa7ZYcDOzCQJHvGxZkXd8t5a0UYTfpL72G1GPDIQ
	 0kaHemDQSEB+ru3k4U+Gg+3ksLR2xC2pxJp32GYgd6b/Yc4YvPkAJKIMLLnRGcoz5r
	 Gmbc83wSFhJ0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E48CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175719179357.30576.6104212537516259483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71161be3a45110bea4a4a5cd9ab36f46882cf7c9ce378139af63f4d1efd98e73
Date: Sat, 06 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757191793
