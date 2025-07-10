Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B783288C80
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752176394; cv=none; b=MLx7LIY+o5BOlnjbqrTawtw/Wy2TN8jzwhSsWrSbRFl0GQSgrQ4oviRC33TM3+EDgEDHF/+0p0uGbWPGJvzZZ5Jw/6AwxZ2IbuJ0BYDpOuFBZ7yEPPfP2eUJFC2fg7t+PgoSUjs5GNBrpdqghb/6LtxA9yaK3IgzWWHkHx6P48k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752176394; c=relaxed/simple;
	bh=XlTOAwiCD3gaancfvQJnjr5iCfqzv6dqeBtgrYVzrLA=;
	h=To:Subject:From:Message-Id:Date; b=opODl4vETIckhknoG0OtTFVuWowfpmeijM20LY/iY2cyMMsNHqw4uUWzyTwjlssQwyXoU+xSgTOgPVmnaPrhJa09QzKvkxfqRe/bbko+9nJo8QdGBPgya+TMS822a3n1RpNO6ZgwF8Ni/D3w9Lp8YtUN3lJY0bN3F1AFvWavvyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSVVFDwq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSVVFDwq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37EEC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752176393;
	bh=XlTOAwiCD3gaancfvQJnjr5iCfqzv6dqeBtgrYVzrLA=;
	h=To:Subject:From:Date:From;
	b=sSVVFDwqNYpYAUff7Bl8u1xW87zbeW5lKMEEZxsLd+yRpAxxgLexPSq4klIbxrer6
	 0ZpWIDl8Ki61gGWoX1cyCHSSzUz3pY8vwzeDAoENVjITZU2EStENqdzECEBpZRu6Sm
	 ujPsVxMqT1CF92gYfdq+Xru+lISL3DIDWDLB2lVJRuywOKH58nUIKs7UXMLzsrKMD8
	 8XSQNC19UVVGfZksw2yEzf1Bvb7nUW8NutjHW6fEsEdNRtCVDRef92qu78+rSPe4gq
	 TLNTraf5BSg6veYPoPnfTQ8gmZ665jRzmYd4JCAaTaS97lJX3wMebUw34esDT6l8+v
	 7C1nOvohS4v1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D61C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175217639359.25653.11577782913749978257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d281adbe90b7c2157a7a37fbf1b2accb5fc5b39ce20468a5b03ce280ab5f5b75
Date: Thu, 10 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752176393
