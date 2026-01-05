Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53F3303C83
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767627233; cv=none; b=m5PHBhc3HjfSZ56juec08Dpp/z74MI1w2eR0+X1DSVPa3FhS4HejRozzSd8nWe0nfbVLvFl5RloAwOXA1BA1F/HNNK85/L1ZZo2/AKJL3AUN5rTVj0TPl1DWqhnFlfZaZrtc1BjvyoyQQJXz+aD+qjhQbQ1J+exQTWjXaWDNZEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767627233; c=relaxed/simple;
	bh=TkYXzyZ62deDRTv9XzZFgXaIvD6sM0Lu5kXH+doty1k=;
	h=To:Subject:From:Message-Id:Date; b=pYXQU1o5cjfb2hyNv0Cms7E1dh9Q5Di7dLqNLJYxM2Zf03p+c76cG3peGcQbk18AYSWkK6HNW/n+R7RKxlrZMWV6R5kZGgFIZm4g058xBLKFmQHEDKkcBUBChX6xq7IIQ1RePj4aL1cjhZCKVcmRTKZTP1HQBKz92o2RHPmy6u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3Ro7Nhl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3Ro7Nhl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65C5C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767627233;
	bh=TkYXzyZ62deDRTv9XzZFgXaIvD6sM0Lu5kXH+doty1k=;
	h=To:Subject:From:Date:From;
	b=n3Ro7NhlJD+uiqAt3mh3353689MbFf2hBrmjRBAzWWMVvOGzAl6q92GnfZCltVii1
	 k9AuTDvT2uJrnEfqPXIiwDje/wffxES0Ds2za+72f0eo34ljZz6nWvpMXemrMaiu+m
	 O1JODp5M1D6gMZ5jlqSzXBB7VgHq6lwDg4aNpWm01aYSUdbTtPWzWGUGPzRZ6wzzLc
	 IkPtUwnl19vdivcEbBw43vSfxSAhQyiFdLu1rBSWzhUPrx5WNUvoC8ErEwCkhOdB7i
	 LEQ5TyWzVwPP126/L2/hmyCQ7FXjG8DaJr/4MRDQfBFAslzFKN76VX+QyJIP3QeqXb
	 4uUx0NdFjA+Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968D8C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176762723360.6457.3400476820204314174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9fd8d4f8072aba270c0b0a623316262b12606d5ba2e1d25049a51e8835b567b
Date: Mon, 05 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767627233
