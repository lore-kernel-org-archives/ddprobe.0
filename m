Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D7C1A4E70
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747938594; cv=none; b=FzYVFiWbTgCSTLeTl+VxY1SA2zNKZjFW72gvwry84mWx/INYMxDJc7BzOwUZgFYalcDkDJqJv6UbCIQuWrgBM3jBflfq5GXkPw/T7t/vmPLAx9HfsGqaJjzm2uLcE0c1WStt1jrzopwGKSg+qBX29KS+bYEl5oegv4+TvLy0ziA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747938594; c=relaxed/simple;
	bh=nevoPmZgvVtZ6fjmt1xmvP2jdiyZruo0vZYDzi2TamA=;
	h=To:Subject:From:Message-Id:Date; b=G/gCsOjT5xfflhKyafJ+iYxiElAgUOYsh9/cJ2f4V1He9NYTooQZzmwGgWZ0a4UZfnTUgCD6NnZGbUrufob/leKLU31r5P4q2iWtGsi5uVndheKOM0/Ogd0wwxRrAEyYJxQ/pORXRkiso3iaOo8mszcC1UL8DNO8s0SIfDcD2P8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBOTYTLd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBOTYTLd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A129EC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747938593;
	bh=nevoPmZgvVtZ6fjmt1xmvP2jdiyZruo0vZYDzi2TamA=;
	h=To:Subject:From:Date:From;
	b=ZBOTYTLdIrOqOlHiZgNTskfVjMOJecBE8uEA/eo1I7y98dTNN1PEiN2KCkSfy5a7q
	 OpIvf2LH0pGAluTKzYV1o4ZXIm91//nLX/faqZH6S8Tyi6Y9abFQGJG9VPxPy5PRyq
	 auyZqYXn76amL8Ujd+FIw+K6lE5tXTWlbP2AX+g6iBsfnypCpHZ/1YoVp/qY3IGABq
	 d5EoLeaFId5HOBIbT3459KkeQp7+2E58TTgm0qUnYVVO2JqHqE/bGvU8etX7urc3dO
	 VXKU1xo6qxebdBa6v7GigXYaNKGIx2GlS2P+05x6e9tbDUsjyLNT3wnyYG5AWAPE5K
	 j6HG0KVFpCEBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F077C54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174793859357.28321.6114595825488749627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77b573ceed5dd0fb4a562ba3cfff46e1d9059be2481efb155366a98b15034afe
Date: Thu, 22 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747938593
