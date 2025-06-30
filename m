Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D965242D71
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751273994; cv=none; b=mgErm5ZJggpQsOFCeabLMZS7gsFlKM9lN5MqMvPqML5TAAmI2k2Di/ddzi3tbN/eqBn6TjO6HtI8DryhMIq9dvhTJiYdZUOM5954162bIcDzazLU34vwmlRWLMlUMvRGebAS9MJrVlTeYtxM3EZqihU4iXB2z0rMCIzRXuvL1ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751273994; c=relaxed/simple;
	bh=X7W3W2zNURzM+sE7OhdYmBX395h9QEzCY2ZLH7ctdfA=;
	h=To:Subject:From:Message-Id:Date; b=cq0Bd4Zc8/na8vo1mtZhku4o6GmS1P013qGUbq8ZeWiFP/Td49g8mGZ4wJQcpCwDzegAmLQF67MWp1ZE9v0xs3mNmcVFAY0ftNBadk14WFllZR3RBcqgkbFy4Nz9jM0Q7zaImim3062duc+DxA2DqMb6B2m/qwOXTVbjukqhNnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJ2tHz+5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJ2tHz+5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2026C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751273993;
	bh=X7W3W2zNURzM+sE7OhdYmBX395h9QEzCY2ZLH7ctdfA=;
	h=To:Subject:From:Date:From;
	b=lJ2tHz+58jyXcESnFVvufeYkQSj7kicjYmEgnx7tryYKKnGBPPTHe/QV5eY4gHfg7
	 14PleDuj8eY5+ODzYMhwVc5rz6CtAUX/xrdaue+/ElNvbu4iEluA/KNAL65a4ZvIFg
	 Jei3rerVf/huTjlNJ0VQBzrGcFpu/PhUmvyOp0uhaR2Q1XmnDdcULbRbXcWauMk2OM
	 cVXkfx/ngbWLisoXzRtmV9PxFltni2Sa402wRDrVFZKhoskSx+/2FMrYC81rSGNIAW
	 uyuiJrGw+mrvg4NL9s6e1muxMxYI7CaMnifF3GIpDqpUi+Wtq0gQS7T/c/Uo9MuOeT
	 SxNhOLsUtmscg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED79C7EE39
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175127399357.6193.7841486622772000862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c008fd52ca20c1b5428db67aa56da9f4159712e0050551e15006369a1b260486
Date: Mon, 30 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751273993
