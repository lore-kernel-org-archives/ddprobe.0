Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBB42376F2
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 19:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739820534; cv=none; b=qS29qbaJKmfBnn4osJHBmJhdkmMoMhZqDbS07tmJor4YrgS21JR3Fdey6x1vWe4zwUMm959oMpzPLFKxJMMggnoxpWmeWCKtW9aZvGEaxNwsYNIqUo1L0RuE7mvUI6j2tj5EXOHxHDsFO2Y4scqUHrIe2yz46qfvGoJlwpI0AT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739820534; c=relaxed/simple;
	bh=gIhlRd7jRViqD92hYIoXI8rNhOjONa9DpSXfNGHDuNE=;
	h=To:Subject:From:Message-Id:Date; b=D6Go8l0aKqiaxs6cx7ewKaFc1IpEprkVDNA0yg564FvWDt+7YMgGjbUFWHGCOqxmSpJET+FNHOLJcbLQTTiTMjKIdIqBBaVsJnYZ4EGx5oNHOiUiEm4ty3rOJ0VHWNiSzNhL9VkYG0o5g6PYAD72ZdEOuJE8997nl9L4cPePSEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQSlqBb9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQSlqBb9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6A0C4CEE8
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 19:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739820533;
	bh=gIhlRd7jRViqD92hYIoXI8rNhOjONa9DpSXfNGHDuNE=;
	h=To:Subject:From:Date:From;
	b=SQSlqBb9schUPYmMFUeePdkg9NiOIzx3iQrimBkHAIGdDP7P1vJRGfq+SW1flCc6q
	 eFL0goOe3GOetyFMmSETQPCdbCqoOOoGuxq0sIXBZ7qi2EQHC7kZK3U65Rjn9T/q8x
	 /stE5l2bNGVpOK7/NjRBqWTrmEeS2WVrf9KSYXJGXY2VA3Zwbe8Z8mqXY5n/KMk1zq
	 JXuCKQM30RWIDWOhukygrjdiiMgqH9EUskVMpq4wxfAOF77urHpB7v/vLram+4VFIE
	 l1fS9rQVzikFj5zAuVFRBLLw6FThnJWGHsi+N7dW8dLn1gZzaxHszsLk5nkEVluwS9
	 ySGyY+gHpxvPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95719C021AA
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 19:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173982053359.31145.1182156022378255536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bac22c9b52b1a81041742971335f6f9e95f334574b3d3e3043301a35f71b1bc8
Date: Mon, 17 Feb 2025 19:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739820533
