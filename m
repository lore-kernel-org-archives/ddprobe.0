Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265372BCF6F
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750883394; cv=none; b=iQH64YlbvIVF2ZFceAS2YKLoh2Q/iKID71xStRXb8zOfKYT1fUX+tojNy7adSHSMilfKOQ+/PGA6gee4eCcWv60TR2H4nqsb5MF5+9RmY8YRAYxFpRmpJXuqCbIF57dldsL/9Tuw2eUjWl+Brh14VHKLdMNFLbNkwjy5DkIo+R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750883394; c=relaxed/simple;
	bh=MoJZpuc26RbDexHwJx+xntddxk9if7NKhnEz1sp9Br8=;
	h=To:Subject:From:Message-Id:Date; b=cF1w2dtoSIzpMgDZa1mqkmJglk1U+eTIjsc0konyJx/IVZ8fQfPEdXkuiqhlomK2yy9mQ4STMaWRNRhAkqFcH0wv1pS8OsxSMa00De/3S4FBZnwblSb05EtVIsg4qyvWZqw1k+rLrfH+TL39dR+KHd8HPdZAjv1fGWNSU0zjuSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEks252R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEks252R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0219C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750883393;
	bh=MoJZpuc26RbDexHwJx+xntddxk9if7NKhnEz1sp9Br8=;
	h=To:Subject:From:Date:From;
	b=VEks252RJpJ2sU8Ae3x4cNEDjNz9Ds5wwJdV3O1uOMsqKzx7sPoI/WE5vQvGExWx0
	 B7hC2hCa2xmGm3iZed9el2XR7p7bh2prDpcPGfB7jZHAeqxRyNivhwQu7lT2VvwZvu
	 nZo9XNdDy9ZYrqj0TL4AmVIM+X7onUQXp+Zl5WaFS4nXOw2furG1SJp8Rp2cb5PCgG
	 MiXhgjs6sGxh0FbsviPrPoFGhu6+gzexKahsLlb/THK8Nam0vvl7N8k9Y4SOrCd+Ae
	 wfCm/JE1icXAtAGXtcyesWOHtk+22NkrZCuhgftMnJ1j4uabGZbZsfNsJI8QooOsMA
	 soQUK7xyUTXPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F926C7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175088339358.14381.9715315301139022702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e03deb6a8f63eeb963fe8b0474f3b28ccda0f503de733c50a9a1f2fb3215860e
Date: Wed, 25 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750883393
