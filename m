Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3157494
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757648394; cv=none; b=Ni53YquD6JR01KdYoJW+7Pn24qW/thkiTvQs1OvFk8zFpopWaZ2BaOeVp64tLdwfq3UxYwhUix/zMYpDipfKBLGj5E83cl8ngKhtZj8xlpY7CyF9x5LM00KShUpoyk3mrL+JW9d6xXZkxyiiMu1V57iVzNNOQTeIP6eNXAdRKC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757648394; c=relaxed/simple;
	bh=FUVo8jHTEdyqCEkjBMrSljnjaLiIprUh2hCaK2bnBg4=;
	h=To:Subject:From:Message-Id:Date; b=JWcQV7LKPmiZn9v8w6WEk/LypgRVjDoLhMpbQHgUI3OjbTvIbKqbLKPKSQLiYsWkwiJcJOTl0q5wfVUbTIuuQa/HoHAWM+uujtyMA+XOOrhtXJfFzU1tJPOlw2qpPFiXVRnuhk06tqb/P2b/BqePAhZQgiEwi7P8cm1FVnee6AQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KoWnzHTx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KoWnzHTx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6C9C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757648393;
	bh=FUVo8jHTEdyqCEkjBMrSljnjaLiIprUh2hCaK2bnBg4=;
	h=To:Subject:From:Date:From;
	b=KoWnzHTx8id8DSY5iPz6dqvVSpD03Wt7p0qx2P8lGafdvYmPi6YHitxADAtuinUAp
	 XQk4htbfrUKTmmkDgZW4mBmXHFB0IJuQokJdmbsWfkZZ0tL38qA7FQFs/WTOingL+p
	 is34HlIJ79RRjXvtNAKaQHHbZzd1+H2qfYC6CPvFEi6uEToU66rhqWdTh3PL17FhI/
	 UOPgL8HcY+w7/9n5aqbOJCeZelJ3y6XadvKSqtM7ZiuKDcW4OV8S6Y2Roz5Too7bQF
	 6BkP7AxVNvsIT8iuXdA9T7jVL3ThwN05+HgW3rYdxYmL7JtxYrpl3W1bji38PhH3z9
	 EiRilvVhJg78Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0B9CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175764839357.28157.1477078446091948829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c0916a1b734019dfb254fdfefe66118239bf10b5f54f862221c9850dcd662d
Date: Fri, 12 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757648393
