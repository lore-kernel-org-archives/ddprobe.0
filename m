Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B10D35674C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785139234; cv=none; b=YWBPXAkjGDqrC/cYsOp6zXqaW9HAx5RrxvA79400+siQhBPitpmj2N5o9E6pXEbdhwH4e6jm22pV8YfHr7lGM9xIzw3P1M0shx+iBNJD4MfomfHf/5iORWkMy99652h6DyUSI8m5g2B1TMWt98nLpUHP3r5BcZ8elbzOiMfpuKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785139234; c=relaxed/simple;
	bh=X+Pe8TB5dnnLCBWXykzAc8uMW/pxzHHN2E/LssunIJc=;
	h=To:Subject:From:Message-Id:Date; b=OCeb5rWPFb80LcqziGlFNNLJvJs+p0kYEN6Mr4aInHs6T0kvtrbkophhuWIaK+X+IgHrIcbS7tXZw/SB2U0gS1jhkSfuXLrXD95n+Xq2+k1CQKgPnk3s8eU7Tgg7GcR2ooLU6J9nLjnwKgt83y00PHXA9So8PIV7obITqz7FgOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oO0T+TBl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oO0T+TBl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB870C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785139233;
	bh=X+Pe8TB5dnnLCBWXykzAc8uMW/pxzHHN2E/LssunIJc=;
	h=To:Subject:From:Date:From;
	b=oO0T+TBlvGGyUjywN9tV0FSmvtsNNpXkDDDdAwS1iGJcmapHeufEp1oERdC5Dcu2W
	 mSFqFilVxjRxLs9X0Q65nmLUwWN0lie+YOojLoAf2J2gW77rMMz3mfBgonHwqr/SeU
	 kLSHsGXPeNX0zZjmnapDVGaZ7ezHCoGQAb+wXua64ebcp/slNEi7paLeBnxXwi/eE/
	 8z8WvPLeVMTvb4wbkYKtCaxVYAXjPR0uDJvNkLKL8DxcZpndHzrsLhIz79i5EhnAVC
	 8axNwxSLRpRHv9OJW5jVJ5aA73eCMSKcMb6uVYNZUnEJ2AMZ/a2XVJVZTOKtkF/YY/
	 kYpomkS4u8ktg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3CAC53219
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178513923368.23776.15812036745550669635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86054a57d9fd77f0b4a4d05f56410d1f5f424c9f5e1512ca184f65770b6d7b23
Date: Mon, 27 Jul 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785139233
