Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B52361950
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785973234; cv=none; b=Nqcifbe3MG3WgDwBmhoy/LCg39OiUhjKs2hnDkgArkqHibGGgM0ePRejgddZqggH5Im/BUwaxcYQVIeJx2cfNhuZEc0w/XBMs8KrF4TRGk/vZDQRMg6WY7NWOJNfOqIxrAjwZt1Flp28H1DAu3+gxiPzgGXWA8uH/6jGk2LUs3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785973234; c=relaxed/simple;
	bh=ijCW3AfN+FX1JlqgSP36HNArHg8LqizGw5lGZpdf/1w=;
	h=To:Subject:From:Message-Id:Date; b=TE4v7T16yybOuoqK05wkqcv/qmGkeXR7yroSKPdtcUQg5Cv/YFLSHi0RU/RfalkgxTRdihztKIRJ432/iiX7r/LZS6EPD6LJfAtXD14D0449httZrYzp1ElR0BxmjpkIDq4yeV5zPnk8vz4X7nD0X/vKKG0AC2V3cFjX0uxBkc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvTspa6M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvTspa6M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD557C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785973233;
	bh=ijCW3AfN+FX1JlqgSP36HNArHg8LqizGw5lGZpdf/1w=;
	h=To:Subject:From:Date:From;
	b=fvTspa6M0j8zo+kMWsNvwktG5GE+PZDJi6ip+YWwqArIDKoheZR/XAZIL6s85Yzlq
	 7g2dw/fQFLmRPqT6l74SbCg6BXtxBfKR3ToNeOLyr1rXrXNeN402QbLrFaWIYKR6Lu
	 Ijd+S2oxTlIcRb3/heXu5TimpMpP8NsURlh0uJ4U0GLJ9Fe9mJXmW+TF5E7jc74x8h
	 jdwnI9mGIiNYUY4eBgFRWB9xl99tBP+IcvW7gVo65UoYp88LMJRVVtdGkV56+1hvWE
	 PEYMejIPUKUlBO6TrqgjkazP0Q3fkU8qWU+wV6LREfyIdiO6kqbSguOhLJBbnwwDi4
	 VDJENh9pk6Bsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0EDC55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178597323368.27975.5867939206879707629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b607410bf2977f224c35664640f67759edbbccc23d9547725d88a08ed926b93
Date: Wed, 05 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785973233
