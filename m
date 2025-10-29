Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274D217B425
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761725994; cv=none; b=IOvo3OFr4VzHn5uLphGx3b9UieVJh1qTDmFdpHxZ8QqO7Qk3nkPNmLJjiCQwJE3klOcGX4gwZnnJswUQt8IHMqJoPAFzsApnagQxCXoKGgKvtSLPZzE66U0qUoFK1B648EFM0gQQ4+6q0ukA1isahswx5n8AEZ29MCru4/vuyoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761725994; c=relaxed/simple;
	bh=x71gxDqazvmDUyjHqpktWSrqzli1+thaYUR4jNa/LWw=;
	h=To:Subject:From:Message-Id:Date; b=VtjpPoBkTc8LtddwaxvEvNRLqA8Z+OLt95L2DV7XbkO5TnexoKc894IQ12kiZgxvG3NvqY+yMji1AfEefu0eim7zqaRmKc1F+xE0TjyijCeK7mp+Db3SA/Ut4MR4pvZ77t0pUVX6fmLiNcMff4IGECouW1VlBaQaGpAOKf2jzW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kv1q2XSy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kv1q2XSy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A18C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761725993;
	bh=x71gxDqazvmDUyjHqpktWSrqzli1+thaYUR4jNa/LWw=;
	h=To:Subject:From:Date:From;
	b=Kv1q2XSy7nAGHSmnQ+m15PgeSA9ZDeAGxF1rNepSkFOtRMzGxo6Vx9lkcGWf2hN3W
	 BTPV50FRzZGx5hjjR2HoijMgLCjmJXFKOo4Qi2POv3TYU46l1kKTaqw+ZWdbu3tf85
	 +9k7obO7jCbKYJDKqsytVBnQxzxbpyl1xVBJH0o3ZIKwtbKwcfWKZF3/6pXAF8e0gx
	 BeNh8DweEAsy+4b05iGg7y8r9+kMURJ4PsxiT9B55gUDwt3fmLNRehLYbtZs0LFvAv
	 QghYs2kuxhK2kz6QHRy+W7vFEtPvPUFP0Nq6tzhn7wafbWAkiPP7xy3BrZIrjHtXLO
	 1Qr6zH2qfuy0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9398CCCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176172599359.30948.8921770369254433248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88ccdca699e4d967738995bc7ebfc960fe494c4979d0c92b795b713ef4889012
Date: Wed, 29 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761725993
