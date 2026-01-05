Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AAB72DCBFD
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767647634; cv=none; b=GJDtcEoGyWd4QltHH3WFExNq6mCQ6/BUi+oYtWGxzRHLLkRTvpBt8W0ZeMNOrT/zlBfDC6Q7zql/UP+U1+0uw7/xjsBbiMQoIrVERQ9/k5DID9qz6ocpU0LJlXpZ4srvQR8NZRlYYMu6kk/yFA+hwgObdjkJKZZeU4+ihTgdcgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767647634; c=relaxed/simple;
	bh=3pDL1m8p44w+B8LZg+iuYm0QdJpH06ufTnVHo9V7fbI=;
	h=To:Subject:From:Message-Id:Date; b=h7h/XosRtSpXD8HLWX0l6BG4AAQbdPSFVoJor81ZrPpZp4wlWq2hkx0msgulcFMetJkxVUkQC5fR0fsPp+PCR7iqsU3+QL9lzdLDoG8VUdFJgDVGKKLcw4zx9mXs2r4+rpQEBO10Mptd/bgkbEATCERL04z73YleI4L1bYmRZNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8HR+21T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8HR+21T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA17C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767647633;
	bh=3pDL1m8p44w+B8LZg+iuYm0QdJpH06ufTnVHo9V7fbI=;
	h=To:Subject:From:Date:From;
	b=U8HR+21T6FcJiOkb3ogVf7mdSpujPSGivctzy4asYV8ie2DqJtsPJewEVjdYaiOMQ
	 ywVw1ZYLtAtsXpnyPjBG9I7yG3Cff9O/JlZrrh8abAPbniXmYo6h7lsnGXGjr+6RtH
	 JEX7zgi1X6+VvPiq4JNYDKHFpN/HfcvJr9+myPaUpSilqKElyuQCFzUX/LJ+68mx+T
	 7g5NLjRQKAHx7x6beXdeDTmm3X8lqmKDZ4v8f1QNCd999CcTu4L5OKGqNpDVWeLK4Y
	 f3Td591T0P7GFFnU9/3vYzUTjgagp12NBfwg4+17dEd1Hj0pY5RWtAcCVw+Vdg7VEu
	 50zoZuJbNI95g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F3FCD0405
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176764763358.14607.2709859458657605993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e48e8d104d819fe6cef7ab0bb0eacaa0cbb151ec196052465eba1d440f8a5768
Date: Mon, 05 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767647633
