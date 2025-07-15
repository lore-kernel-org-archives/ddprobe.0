Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC4941EB182
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752591593; cv=none; b=dS6CQgx+XFio1Uv6I7vGLOnxG7fJ1u9Lw3zYwKA0VE/RO+gPgoX2ov0usmrJrm4wtMct5KWxJEmMFDvxBXYrC+EQ5kK2wXnxWV1w/1hUoGjyP0FrzOP2kovenyulSZeDZszyztYgsZ965/9mLQ/4WCWgUCeI5tXzYbhNQpmmNY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752591593; c=relaxed/simple;
	bh=u1FKnosw9ZvKStoqZV6SGB2BpUU8D3Da5u2mkMUTo1s=;
	h=To:Subject:From:Message-Id:Date; b=P4jFUx5hLLawhLIBBxjnCyPpQVLBbBWX3qWiS4WdJzyviol8F5f9qK0Fw8yweSlUNWQrgikZdznISPFwOkEHhBWhuFi3oP4BCjpvWxcP878kT5OWu6yFg38bGP/k2INOapknJy+jgbc7nUhzR2q44IAYr15xh84QjWQOh9x2+54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDsblTWB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDsblTWB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD4DC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752591593;
	bh=u1FKnosw9ZvKStoqZV6SGB2BpUU8D3Da5u2mkMUTo1s=;
	h=To:Subject:From:Date:From;
	b=sDsblTWBfQ+zwReFWX3+hL0oi2trTCpBuFCFvxDT1gUJrbD+VAkVKXB1Qoph1ec5+
	 AvzpH1l6u05+1Z8t0BNhDy4xgyXo7vI6UCSpiIbV8e0//1O+17jrCRBbNendjAmPSU
	 GVkBaFKSrQuTok7OibKL0oaV3ARRK0M0cYKNNA2/kTFuvWNz4KV3afaNU9MJKOH62L
	 7ITi5V6oLP6y9ju7O1PrY/JibqHin4eiU5oUKsoNXCgigU5jGzXS+uiJrBoR9mil+6
	 gGfxaZ4cKuMoiDLeU7aH16d3g0C/LgizXihJtatLXQHD8Jt8xfeXvqOTrKL+0pf774
	 QB1vwOEBy5AiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F80CC83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175259159357.15671.7870775471144210386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6a40ea5c390bf7b183156092064210a95bfa6f865ea653a507f91f2b1dc6745
Date: Tue, 15 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752591593
