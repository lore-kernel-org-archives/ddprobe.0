Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211A234D3BF
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761858594; cv=none; b=M8eyld5p7+/1ZiVcQdWJntrBQxx3o8qAESh+NKRHlcL80akkOTtSwWAmKJEEfqogosCAAVdCwX5SpPis17oKSmN49HKy8a0cfnATh+nOXDe50w+kW2vm8gUKRoso0mv3xNjkfnPmJCBMygB7iODtJm/qdXaktfeQuRoKYbtHnPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761858594; c=relaxed/simple;
	bh=xzFtVlYfzxqur3WPlqLKgSXC9tnQpvs2Z89LGzEvWuI=;
	h=To:Subject:From:Message-Id:Date; b=AwDI0hS6+ieWWPRHSFhYr+EHcz9yrURwo5jrqOuXd3/hsdpLFTF60q5IW4qaaGlFBt7e7t2fBK6HBgo7toFzL03IwPETJxJGskARCxIGApr7vqBmCfaFHIvNajNIqNXzqNeegNQwQYjgzcw/b3P6W9DSwqX429dVOQcL5lNmPG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SaOuLNvU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SaOuLNvU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BECC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761858593;
	bh=xzFtVlYfzxqur3WPlqLKgSXC9tnQpvs2Z89LGzEvWuI=;
	h=To:Subject:From:Date:From;
	b=SaOuLNvUsMcr66/IXGYky/OlbATqnhMCzaekWFTOxhOF4YW30kXeG0Vh0uyN7Q6vj
	 rmB5jdUsUBU90nCrv5rwg4EbG3cPm8aQYXMCniqUI6RWbzICepjLFbkkYG5KRqsL62
	 hD0r6yj2U4lykV/Y7S3Mf6kq2SWqA+FRt0LoHFqq4HRWvzKz3GQm68i6DZnoAmMSQd
	 WXdFQ9bcgV7gXoJFfmnE+/1nraFyxe9MGQYtL56SCn1mvaP8Lv9ldFUmTypl0FzH1c
	 88UcOJyq1xsXo/uvdPCbYh4HX49ctLfsnzH3GfP7GHLoqNTXwlU4vOnFHXloT2DZr0
	 hE7g3Gf63pzaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9528CCCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176185859360.10027.261346721760764441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdca7f4c8199f14820922bf5b8ac4e2b023e5323ca926fbd80e116611a0b0fde
Date: Thu, 30 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761858593
