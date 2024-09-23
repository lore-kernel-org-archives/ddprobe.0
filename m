Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA22DDD2
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727072754; cv=none; b=UweqgNfXVyskge7lEoiZqopJKPQN1LXTfByMG83IG1mMhs1XHC7DbyG/FNA25HI5b+371lFq0VlnQozZTwYEjt0OJL7IcPuW9zedu2myJffrA2AbQQeDQVp63tPxHY51CZfHjK3u0nt7KKMf6+LBp4K90ArTij+P7kzmVJOJEv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727072754; c=relaxed/simple;
	bh=kx2LljZEuCX/uo324r22HJOys2HxuRJH7y8yF8mm10M=;
	h=To:Subject:From:Message-Id:Date; b=NC9odzPAGR274xHRuCdZj1L5AGYdIFWnHME/3C32p4mb5kVpNxdJz0A/HxAf8w0rV6jTCbYo7e8xy/4/iPU2QQk2dcYdsQDhwawVdE8ylf31mxBWi7TVnGBYuZp6/yQhtDcET5mS/1rlQKpAtKb4wNN3k9f4pGzgtFOpylwnjhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3ICULRf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3ICULRf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AEAC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727072753;
	bh=kx2LljZEuCX/uo324r22HJOys2HxuRJH7y8yF8mm10M=;
	h=To:Subject:From:Date:From;
	b=h3ICULRffJFuYIOaVnBCy4w/XAVNN9rXtcE6GYJstK82n6eB1ZrqH/z/B+gB7izyC
	 i5rQCug1drxHo+0UI5+i+8UMwJO8IYPQiQifogwoy/oRTuYH/YMMMwK/dfnoLqwdm0
	 Iuj5okiVwYwKZeY/XA1BN1gVSTjhR80bQDyxokYzUaq+TqL0nxNXxp5KdiuAsmZ8/P
	 46ne2aaUh9f+fPVJjg3NjewcDfXp2w6/sp+DKq97t5aXdNDwTPd3iiabicyhk3dBye
	 aTqXj1bisW8zH8GfA6LLYZBiyb/1l4pOjjXqU3Sd/s5iT5Q5q8ni7n8TRrW3Xm6sP8
	 lII2c5kQZnqHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974DACF9C5B
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172707275358.11666.9037776457598087873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2babd71343c97068f2663f18f1a315848578eddc187eb94263339848928afee6
Date: Mon, 23 Sep 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727072753
