Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2111F4176
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 01:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779066034; cv=none; b=fjtog3aiRy/y42krw0lITzG1ySAH33HKNzhBwgtN3TDdTqEIa8QDx8XmN6nVo9PIs0eWPtUDE31kl/IxhpAcgwHY21/qmpqsHimtKmZfRmliOGrKI9vkUuHFzbX4r7HJ3wI7PtsEuboI1V8uPKeHTR9ca6B6c4Wfyn7YwcUYGTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779066034; c=relaxed/simple;
	bh=34IV18TIW8Gjiuoj/1RO0RAtLT08S02cmq6GzsHFft0=;
	h=To:Subject:From:Message-Id:Date; b=QwG+kKEqx5fFr/Pw59S4BVsexVP1p/AAO4mEGO66agStLw85lFSCSRk/3NDPmti4hXQG6oBOTGhI+69iMS5rJ3/FHbHvQ0R4SJltsnQ0JoKX6Ye7i0ncb5mu3OugRi6LFrBxqqNk4IbcomRfS7gfAifBsWFC1JaPLHSlcD2syvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4vV/BRM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4vV/BRM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF68BC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779066033;
	bh=34IV18TIW8Gjiuoj/1RO0RAtLT08S02cmq6GzsHFft0=;
	h=To:Subject:From:Date:From;
	b=S4vV/BRMePndLsdY37tFGh4mrPJmayvg3UIl74hH0mlcw1cadjXNqGIaBp6kKw8rF
	 As3EVGIJeGGp+gZAUq2YCCznqIepGfHmxPat2oLBOj8/jy+uSqeZsH8Ti2WxJWcQtR
	 d8gcDQqT5+r89sVXPbIGo6m+VesZslostqTey9omKiqUgKn/2INtzvO37Cc+fV2Oze
	 SoJZvdNBl+xi2kv9VMpjRwVvtP5kSQUtaF9iYjJgnyEnk5BeSm8LL0yOI3XzU/U6hH
	 O3J+7vpGRjPoYOwqRiP10m5BPrmPl/aH2mRRA37hIsR38r22ExkQmTypKc9N2F72uI
	 Gr57/aOs6fyQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC1CCD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177906603369.4769.6665946967632450988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9848bc496ce601b127fcc732d4f8259c47a1b1b67c26786efe503ed261b1cf3f
Date: Mon, 18 May 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779066033
