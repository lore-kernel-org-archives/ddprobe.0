Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477F52D8783
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 18:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763143794; cv=none; b=bukN3+kRDSrhD7AB2OmicTKbJ0gl3K+OUG1671bKwIdDI7EGzNKZDr3Zw9i85imFp2187bY30l990azslsNU5T6f0N+4eRX7QAO4V2lspMLd2KNqSFaYPqPbEdhhpdiMLGjQ2GdujkkBn59pkMZQVB3/l1Qvw8yTPmqv5tpeNPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763143794; c=relaxed/simple;
	bh=P5j0g3E9OdGBeyIzwD2ULhg/9e7l01apYgDGbfEzpcE=;
	h=To:Subject:From:Message-Id:Date; b=ZlbrbRKd98Sxcp4u5DgJV0V80IXGw5OZYqb89WTyoUB+BhEMpuMiEG0E2gy/pitKlfb4zKgvJ94WDahLPDPHPnaAGfl90IreBUe7sn3dtGxhAp/5GlK66AdYMPUUtwXPihPF+dsjSE11bAB0CJckCj5RrIn62bQ9SEtY5dR1d20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4MaJT1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4MaJT1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4CAAC19421
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763143793;
	bh=P5j0g3E9OdGBeyIzwD2ULhg/9e7l01apYgDGbfEzpcE=;
	h=To:Subject:From:Date:From;
	b=I4MaJT1l3eCAcZO8o/MCBcQuSYwiyFhW5hoTvc6mmjK5uT8vHggIxhfa/m/EYPUun
	 p6e4W1FIjDkIoru2GOxYp5xt76FHpbM5GHCPRU7JxpbQa/HTLz6CyQNEMCRZ7sygxa
	 ZJuztyezzmVLcQUITwhw3sXYOCdFUYEcj9Z8JYUEuczpzm5geB3LzO6fgW5ECTBWXP
	 eNddolt2iTvzj1Uxg7QrDwruOkiNVv/uPIFUqJhDXPchAIU89ffYzA5Cqu5EPrSnEE
	 jblpCjCNEn7qJNnXTu/19F2PCHs4hADrZAEVIZJALyktFCpFJFrmP5rzIIJcYnms7o
	 LCJJJNafG8Uwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23C7CE7AFA
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176314379365.8868.4125103200147841430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b85c126194e601b510c0c026ef610164d9d3827e216a57ccd377f9ca5c1b4bd2
Date: Fri, 14 Nov 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763143793
