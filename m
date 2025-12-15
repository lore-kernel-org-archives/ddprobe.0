Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D479328244
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 23:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765840374; cv=none; b=M9uv0VoqZGFdqgwE/N6zOSszO9kXHlo+tHsn/v6iSwVhaDI3ArGY4DKAwnN3qfCI6L7j2XES/yAwdoIULn1t3JfRFCkGWWP6JIlje2I/JH/6a/gUCCFnPGCREl46yS5dlM8CacxfOf+uHEp/O0CJc53qOhBrbKpIjQ9coNT/Afc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765840374; c=relaxed/simple;
	bh=Ak8lUpb6O1FrY+aiNOhd7J9vEcz8o/RwsVOCjyRWz8s=;
	h=To:Subject:From:Message-Id:Date; b=LLQJCb3I0L6YsciHtv6I90lIQM4wLw2nHawrXpm9qVJyYDW0KWrJ2E9gXI4fbgLeGhLymVfnqV9KFFOS7FLLVKZnzk59+9ygYg2Ag3gC4f2hWUCn6hpf62xahfBmhHlvKcb/zzGOvoXTZbx7tBWyouLd3NwrkcAqza4lYKwz0I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRcHuRp1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRcHuRp1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC66EC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 23:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765840373;
	bh=Ak8lUpb6O1FrY+aiNOhd7J9vEcz8o/RwsVOCjyRWz8s=;
	h=To:Subject:From:Date:From;
	b=IRcHuRp1Ri4qO4dircr2mUxrJJHNOnyGfpj33edhLItwIbxZR6tujKvcvhKR5xMYs
	 JDhxvdILrRQv6fSBC4jIZ3+6EZOzoRIyOEeINAYgZPe9NqbXZAZbSvp3UBSVosIVH8
	 UpOU0LIojmdI2uowVf3SZ07fKbgT1czdgEr0wTD6aEKLe8utU3fKMlM+JkeAarTdpI
	 Nf00gsr1syIgZ9k0h4vmGY/r7X9sxG+A+qh9P2yfTcKZRvAIHKPw9pvzFFcTc0tFki
	 knkWYcOiEI05IsvIMZkb7GioMv5WDw4/Pz/Y7VAtEQ7LYQ2Beg6zg7rXs/MB5HUqjv
	 BmKY2VrGO5oiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952C5D5B876
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 23:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176584037360.9450.4490957587145739665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d12bfe3fa9da8b5f60baa3e90d32ae745733a4e7797b4667d0b0c8dc45ede81d
Date: Mon, 15 Dec 2025 23:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765840373
