Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E72D25779
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 19:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721159723; cv=none; b=KXsPfU1lZ6OLH88R6Y7jf1ai0i0NRSmUuGIyx4Y6gz35jKV4Yw1aj3RS5Pq4lwXhuBp7a+cQXyBTfcJxCKX5IW1b4ydMu4tk7xoznNEgypGuvA+CZM7s5rRveAR9KOH4AMuF8F6AfLwb8LZiqEN8zYmMCYyjy7/FfShCjOa0tBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721159723; c=relaxed/simple;
	bh=qXRHF6xQGeGJLANAbdG72ON8pPOPAdB2PFceKvWi+FA=;
	h=To:Subject:From:Message-Id:Date; b=Qijo44s33FWLpJ8o996M9xLiH7B2URQEHZEfJTsTOPlssMlcjunMIlDB7JJkL4Lap5uZF85iLulizk3JY3gT76JCjDux7PLb1zkOJzcTF2AVQ6u5SVNmVCeSv4/IazkvgRUDLDRBRyv9YlqOX9q4T2ajnRWEXOT6K1VtRNJYL5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPJLdSTM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPJLdSTM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF88EC116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 19:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721159722;
	bh=qXRHF6xQGeGJLANAbdG72ON8pPOPAdB2PFceKvWi+FA=;
	h=To:Subject:From:Date:From;
	b=sPJLdSTMP7RSch/CErdS5qNybtppQbrdUtOfOghxupFbBy2Sj+RgEH4QFZcFsR2f+
	 E5d+eNWb29L3jVgzNTF87RO0GF4c658yUYzguhutbkZicfYBnze1e5lBsr+plbcVNf
	 t5Er9rMxmQjjy8PhKKXwB0MH3rf3E6XoT0oumd0vuav0QEybErBijACcu3wXTDnU4t
	 Jm0z/RvjfWdsqXI82zXXGcGaCJw5CSiparL8FhgIll6WyU013tJdX4e4rKEWUr9Djr
	 8yyds+2BFTQdQQM53FQn6qDwk9g+NGFI0yKXh0eybMPd5UYLRf3yIUS5hnCaV44O55
	 BesmJyy9X68oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C77C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 19:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172115972278.25200.1149344122527501219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22dbb602adafb96f7697990de56f5479b541051f7d3ba898929a1c018303c31e
Date: Tue, 16 Jul 2024 19:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721159722
