Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C147143748
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754224794; cv=none; b=lejQredS2778K6maLllLs+Y6lZ9gWX1JcBFlbKf17IPy6AgYUbg97pbj56O6p2AHqq+6gPckxKIhzvSNsxdzntNcfyHRQp5U3Pi+NRbgENUkr86WXU/zzmT6ccuQNfriVUPcXn7gMoeJvLqb2NUTpu3SCtmwCeKaJMk4w0MQ0KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754224794; c=relaxed/simple;
	bh=TVwu0xfNCEUsLtDRRO6Oq5CGuXcLgh9szrE+UjzgE4k=;
	h=To:Subject:From:Message-Id:Date; b=WZSullUV4pNK4sdOVDEn5xbP43EOmkSV0sZ/79CZwHohjSJ1vaNCFVaa6IUEI66zg+K2yF84u6ceaea2m7h0cIkp9sstOsVrck/0WiIfT4/fC6rEAQnmyXzgk6Ff2Pq70OijEuyjoUlZSr5P1xMoYtqPViJp2nbhjYB3UdFysgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8LJjy5L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8LJjy5L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43A4C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754224793;
	bh=TVwu0xfNCEUsLtDRRO6Oq5CGuXcLgh9szrE+UjzgE4k=;
	h=To:Subject:From:Date:From;
	b=C8LJjy5L5MC8E/SEJSogxF1FSAeq8GZFacF23lBmbaqy/UO0y6XNq5ZfBgYy2UI1o
	 dN83xpQ7/LglmSHnWsSOdXANrdXx98u51o7X0V5IgiCgzO6bNLBtF9llVyvqoVq+Ic
	 c51Yfj4PTwR9hHTcDaH+JuO6IYu0c8q0arScbYUUvu5NZgfQg3h0RzNOkBIIOCVvoh
	 EHR/+9XVoD/WFKRgwQILFdN4ddJKvSMn+xTicj3cdsmf/Eo6ketsg88GoFW054Y/WJ
	 j0F6GIvUEtWof/RSgrLpi1yzm78nsuK3E8lMkEe0b29uXvuJ13A+LwXyJre5QifhXa
	 HaC1LJcqh/Mtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C96C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175422479357.15644.9905545508630474392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9eefd8b818034252cdc556b0f9b0489618c5fec2fdb91033b354990a0039719
Date: Sun, 03 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754224793
