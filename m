Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76DDA38C
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 08:40:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713602424; cv=none; b=feMovsQeHZJoGSfL0t9bqh3XRn+yllbWRaNYcPYvdYQGhYjnQWUkCffLHXF6X/ZvLfWv/AczyeRUFU3AG9c+UDXQxz4AshWUySwBy1U2CNPycsCsXZaWPeBKy90G1xG0ul+JaW+xq84WsW0wFFo3p58xk3MVM/CUL5EmzdvjLcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713602424; c=relaxed/simple;
	bh=Kq5qzwi0gQvHNxPVSwGWA5MfHoEdIek/tTb6NDM8XOs=;
	h=To:Subject:From:Message-Id:Date; b=Pt0Ndj2NiT/gSGP3ZMdYRuwrgvhB6kmeEaHiMXpAwjEkzPh0OuuhrtsEGAzUKjxasuZK8ZYHqlPmOsqGQXawfZKI5EnHmXYcLRm8wg2l3gBA7v9rVJdQRR3xsYyob8QQhe6JnM3jFlL6+77xSB37YEj7hIr+O+fi0mCI8u4IU0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GaXtogGF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GaXtogGF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2FA4C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 08:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713602423;
	bh=Kq5qzwi0gQvHNxPVSwGWA5MfHoEdIek/tTb6NDM8XOs=;
	h=To:Subject:From:Date:From;
	b=GaXtogGF9e7XlGpnapghyFle/9qCFuEUnvCIIwGsQOuOFLXWGa+LjPaoNR+pux/vw
	 tKJ+mIZIwlmQmEaHmezYqtOulFqMCb0L38qKe+JAuYah6YK9hf9UzYnfbyOepvS1OI
	 9dG9Gg+/9upqggmMlPOft9QwKN68twdn4LFXbQQBAx5mKXYOVEALW9vMHN0md97P3a
	 XOQkdhky3BRDI3yFO5EqegR7YGNvwUrhjw6p+b9yZdwsHIQHUhpQsdjvD+qYTLgEO8
	 D8sDhlR87dVfwXKGH0m91HEKwb0OCJCh0FwMcbttgJzz9OvxvpXO34Jo3x7QzFYJeA
	 4dwsa19s/UuWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D04FBC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 08:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171360242280.3267.10629523100255036476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d4d1b87f3b7a0a73b7f257e0fcd788893c571987a6a28207647470d695a43cc
Date: Sat, 20 Apr 2024 08:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713602422
