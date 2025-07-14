Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C92772264B5
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752475193; cv=none; b=K/UW4fIV9Tv7MpjRZEbNXnuf6SAlkcJlOdUeTucUgEwNssNnPkm6mp5RenJAQyZIViCd4H6rc3HmZMg48KzJszpyTdwzsEXwPIEgwkLfl9pMK9+P9qUEyO22mo6ntstc2Jl3iz3dEnlqBBM7/9oFZa1iHr0U9j9hLg3XKDh0RZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752475193; c=relaxed/simple;
	bh=72uPXBXzMH2Jp9GS60WLIYSUlOqIQ8v3+/PEDOiCU9E=;
	h=To:Subject:From:Message-Id:Date; b=DK69GB6K/2qQn3DogX7ORnMjXFOAbyjTpAry6VvQeUiGgumPF2Q/35Z57zD6mIsaCPa9JsW3lMw7/r67G+kPlT28Q/B54TWwiWQKiMIumcg9B/4Z5XuBwbW0XLZGRzBI1CmXTl0PrjQxLRQrBFBLUNOHFTiKdkU1DSSh0bCyY0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNC4Y4OH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNC4Y4OH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4883C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752475193;
	bh=72uPXBXzMH2Jp9GS60WLIYSUlOqIQ8v3+/PEDOiCU9E=;
	h=To:Subject:From:Date:From;
	b=oNC4Y4OHwIdQtuifvR8lwTmyCofW/OZVHBGimfu9WZ+/bUjMqiK4TvK6fFCr3n07c
	 6sEHULterrlwhzkKkJVFUBtWNQHtZbfGCQAtwQiOunqjg/y8M/P9gA+Hw0KjKF1+Lz
	 J4j+9Ls21UFMq9k+uOW8dqF136cBOOyEs2T36ekfvMFYGrZ7oFc4astE5kGW7j/EEv
	 nedDgSzM8Lr4n/Q0l8fOvwdL+CPGy3UBBYk50QrE3ijL13bFcBiVe0IrqHpO0zzBXu
	 kHa5j8p8mVBfyO3J/6crSdk3r/RenkrKDjo/nvpN1KQ/2oUrD0gmGCWRJRbCzlnjuU
	 xwwitBOp8tMLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96720C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175247519360.15970.6772744766711957179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b76bb82ae2aee0890454bee18825fff42fdba5d919f5a9534f32516e7b6d23a
Date: Mon, 14 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752475193
