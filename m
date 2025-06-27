Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF2926B756
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751020794; cv=none; b=DDfc1W+lh0U+01MOkQSQj2xODxfYjC6OfGJj6QteiAS9X2IfC1hhCVk8QVlK7GYyWu3DhMnKwJXEHVFXOq6DEbPd8BzBgnry+7hTwj45zA9MpQU5u4R0SEbnJeIHnZEuD3x+3MIVuvWUlYbuq7f7aSeK3zlWLan/3xxvp+SuVSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751020794; c=relaxed/simple;
	bh=xdLmh6z46ooENefHacJtXKp0u3lG8hifZmf0omObCWU=;
	h=To:Subject:From:Message-Id:Date; b=Oe6vA7H2RauzHV3XZ6ZX808Vd+a0ab8NtqreIYw2Ehwfw/UllQIBY/nLyBf7Vk4a7W0qOijTrRt4gktQfL2blZr+t0Z78dA4EMAthkBxsBkqJnGCTlDws3h84obZ4ErH2IiiZggakAMAMhYUnpgOJGWfOalfmn6B9o0h0cklB4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdDwbYEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdDwbYEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A395EC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751020793;
	bh=xdLmh6z46ooENefHacJtXKp0u3lG8hifZmf0omObCWU=;
	h=To:Subject:From:Date:From;
	b=kdDwbYEVesmMzAS5g/oDV5o2UD8C6Vb8N3DQlIHIcpBel04UwA1Xb+Snq+jsQvxmq
	 BbwfKn59+SnNB0croPvFr3+237xAPRQ908N0IYRsSjaLedb7LVhQOgEaBFN+6kytIr
	 17wcz02ZhNN1SxsGx7VKbxIjW/9Z1timmGX/1rPUQzmTIrWk8/iGR1frNtwwvqZ5xn
	 qbbEs+WbOsgdHtQfVSEJeIW1JgexKOuM1DNjWNr3tHnkvdig859E8uL7mD0TL/bEQ0
	 3ocfR+IE8ugWu9Ya8Q2S902CSGYP+KCjO88G9aU205DaZbMq1DcAZrRIdVCFtrB5HN
	 9fbn79brk/wPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923CEC7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175102079358.5702.5284551581413039944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1698646800da2d1ed38133c08ea0f76a9fed9fa7c38fd9391955c4088916a165
Date: Fri, 27 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751020793
