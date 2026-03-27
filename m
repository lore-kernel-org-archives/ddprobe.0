Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E5D3382F9
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774610694; cv=none; b=rhr3oeKuMO/vTwNJNbRE9FZuISyzgLMsRyskN/Q6ssX8gb/3psLz8cTXUCJK2X5gxhZS+rLohzD+U6bdOV876Zwi87gFYVtRLXMEjKhq4kOAAWbfcQQKfFHwa0MSV81PQ2dEZrnYWMSgMUhM71E/0j1azcT6O3pCu/SUP9OZbh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774610694; c=relaxed/simple;
	bh=AtOdq80duWPRkpV6nqU2IrvbB1LqhXz1KcQojInVxEc=;
	h=To:Subject:From:Message-Id:Date; b=ahSZ5pVZ2kDMoajGavuzWozfr/J2YjAwQ3fvCt/4t2UIyIkTfNUKMnixs9HSUOLmOf4SmkojPbNvyXaDcUW1VQwQe956YLWKjh76opojL6wzm64g7bZ9hG87xZq/HroXWuijocniZALCCdVeF9yvK5XAQbJiDaALEJN4PiL2JV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOlRAoNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOlRAoNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CAAC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774610693;
	bh=AtOdq80duWPRkpV6nqU2IrvbB1LqhXz1KcQojInVxEc=;
	h=To:Subject:From:Date:From;
	b=KOlRAoNVdZIF8ohTrSGSwoPoUBUN19TaCGkkhY+/j0auagssJlxRt+it5Q5qGD3Gg
	 H6j2jeZ4mIAGRKLJzr7H/iayjW98glNPQG8JB55FNHWZ9flmbagxUcahmBV2pg0iYu
	 p9bmj6QqxVBwobZ2TCFZZUdKIQAVvA11ZUJNO9ZbeW7/al2ZCC2SvcrWEDSRSCt32d
	 l+Eb0pzic+2xn25RvH/ptT/0Cice6nLRmiIBOIAQx9IZWpBr1J+hCgtl21dz5Awhxp
	 Kb7urXfT+xoOnlNG7+KkU6yH/NSIw2oZm2rw59pjABaEQPwn32j/1g5gSNwhjKausH
	 4knRbeeej7xgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9211510ED65C
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177461069358.24051.5282782792689819414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6567801d06dd0bcd350dd07f114b94c5b7d3094655e1d762cddf40ac4672e31f
Date: Fri, 27 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774610693
