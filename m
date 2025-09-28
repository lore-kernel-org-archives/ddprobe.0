Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1DB42EAE3
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759027193; cv=none; b=NLauH9DdOE+4JKGxzQr0kJzBjvhq2+ly83Dh/P3XOddR5sgKTwvUP+L3vV4vjV3Lwje9XJOZLMJlbSDS/MmvJpgK8ESg/998zE2bG4PR2igzxq2bpZRx6GWMTAFGSrUw1hHeD7JPGC9q1PAQ3RLizWo64kzlJPHxWPCXBvEQAJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759027193; c=relaxed/simple;
	bh=SgFwlRQqWxfZoxjdB+y/PzSIGruSJZRo8X+ztrOeEFU=;
	h=To:Subject:From:Message-Id:Date; b=RWAqJ6I/d7XUpE/kzr6b+Os5T6yVOOi5jMzPTLpDBPsaG5VHvbBpRrqiUx8k8gnqiGsz8efr7zw70S0UZwhxp+5ARh0UPshy+0WtMTjw9cI/lycb020lKmy4H6FVu3o0pwlKvHmFrRHbNaB/A6QLYiBEYMWkBrHSLhA0J8l9sek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3tgeoPn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3tgeoPn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63B7C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759027193;
	bh=SgFwlRQqWxfZoxjdB+y/PzSIGruSJZRo8X+ztrOeEFU=;
	h=To:Subject:From:Date:From;
	b=G3tgeoPntclEThwL7QSqhNVKwk0++4+I4+fZo3MZuOm/unvnjrUeKNletGRVM847t
	 sy7GqmIo3QAGvtrecq62RYfq8v4J9m8BLd3Sto88wkgjYlIwIrPOXsiNHOuQkmaAXb
	 nu419L9hPoNdGDBZx5O+iXTpVs7UEPT+F0+fnQNp9mtmhiWAWi3iUAJPH/HZwCB2SH
	 ROJaAsMPo/8L0WwmEruSqHfY+DMO2esnThIqnwI/tMaXY07rHSQmHlmMn6Zmj2Pwjw
	 C9zgsY0o3FOgguXCOO81FlgD8ri8XR+reNc7lk+I/BHyOumdHo89F8s8kXecl4jKGS
	 +mejcygmlAdtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91628CAC5BC
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175902719358.30362.5614855569892090044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b6d6088bc80fe9da907ae744a76769c51c12f648a17adc8c4ceed1edc3a068e
Date: Sun, 28 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759027193
