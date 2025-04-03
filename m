Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F8724337D
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743694194; cv=none; b=PeB0sAfBJVkbgazzWB352T+GMf3pJQkeDY5MRNpfGbnSCkqnxZyIknBgjEFtI2mSLgP5aal7Pq6T+m1Qs5Bl4ix9Q78EOY7rlC88rz7m3PdAY01TRnM7tHY0i1PgjtuD0FR54UUyvxYwg5eum9AmsScaiNFPIGGgoSDCmLL0BBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743694194; c=relaxed/simple;
	bh=H3ET2Vy6vYoJwr7fC6R7blKCqlfQ/uUnTa4Z6AdriVQ=;
	h=To:Subject:From:Message-Id:Date; b=U8BsXUOge7ZVLYfAmWxU11a5MZ4H+bbP+rLTUjVtXc+Jye6x6qIvT7tl/emK+Ey7BgfGfP2nN9BWWzxW2LuvrXEKqwByQDS8h7wnHWuy//FwQkMKKRF3J6SOjuDtdvbhwEZzT0I4wcMRnFQ5E/7lN5HwG2U+mekoP+o6IryOx3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctGtqgga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctGtqgga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29BEC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743694193;
	bh=H3ET2Vy6vYoJwr7fC6R7blKCqlfQ/uUnTa4Z6AdriVQ=;
	h=To:Subject:From:Date:From;
	b=ctGtqggaHtW4MGKcgyi/CdMrqV6wn9DhmlAJL0fahaqMW/WzEs27UMJrCDMVV17Qt
	 P2hpWETxIM6ectxhBJxrNjUYwF3RByXUrTRZPZkJxskHb9n44x3ytWxnaZTbvAAbSw
	 KEQr21P2xQMVrVA4W1AWRQWpoH9zSdD4vnOf7eu+eR0bC3U/puPa++HwfL66oX+3Y1
	 vKshuwkJt7L7LLx7fF2m//aHjMpoYxM4eM46voV7tY/h+DB12ghl/F8ez1N3rddeXD
	 jCwI4rldIfvpg1tT0R9tq7CmcHWbWLMWkT9Tx3GVRNfGlc6fc2UWyoPLNCS0MxMQ/H
	 R2GWdxlciguxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9393EC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174369419358.25017.2286889178001323019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad2dcd4a5d2be2fef3f61faa0d0d1fdc5b9365f3927f63f7445b62992c7bc47b
Date: Thu, 03 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743694193
