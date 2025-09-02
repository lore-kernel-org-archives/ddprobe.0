Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF8A20311
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756849794; cv=none; b=NO1l8PmM5nO5jSQ5sjx02pUHERzVE+ZbWgFxzBmE6D2WVi9NUJGh0hhFTLV8taGR5UCPRy5+nI0Cc0m3eheiej/LOfdi6kRdySpkvGsAjuJK2PVvqjSs8R0upVpojl/LF5jRwdmInpgC1pL/TeFW2bRSHEBuJrANBkxCA7w07DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756849794; c=relaxed/simple;
	bh=sZRvtPQdjgScm2jnWlvIr8l6YSw2nidd0CyPAvfIlE8=;
	h=To:Subject:From:Message-Id:Date; b=mqnhtA2B1aX5TdKqtJnZHeXveGOrT+ww0UQiLkozfrpPO30A/jHVnTR+cQZqDbry0kYAZJwM1iPV8wejqJy3QHRVfN+EcsamcGF/nK08hjzoAMNsqT8Pu4YmMUnsa0mPLARCtRuwbYikb3kdxFvbHiAqSUr9E3jTVNK7qJbmzTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UkD10bK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UkD10bK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F54C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756849793;
	bh=sZRvtPQdjgScm2jnWlvIr8l6YSw2nidd0CyPAvfIlE8=;
	h=To:Subject:From:Date:From;
	b=UkD10bK7ziRPXL7jgHCgofc6PzO/fxFi2QatpTDkQ9oYHB2/MY5698ZQIQ9WN5TNf
	 +x0EBY7DFzrNuzoRmH4nV7GWX/NXGcDxMbVv6hvIoRwXyexSIMzEYCJuW/Gq1WTm3j
	 h1xQyx8WbhO4FPIJLLP4Obd4V/7s5V6rirDKukcP6YrOWfDwei+sJ2oAl0Yd/yAncq
	 eZZvgSxIYgMMwG9KPpvsi6d3tWdZw3imGCVVWVBlGVNjE0HqgniojsSbKsxJP8P9JS
	 Fa2SnKyS4i0febJbgpxhq7NZ3u4093rLcuDXK3CLzPgKJX5DuW62XyBVn7cdw3BRWN
	 S+TFCE6VyFXNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCA7CA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175684979358.5646.1913102155049226056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fdcf5116f18af2d5682e9a99893b1a591a764f6119206272391f7fdbdcb08dd
Date: Tue, 02 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756849793
