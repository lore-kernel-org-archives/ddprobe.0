Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374FD18C31
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725069354; cv=none; b=HK1IfhpN1ayW12St/yYkL6WI51DuxC/tDjSjqFgmbSDghrj7xKcbubI1mKziwiVwx/Qun4L2oumSv9k3p+IVRulltln3TxHJRx+cDZIkpTYaOvC67+3I8MWF3e+RNEJerD7uHXin5gtZRzU4mFrRuRUrPU8YcIHTLsc1d9XD7jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725069354; c=relaxed/simple;
	bh=RykdGWABuTkHNS+p1MI/0k8uhZUPFS/+R0cXykYQwY8=;
	h=To:Subject:From:Message-Id:Date; b=qPwRFdfN3wzhC5KiXHIxWQAfAboXZ8wtzLT/mJ/jUIrmVqzED5R0nBFkDMyytt+2Go2jPqJ8/+vj+h32KqaQCE/nOHwUrQ3plnwIVX3gTX81LdDCe0zQ+RXOCWO7CHJv8APKJNdXYrkvgtRCuM6r2PBOS0JhsRjDK16Axn3l2Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2wkiDkJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2wkiDkJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E6CC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725069353;
	bh=RykdGWABuTkHNS+p1MI/0k8uhZUPFS/+R0cXykYQwY8=;
	h=To:Subject:From:Date:From;
	b=k2wkiDkJwg8TbBLKJEaLHX0IIybxfWwTakjXI0N8G13evhXk3tqr4XOcbtMmvp6gc
	 tPGSgjfDH7VJgrF1A1aFzrXYRM9LRHr35LOoXgaoR20TZF1zaJWGAoNtYPAMm81OeJ
	 Nss+jgBEOXpVlymTZt2SpbNqBpv6XrHeAMlulvrkwvmR52QykD9mt6F8ObBo7g/5I4
	 uoVW7aafTah2DgHE+5LpYtTs9fZ59xk2/aeMKgxx8eyEVv74QWW22Cl51nEzzs14Jq
	 6ZdWSFTkWc48c/aHksCn6mWTJ+gdnOGd/ggP5ukl1aYAkWMLcIzal8ijI44+c9gnC8
	 vfgV3zJDXIGXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966AECA101E
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172506935359.27224.17280654374642811686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52b15b265e402f913baa26c80a0d0f30f438c301ff9a576a1bdee3c1d6574f3e
Date: Sat, 31 Aug 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725069353
