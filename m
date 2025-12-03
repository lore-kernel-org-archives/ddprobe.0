Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D1221CFF6
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 09:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764754374; cv=none; b=tStRIFzJyiTWA8G02e9atOJrJmoJU9/RmSoOvv/5FFwTT9EW1JEqgSLjG7sMaur/MKfFkWoDWYmmZP6FJTz+teSi/3bldGdcPWP4F0/U4FlYIJ+A8nBqEVoxNIarl5weU1byMKBN1b2fJZfNaIS0707Pu2LdtXOxtN/OxZStXxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764754374; c=relaxed/simple;
	bh=l7cQ1fmjGnQWo2wGLrejnWzYR5w+SF1F/G8la2pA3pg=;
	h=To:Subject:From:Message-Id:Date; b=nq/Fa0dDaSajaHZLgbMD/rYdGrCpVHto31tn8ZIoFjmxWh+3oxzdd9uOGO1IEUK/kpTMxcnSOqdWlp5edITR4AtOlm73YfrvjjD32Jwu3HgkMxex8iLoY97kQWeBqHSYXwp1GeFc3qxl3aBqhJE0oqizXAzASfi1FC5ZiZ4HOyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLLe8nnt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLLe8nnt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68EAC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 09:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764754373;
	bh=l7cQ1fmjGnQWo2wGLrejnWzYR5w+SF1F/G8la2pA3pg=;
	h=To:Subject:From:Date:From;
	b=uLLe8nnt0lFyFPY2+m4jI9YCapoz3EXRcuGuxrtLLyEOmGje0QHv7rgOzjI1AZlAK
	 fIIJZXl/7SlFhfHuTwZR3b22jxA2HTD4A8fGV1vWGew7ipkhfoWeDaHZ72t0Vz7tDR
	 NMV5WbcI0OhFPYMglPnUtHFQ8fqA9aRF8nXDeZAkePzFRCeI57BsDK1hN95iCu+oaM
	 dG446Xj2/Na6Z0sRmAqMODLU0XRwzjh6Jd+Vt4N+By1mWH/l4PQrAod07LEJWGrexl
	 KWvDkYFrt5b2taykBOAQzNp3p8NgSuC3dWIGFZr7oS61lJllQ/B/rCGYn9WC8eTy7K
	 obSc0iqwt2TAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925C1D116F3
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 09:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176475437359.25251.4163508780592124224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51684eebe3b1e22e364004571b472bb72972716eb1b73c91627b1d06b817f7b2
Date: Wed, 03 Dec 2025 09:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764754373
