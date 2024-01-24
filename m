Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07DA44695
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706114297; cv=none; b=fyA2PiFLCPBplSbNJgpFpeX0PFRQUtaSI3CkzAyht2HlI+WsmvSdDTzcCooLpvsnLqoUa5cPlDamUhR8Fmkmod8zaWM0mC21tQucQ5ETYAWZ4N0L35Kfbj7TSlJWDhA2FWmQUX6UmABan3fEPzB0f2Gqz4rzUBCYiGviSuksRyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706114297; c=relaxed/simple;
	bh=l6vGho5ElitebOo4IwCl07iFqVzNZXFqVBre2ODkC58=;
	h=To:Subject:From:Message-Id:Date; b=Z3GIfAG+pl8YGdRT7zFlbUD5Y5DrDj+znXUDif+rBQctktaQULjbgDt73OTLX40m15A5KfdsKAAzvTYEqr0gv5CJUTiKZYZvYWRu6IH1FanyMc4cdVuzOoLcd9PRCgLMsZil0kmMzC2OrOVNphfaLBXhONNUtiy8Rmm0AFLOCpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUkD1r/M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUkD1r/M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70D53C433A6
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706114296;
	bh=l6vGho5ElitebOo4IwCl07iFqVzNZXFqVBre2ODkC58=;
	h=To:Subject:From:Date:From;
	b=PUkD1r/MVisjIZkrqzd0gp4hg5kLSHrVo64eucR/ShBHZUrhBmodr0SHZbU2PXtAt
	 Q2BE1MMnBNU72g0mvNGM71UNVc06xvVsH50O7GCq54hw9XcFxHU/L5VbSVFm81r4qD
	 E3QwzqX+R4VWdsl6BQHcbn5vfyh1rbvvmXIEGOR4Of+APZGCGmRnS4vEEBpF7FNJu1
	 7QcHzVX8xMygIA0M0Eu9xUQZMf/nYmktmcuDmPGi3XxupE4BRvgC1PPD2RWJyipTbB
	 8gJM+F+539b+42kiF/Buee2Y5L4VqNo7pXed5TEiLZWhwEEIYL5pyc86w2UKMC9ohM
	 r32tiMHUwUt2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BC1FC46CD2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170611429636.3210.14146818117052927902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a263179d33604df8f8885e14217f27dbe135c5f2a14bac911eec4965a5f68da0
Date: Wed, 24 Jan 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706114296
