Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DF926CE11
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 17:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765129974; cv=none; b=M8IvTkXfdQA0QqfxX1UeL+uIQbW3ktAKpIlub+tmWv9siWzKnucgra/QJG+/P+Xk83fzYMFyV6yH++0xNs9RVU0lVrtjNUV2pOktY5XjPgpvbGc5s0+ljfB6+QeuKReEtwYaqx42vtB05opvfbnle+yzJR5CfjVSNBYEw8Wdtok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765129974; c=relaxed/simple;
	bh=qRlH/nLoel+K6vctAIl/Vh24JyPWFkTra5qrFNY3XDw=;
	h=To:Subject:From:Message-Id:Date; b=BV+dlsOZQrvzJxNoCLCgu8EObW/m7wcP61gXVstYL+0GJJOtnMfiPFzk82cEpVFdsAIijXfFnFcNTmUWpRuKWUFxAwRtoIJAUGCxdDpi5FPSezhj7GmkSPy6tA10Q/QlMgIyx4oPAn6KWzd2I6X9ucTCM5cTwi8X+sZVljiylak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YhkN6Sna; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YhkN6Sna"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1B1C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 17:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765129973;
	bh=qRlH/nLoel+K6vctAIl/Vh24JyPWFkTra5qrFNY3XDw=;
	h=To:Subject:From:Date:From;
	b=YhkN6SnavZh5dZGX6nTdJ0caQuZc4iDsjQBpj0+emG3HZkulhvDZTaxN1AeEmf9C4
	 rTapzVGn5/QRDp6TDsSxz1ijCipzzcA3E/XHK+7oy3oag4Bw/3UoOG5EZ3pcgbg+xF
	 dHykpx/SKc11yhjXVK8k2i5Enrcu2Ox8nfvctP5ttgiFKFuOh6wHNn7GzTKLxtfIQL
	 uL6C3sItLIlDwVBbC6xqiO5xwDYeizB5aVH8MJuAOfAL6LXDfoq7EcLQ/FiR4rHTgO
	 aDi0BmrfAZNI3ZAufvQMo4GN3ckl5nR1AZcW8geggIsXNGAScKG6wrBvq1zWUiIGCY
	 P2rLnJH2fzg/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979F5D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 17:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176512997358.15064.4660691978947937407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 011eb92527552721ab7a1053eb54c6b87806fac482fe7d22f7c7de22c63a5b89
Date: Sun, 07 Dec 2025 17:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765129973
