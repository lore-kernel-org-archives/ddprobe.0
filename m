Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05FC61AC227
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 18:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721154923; cv=none; b=EbTsQeXMJVSS/AMvC2V/HBysl+UybqE2TAeiFoVg8e3iX3k3zQAUc+jTQG87GmFu3kR83maA/Id2VJtUh/g3OlJxRb5NhpRsKMHgmT3oXZJnu6eePrbKb+GrK/6GVdlcdHJ71WsXDK4uBM3niRpkUsCk12gNrptxoy3gM22PncI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721154923; c=relaxed/simple;
	bh=1jen7OgxSAghpDgZ8SIyTkmOr2DcCDECwEC7mp9gW7g=;
	h=To:Subject:From:Message-Id:Date; b=SnUAlkCywNwItr4YfjaY3Xq7Kh/yqamUGQxgJEEmMUnW210UPn1S1otgiHvdb5OMUYXzm6BkP2E9/oOomLJZ2SbmoN2FRO8Fft12f9HeuRZ0xp9aBO4rrguULl6xjxbgGpB2aA3ddanFBDGj7aM0tXhafPUKsumjBFLWaTQTCbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDQ7ExgK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDQ7ExgK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD55EC4AF10
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 18:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721154922;
	bh=1jen7OgxSAghpDgZ8SIyTkmOr2DcCDECwEC7mp9gW7g=;
	h=To:Subject:From:Date:From;
	b=eDQ7ExgKUyRZ2EvtCeArys1qD8XD+re3qz3DjcbSylBgrr8GX9gum26+3lKMjPAp3
	 Rvxy136a2SCziEKzmTfuyh/iNv02FPdcc6rf4bDmPmoxzPiR0ATS6JXvUWonbKuDb/
	 729cJCu13rdt5GpOWyYEqkMjl3zHdjMQc4AFCs6ZWBQqKHJid+3gvrWds1pBLKA+VN
	 b0+MN/qxGp2xkBa8ji2FoJ4MY/qMf7FEot4dcnfrSIIeUHd3xX6CBGLaNvD/BoQlXP
	 75LFo0LpqMD8YwLc/Noukzhzc+LYL2DpXNMmMOfOFi8VhttglqLglhIuTMB7VKdJQn
	 kZDVaxSqMOkaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C83E8C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 18:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172115492280.26195.17525565545837263455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c81077332e59d5dda48a4f637330d9af731c0c331253a948c8003fffe272593
Date: Tue, 16 Jul 2024 18:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721154922
