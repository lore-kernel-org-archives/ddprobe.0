Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C08F42356C9
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 04:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767501234; cv=none; b=mEL63+tLeHWk8CY1/eUMf7M0u4e5EzHm2XVHHpET7cjKaPDLBxmuT8i+eQniJPtneYpy1qxCNMIG2kdToHwDbtWXmvagDLVMuUd+yn5jDE72RgRhMQN0/Bi5pqjimJQOfgY/mh+cXIbSjiWzQh1Yl4rwgYBTIjkMUjwYENPFipc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767501234; c=relaxed/simple;
	bh=28OMs2XPXd7sFI5b/D4WEQuWIybznV0qRT5GwqJyWIo=;
	h=To:Subject:From:Message-Id:Date; b=gdAgb+xx5xo/cJ8TwH5aw5jEVWiE9KMkm86G7yet89ubOskp28CrFZdAufezaMAzEf62UxSZoatOjC2DFtMvS6UU10IM3OWAgYI+/tow9yPnVxmTijHWxRTIW54G8a6Qv/WITLP7RxeiCqoMZx6kRMpeWLBIw95aL7ovaRPfwAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roQ2TsEP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roQ2TsEP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2670C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767501233;
	bh=28OMs2XPXd7sFI5b/D4WEQuWIybznV0qRT5GwqJyWIo=;
	h=To:Subject:From:Date:From;
	b=roQ2TsEPpoiqWE52qQo46YP8stVgF+yUDe3IVTSaBFPdfmEZt6kT+5rY3KXNxHzeX
	 WV1Gl4m0ifS59Zztt0jLbdrJkzGlNLj2pHhPNgIQPK1ek+848Nr3sRop7ess6TFgtu
	 UKvS2Bkl5EZRY5wZOpF91F0pVIfiNUM3pmZRtKv+4lON+mYbd/kbqs1n6C2GqjfWH/
	 Iyk9u5bFfBJhbyayk9wkHTGLbQ6tr+LjVNUk9KnMWBuUcqRLp3u+Nw/ydzWtoHMCMM
	 Mcpf5E+VWQjoN4nAnJL00iCigj0uHzBwAc/MS9RnX1IabCktJ+jRTaK/Z1LNHCndxa
	 ATcdcg4dyUEzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A22A3C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176750123362.29643.18295523730786361829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ad9f8c9972b20f728c68dceaa5ea7cf8e48cd450e58b12f2ef5f1a401b35051
Date: Sun, 04 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767501233
