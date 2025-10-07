Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151811B5EB5
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759797594; cv=none; b=g7lFlcvrAOxVdzrp97IlomBS7k5fd8X1chets553o8Z1bupLQRgxuMXMOQcSXJJIiiyo16w3dA7hB1WcVVrTjtKNlJ+TepjTSi40FNdHk5p+YMX3/BYPWgtR4M7SIbVpieDtiOOOVIGl9JJ0cg7y9wg+qtVCOmGpni3vPLRnJu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759797594; c=relaxed/simple;
	bh=OefoHXBzt6bMsUySaKRC+oOE7RoCs08uRWcDaSNc18o=;
	h=To:Subject:From:Message-Id:Date; b=KT7xzsTotuYvmpgdyYHeTWp7IjgdNl3f3c5qbfuMVyRJTGQ0XMy7yZct89Lvj7NeYVX3hyYGZ413710u3kaelprHL+XvO3C7/P/EPoeI7E0YODTlJ9ddxlqlchpes0M7BZ1U5yLEsWwopRCuUkWsE03yCRTGb0dKfS1pTxOV5lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TilK6rUy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TilK6rUy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9102C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759797593;
	bh=OefoHXBzt6bMsUySaKRC+oOE7RoCs08uRWcDaSNc18o=;
	h=To:Subject:From:Date:From;
	b=TilK6rUyMOaEcF0jgZlEH4hJcDh8StzCGtSV5sVR1fR4P1eBQ1Tgj+OIVrjkEU65U
	 XuJKPLANHiNjg2seU5OMgigyqJEILanycL2j0r92uixHIYEs2bMXBcjFkL7FTg7veZ
	 /a9wzfMPECellmlh7TSgUWOwTNER/4If1dGlHZH+YK6khQaibYWddVsRPN2VXQLh3L
	 veKHP6RdFdbs9qKjQYsjXN1nLd57Cyp/hop6X1hmtBfNtMLuZXI536EKcEKzcB3lW9
	 y0M3p39oLt1Q3vr8JXydXvTAp9UPPYXD1GOg/I2PKpnylAuHDxE2mkde1RbowukdUq
	 ZrhD9mM6GMP3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998DECCA471
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175979759358.6580.9619589637512441532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 495fe3ec9262da8ec85cc1cf0d10f7c090c78354fc1f0f8dd9c85fb6336c9380
Date: Tue, 07 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759797593
