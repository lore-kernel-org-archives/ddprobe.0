Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32047186E2E
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763089194; cv=none; b=hT5nvENrFPdUsfU8GuiyeNG7M9QeV4MT99VC2l9a4TgvvX79Pood+lq6sM6knwT9gbnTooK4vkpuIEU8l1o3SGF1hZhHUbcUSzC9BDEy146GEV8Hic/P2oJ7L/pjxMiA9tCzTPXQB5in8L3q99PL7QawD0A/m079COQoonBXUSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763089194; c=relaxed/simple;
	bh=7zjywqGUPFlGu1cxHOKQfOdHkr4A9sNY8Jv7+vKGqU0=;
	h=To:Subject:From:Message-Id:Date; b=qpBWDiaRNhfOonXwWsBn+VQ+IPNmKHvqnMLA0Lcf4HCVFIZxiVioOSaoZyib3YoNdHyJyrzbaRP7lLWwi+3Q+enHL5wQgKmnwwpn9d9zQHbPqZmsm6YbSMBXqUmYU5/RsEJY9N/EabhiDyTPXp+3i/GvnAX0jk1LACc9bwGdjHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJq2F2Kx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJq2F2Kx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE9F3C19423
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763089193;
	bh=7zjywqGUPFlGu1cxHOKQfOdHkr4A9sNY8Jv7+vKGqU0=;
	h=To:Subject:From:Date:From;
	b=sJq2F2KxCf8n+vp4RScfU7gtlcRJlu9UGk67zJ85+4MupfShZZNYDDzbN6W9sXpum
	 tapXa33hQxOq7xy+gTFe5uZ7GMR2+fG4I32/zD3dAT0Eeqk01rCwK7NYNY/aGoXHuF
	 KrqdIn2xX/ErGyLIqTgP+40S+FsjkhLGynRTuMOIxdm24rjhNhRVlLTxcPtXcz/gSY
	 nDEUPbYXJeSqZcyPI/947AfWyj9H0mBSGwxuITHHIsQ27Gas6NlH8qYlq/l1lTN9LQ
	 XIPulLZWaPSf5ckVd/c3zMv8LyKm/kRuY1a3zBqwsuHCgUCKYJanb4g9TXe09tcgB2
	 yc4uC9TtJ6k0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3AD9CDB478
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176308919358.15120.7610548562218030082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0329b901a7c42552cb3f612c95139d1de9bfb7fa8a5e05b30fe8f835ac71238
Date: Fri, 14 Nov 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763089193
