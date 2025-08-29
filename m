Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331CA27587E
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756454994; cv=none; b=pA3S1DrCkbm7GX6kh42jYTCX8+/H3S13BtY4yBgXYo16ybaO1iYp2BS7c/xY9iWLs9tANqGYTH1B2kZKfcqYy8s6bQyVfbwwxU0WCsAlerkmgwzYjN5aSb1DeezvQL2+8unyiRV4Vgcgd6G7Y5xUUIVItbhYUKzgRBdzyFlYK2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756454994; c=relaxed/simple;
	bh=boCTJHvH0lqwp0LIMh9NitsUv4cRVkBKY1lqC0WN6PQ=;
	h=To:Subject:From:Message-Id:Date; b=pdIx+89d/6lT7hYydZR/T9pCagxU0ad2r2qSyhZfd58qdLXxdG8Wht6sl70Tl3nbn3gkZ8fQbvdqjmqWu7hh5Y0kpJ86JRg6ncSl2/WF0gWcYAg2MXsbQNZ4c2Jk58qRUr318jOdQBBv3ZDkwvLOqjqQ+tH6ieCHzSLQruhSwLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ciqCqnQD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ciqCqnQD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C33C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756454993;
	bh=boCTJHvH0lqwp0LIMh9NitsUv4cRVkBKY1lqC0WN6PQ=;
	h=To:Subject:From:Date:From;
	b=ciqCqnQDXDvcbi0rUS+tlZ/JLo8U5sDczp79lWZ7LbVNsRtv9PEe8eY6EXeqp2EwD
	 gu4jBEpv5cCEaMP1q0w6kvu26JPcrIQ6eEysunGFhBAWXeRtRWL++ndLjXOP/66xFi
	 Sp2dQUgbjbrZmjcijZrxVjwdip19yg/6PGPP01VYyvhVyo6JYSkiqECFUh0akw/WnE
	 j8dIwZziem27u+txQ23D6E9ucdEHODyRST4p2Ns0pShpnNj0KUIU+euHjW1Mco0GrO
	 WOPYpmZDTqZp1U80xh0Ky8Gf7EYnBm5y+yEoaJHvNItEc1a5kG5OzI8nIrf+dP/A+b
	 4gzrX/SFNQBnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F38FC8303F
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175645499357.3915.605986924957300369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eae455dcea4ab67433aaab3b5361fa26e0ccc5690f7a9be8f5d97a1a1cd43b41
Date: Fri, 29 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756454993
