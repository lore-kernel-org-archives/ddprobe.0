Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3FEE26FA50
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 19:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763407315; cv=none; b=uWtg4npWWQTbDP/thOcnA7T1vZ4ZNtd6hUQs7FMjSk/di0/4Ncw+3DbyIe9rjSALXR4/jqREYO3HSQ67MhjUc29tA6C16m7bOCokSTzE6v9W5dZbksw2dV1l2k3+6G5a+qvLs0vZL7MyYDQrBFn6lzabZrm4qoazfh1LiVbvv8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763407315; c=relaxed/simple;
	bh=GKEEX12OZ5o1yoWwYd0UAHDaTIPG38wuN6ryQHdYpUs=;
	h=To:Subject:From:Message-Id:Date; b=mC3d79VJ2uVRXHBb2ZYdZqigB/pD+1vM35tEbbY1pDTmWp75P5d7DqbpL7XBAbpFebZrJBkchYa1fZMWH13GzzTjieIJMZCBfubz6mYAZf6pAZyVsj24Z6pgqUrJHAIzoT+qUNzCXxQVXb+YzmPHGdtCM4DKPEXxGiU9GdUeiMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SqYSSanc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SqYSSanc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA3A9C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 19:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763407314;
	bh=GKEEX12OZ5o1yoWwYd0UAHDaTIPG38wuN6ryQHdYpUs=;
	h=To:Subject:From:Date:From;
	b=SqYSSancttjLfoce+uhkzlsTAxFe4Ih9lqrzq4TmuEn8lrwVo4O1m6CnzDsmYVCzt
	 AyRxudeWqb4LdG6VsfqsiFpn6hBQs6vk/J7Vi+NLUYoE8idrU92zBWppxLiYlSiNey
	 ZqEXlqZU/UKBlTEp2UhDzm+miuFOE+0ndsgW/2xqDnOnrqX2VU9mwH5FyDuICFGuta
	 LD2BFeVfsZ8jKxznHs6i1/BqxtA1RFJTOy7EkXl/jmZMbdi3+/RtgHzv8qqNrXM0qi
	 lwXNBcm6CTZlhIVxY6mdH8b5CItdt+lNu1B/WbfT3IK3LReNSqDwDn8ufPwc1bDA1J
	 zmtijKyUQXOFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F30CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 19:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176340731360.11340.15940949369572569500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7dc615afe740400a24dc595721406a2b8389652289333b33691db61b901df6f
Date: Mon, 17 Nov 2025 19:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763407313
