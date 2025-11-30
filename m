Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A791191
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 03:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764471774; cv=none; b=lqMg5/DUROmbU7CNN/PHHny0p87gM+Wxhc9IrXVzPDsv5ITFlU9+nh8l42fTzYDBo3zHvZk5iIQZmRQ7VKRkF+B8ICa91ytgHeV3YbQ25JaGnwngbqBJJ4RbjCTW3a0sRQ+FnC+3yj9ezok5ghC9qnxQkhZTEgoHDgpp6AT0Y3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764471774; c=relaxed/simple;
	bh=kkLb9IU+VAuPMDzlFqqWzRQcfcotNLAgMDE0GlA3T7s=;
	h=To:Subject:From:Message-Id:Date; b=VcSNkgM7tTnnTTjXmnpNZ5ix/lpcf2OstFuIJ7LPDe+grdk1+CadXIesqAfBZKyouQ7mPHjVxvNqtpMqv+tccDuiXSElRRiTTkccnlylMO4+oOWtp58DC/Lzp4mmlf+5gmsy9lkE2483wk24ztS49ddeBZRvBrAlpexCbsUbrVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vGvR/OX6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vGvR/OX6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B8DC113D0
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 03:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764471773;
	bh=kkLb9IU+VAuPMDzlFqqWzRQcfcotNLAgMDE0GlA3T7s=;
	h=To:Subject:From:Date:From;
	b=vGvR/OX6NkiQoZdovzD2XBWdhrzyI0myEGkSZMFeMe73H5c1SuU+ljJX4b2W98giG
	 A+xsmGlBj4iLyrRqVZfi9uPCF+APYNBQBg9wNiVkwe2ddAkTEOr68Y846wQ3VxBHM8
	 zBHedo1PFfEU8GqHjfJL5gxNIsxUJOfABxPEV9ZztI3OhGFrF6YL/WhMO6nn0DYg8P
	 PtglyTFakXgiWrwlpJ/unGJghTmXHLriSNEOKYQ0d9R8LFJIFmmZkzvkxluiTD3wBD
	 7x6KcYAGuUDfxGmT0zquTUQp0azc1jLHUxyBOoCc5twzF93T8jOB1U3qMYNKVoDkmA
	 FzLqG/vMw6WGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905CECFD2F6
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 03:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176447177358.25311.6504608393012076021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acd7483b272ba5ea94b25256642d1752675a0aef1030d1e3c9ae420ffaa71064
Date: Sun, 30 Nov 2025 03:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764471773
