Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B25101C2
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706935697; cv=none; b=DgSUiBbqIypYH9c+rC3khzbG2f6PAf4Ridy6Rg27JPBCKE8E7SweNEUERgbetiUHxH8iXhgVpLDu23GaQF/tREUFwH/q6aSTWYh7ZBSjP12M8UY5au4JRU20DS2y25W/+/u2oDg5x6tFtgo914At4JTf2FC1qtjOcqVikEwCCpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706935697; c=relaxed/simple;
	bh=yNqQ566HkDHIRuHYrcufmebqCBYGSNpb+MBl54bBtU8=;
	h=To:Subject:From:Message-Id:Date; b=LNl0kcbSDESr8SL0WR+gVfrwgXgScGY154TtRZZ+CxgAG/eZCQdon9MhkFSGwmN1P4nYX9es5f9TeX5gsu46sNFdnqX7sfGpFpa0IkMrx6Na8PXnYnOeY1KEzF8ip9yHx5QbWLH3+ivfuy7lRH5Po9DGRGlWL/SDKmxKiqNiqmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7fznylt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7fznylt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EDD2C433C7
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706935696;
	bh=yNqQ566HkDHIRuHYrcufmebqCBYGSNpb+MBl54bBtU8=;
	h=To:Subject:From:Date:From;
	b=e7fznyltxQ/7x5rnmeNXJNE8wTVSwDXr6CCSlAdDNmHwTtHgaIemzKeX5uny0HpTJ
	 q7UQBZG7Y1rLa7nUe+hoj3JX5SDknHAaYaPAcEGm20BDGN0nQJixknEYLfL8E29Vpx
	 y+OcZhE4qVGtFXla/TFnIdjGoLfb9tJy7YdBGEnWH88tsgobCH0UYta5Wz78/i16Is
	 ob6mFrnYXOc+Gj5Fg52TYHGHLpEz1phTqgKPITaGghkol8b+J4bIARMbvr3ShZRxiN
	 6XDumGQncMoAFpiJB4JuGoX2JXQA9MoXwo10mReynLhM3Zs/8vobctSP+vaBLu8WVd
	 6gkVAydgMSUYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61361C4828D
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170693569637.27023.6836575967852854486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47c05db9eccc62a036df846047156f0d54b19847cf75d79dfdda537bab8a4d4a
Date: Sat, 03 Feb 2024 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706935696
