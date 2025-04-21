Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462C28BEA
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745211594; cv=none; b=seIjYa3Qpnolhnk59YyKaa4/4LhUbu12D4orKtoQrSAFzgLeOo1x87wrRv2qNt5Xj22PhiRCvO+rgXnlpgY6hoZZkE3tTK4xKMEbZ46kqkvmTflHSYnv98jVUKPoO9z82REe6ljwc2PMnlUXjLLR1PbZbU7Yer6WG8h3Mm1o6Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745211594; c=relaxed/simple;
	bh=Z4GNhRiagYmt8R5qoUoYhBQWbqBlVlGO9B6/BHNZXcQ=;
	h=To:Subject:From:Message-Id:Date; b=MnkXg4UdPYSCok/Sa3fCn3tCL4423iNZJqYIGdyeaM1QGYKNVyrNP+Me4m+s17/cYG/Kd2deDwBt+dEte55VQHV4Bgo+giw0VTgi43Lg4OL7SEl9h4Sz/x11XItl+Bfy15ov1KMiG+hJ+NT0nSiZ6NLIsilBuBxuGXZ9hJTSNX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLhcy0iu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLhcy0iu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3779C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745211593;
	bh=Z4GNhRiagYmt8R5qoUoYhBQWbqBlVlGO9B6/BHNZXcQ=;
	h=To:Subject:From:Date:From;
	b=jLhcy0iuvnnUy+jW5YxfzYqn9SE73VMXN3Ru6PR9v0JBZUfyB+mfhl70TiZL8qXtp
	 XZoAOHJkPvRuY1aPd8+O9+7kec4TX4y1aXzWx7WykT1CHE6S2SqeMVtUGWex4TpVkE
	 gWoubRXTUDZRV3v+o5ihvzl891tW5uwjv2CJ2gyGO9wFfAV338Rfg0VToHK02Kwdcz
	 pFXyTpyu3rvfCYLk3OVTHjjGGkZtS1tC2MtiYmOh6b3zmouAHVHuKtalHGUvx3fHTY
	 l9M2z1YN31A/4aDftru806RMnPwBmfSq95O9PtYKV6hPBIzegqdoAQsNtCmE/0gW7R
	 zU70RLMNWYjTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9146AC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174521159358.23154.7852042173325255670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 954e2bd9cb838ff4739dfbf2c9698f2b5bf53ebbde6b790de6228fd68d85b8ab
Date: Mon, 21 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745211593
