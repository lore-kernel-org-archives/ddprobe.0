Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C441FF7D9
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738575954; cv=none; b=UiKK5JpoqEL3csFSb9wNt3HJCTE8isfN8C3D20yur7BY/hExfELlr6tq1CMEfM8L4fogZ9SY+VwG3U395q1hrGlZcxst3jehJujIiT2hpV9qyD031P1zOyRm0ik3R9MV0I4as0aVqfQ/zwJhnQAZ2ydGyT5rH4WOdAMhmqjAQiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738575954; c=relaxed/simple;
	bh=/rdTv3g+IAq2Pd/H6PBXkHlqcjAQorOn7CP4lXUOxfU=;
	h=To:Subject:From:Message-Id:Date; b=f88KObWzTPDJ/I9qKhtIZ42gJXtav9iq8grFb93xov8vJWK+5tZqZOHeM0Xh3nwt+K3B7yJ5o8hbpEqynGfBonKgtctwpu8vH4WaRnAiiRic7EHFktO2RwV84q+VnpoaXRyldy9lNsz/p8cASMnZ8yifV/dEbCw0sMkG+u9TVB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldlzQznR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldlzQznR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B301FC4CEE2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738575953;
	bh=/rdTv3g+IAq2Pd/H6PBXkHlqcjAQorOn7CP4lXUOxfU=;
	h=To:Subject:From:Date:From;
	b=ldlzQznRenPDemSI2KKJTgcmLFeDEqxw7Xq/c9h+aGFazXuDfOXFPzT7ztuEfDJZ5
	 kAyJAnOP89sgKtF2lB3FiaGjb2+cdTsg1u8u4/x7DnDGTzNoQALeuYYsBNmKGPfdNd
	 eU43cwJX9dW9FTSh6oJnqMSnmLAYrFKZfeuAdMUcj3sPBOE7s0ljzi5HFAqwJsjxLv
	 2rOYkztaruEvmeMKrch9i9gNU87FnZxZDOVnILQG+ZwwcsmHlPdS/o/eOSY3d2T54W
	 SM7zFFz+hIwWnh/whfR3PT7OgjZYOIUAhKWHpzsNrB7GR7FR7GWStuq3Wl8sS/UdDy
	 O7YI03Va5HtAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99896C02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173857595360.17012.7255178303811278869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b20698eb73dc2ee44c81e948eeca1250aa3aba54691da4d55cf1748cec7dc805
Date: Mon, 03 Feb 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738575953
