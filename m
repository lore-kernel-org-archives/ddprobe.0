Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD6D9338F53
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757424593; cv=none; b=UNvtVj3tGWVbcHfLMtcYVrQf5wTJBiUnBAvQuk8iyxo6AQ7/PLRmVOJ6Fq3DXP/qp1ny3Ms83YH7QKtMun2aohXMMkXhfH0ZoRLi2GwBjkGAPUD/VItp7jg2m7mkzajagRoGX5a2HGhJul5g60kYIe2GvIvpuZHinh81phheuxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757424593; c=relaxed/simple;
	bh=tUESa9xATLUk6usSk5K4EPNAr0yE3I1ObmKNt1yQy78=;
	h=To:Subject:From:Message-Id:Date; b=Al6DMrrSwzyhyJXRCJnVwRR8d2/igKtb3Ant1Y+ILTrFs0L2L89me85E7DCZfX9BaW798aWa4CODnaAbYTT+OUuXJRhb7FrL3Qa3vgJ+55kZ/pjB1VVomKR3tRD/p2I8bLuJA7CKvN0XpQmdwQjIP9lKJxaX178DoRkwiH0KJeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbcKN5Tw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbcKN5Tw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F8DC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757424593;
	bh=tUESa9xATLUk6usSk5K4EPNAr0yE3I1ObmKNt1yQy78=;
	h=To:Subject:From:Date:From;
	b=WbcKN5TwTA6ZQFk4PtvEDrtseKz9TYSPVTTs0nb+ocwI8W4oS0rZrXcIv3EdHgDsi
	 D10EqYw52Y3a8GvjumkT6gyW+42FtiSulzSnHKfnAiW0+3Zr21K3kFNK8Z12Dg36t3
	 Rj2ZseQSHhHNAaHFO9lMJrn7GJ1XkCg/Zdiv4R6xSOtuiWXQgeowTqZLCO33ejeHkq
	 JPbVyQgZWOoKwQAy+JY3O/ykKNzS/G+vzZnrixLXOTCpqEvwARYJtyisnOn7fJgsHy
	 AHc+Q6fmL2mG684kN6Lfa0uRywzznpYIkkQ/2JhYIFMVx0iUx3wtZg4TDMuXNTmHBH
	 vt26wlymHzSlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918F9CAC583
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175742459358.2920.16384588324676829165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 152c2227e455588e7deeaa1301efae358d63d52f3e722d68030e322ff33846fc
Date: Tue, 09 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757424593
