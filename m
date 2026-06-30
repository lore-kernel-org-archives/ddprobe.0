Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F26F3F787F
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 11:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782818314; cv=none; b=UJ718dPxVRY2X7vuC0RrhQX1OzP4RGWh3f3P63ppV8eUafmHlOBobSRXX+CkrHKLEQ8PbRtBWTheIOHpke2sl10124zU5K7UXyz4r1wbDbdRoaQsOV044WMQmA7Y2Y673nNVK9myJbLAoKcLyYEJy9iUJ61eGPeQYJXY/y7M2BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782818314; c=relaxed/simple;
	bh=ENGaU5BpqnEJfZd3B3sgpP5qsP6eOSGwC75WSlY85H8=;
	h=To:Subject:From:Message-Id:Date; b=rgxCsngwdJBsW8tzLSCn8Ymt9Ay1K1YzQERs1A+ydt+OBFZTQxkWw4i1jeLsCmt+0nvUZzRfSnOLWKVKOwQN8i6unhupioHHGqGEHpb09MYzzkPLJAJlxKp+LE101iTNjHWcTgy1A45jjfE62cneZnCRURf0BznGmO+8K4UYqFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snfdncH/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snfdncH/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F7DC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782818313;
	bh=ENGaU5BpqnEJfZd3B3sgpP5qsP6eOSGwC75WSlY85H8=;
	h=To:Subject:From:Date:From;
	b=snfdncH/OMBgPoIOZ4x85iFcYbBCOX/Rjsp0DgarIRTWAu+vQkyiDsiIDA29Plf07
	 PNl7qj02Kl7vN+2T5oi6xKSO0uAuPlKn2aQGwtIV0va5r6kS8oUuH9ClM1gzcpgwog
	 yOAcHEqgzwS4MPmGii0QqSHAUKzijqh56z6FQEIMwjakTB4WwIgaz7vQS5G23AW+rS
	 Ylziem6XO6/NrQeeRXVyWhXJClgfC6bEavYBVElANkU9sT9Ui63MyPtCubQ6akVOSp
	 x+jZC8hMA0WL3WYIbHlRU8FJf0fbYLnE6IESrRQn/RUVz5xtX30Zw9lMa0fqTrD37W
	 6I19hnFG1m8Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A884DC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 11:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178281831368.1832.1460351242808512848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f7ecc411c28c8a2f91f8882f861ae809c2d3f604f746b773f54c69b8ed4dd36
Date: Tue, 30 Jun 2026 11:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782818313
