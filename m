Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124E3288C1F
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755526194; cv=none; b=lvOmeX9wT2E3cye18zHfonEKixnJDs6U8T+Ju7fkvLS64MzhN0ZeODsoHdl2oug8Np303fQ8XuVfgYFe8Gemju881hxH8XVIx7Eqyws6hIDKzWWdWqxhuhxs1u7wYhQzlKbaK6lbkuMxNdHi+zUNAMwtWfV7rwCHTvr/1xKruWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755526194; c=relaxed/simple;
	bh=2/XSbZZUygEv6Adx3M6lKgNKoDv0lpPje3mgL5KGA74=;
	h=To:Subject:From:Message-Id:Date; b=rUYZIzj+0k6zMjhHvuj3I694nRunLlxkO4h9fyGf6hZfaCSs0uhrxy5aH7BE44Zp8KWgzEavJ51zlZzADH0UbtvmBUBWyh8jPFGwzMOI/yMxxdX8ee7V3C3i11kIHaoa8vKYgvVl/yK2UOaKjaEPVfVFCxVRDhjGUpNLeaMv0zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEaPvQ6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEaPvQ6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC337C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755526193;
	bh=2/XSbZZUygEv6Adx3M6lKgNKoDv0lpPje3mgL5KGA74=;
	h=To:Subject:From:Date:From;
	b=iEaPvQ6PaAfKOR0v1GRXStPgqW3G+EEeIm4VSngGOzZPdKWG4FquzbiLIdN+znZql
	 IZJ2LuXYM9sPS6kYZ5s8cyn9y7uDgHTLJWtEvy1TEN8ttDF/9EDa524IvMCq10myq/
	 txoNoHHv9JdtIKEfke/tj0+0Z87dUUlOn/bwHLFli9BVVqHdQ93HvhaP97KyQ26lL4
	 wyxE8CsYFl+FuejBnUWIVHpbHRruSAqU4qnIPytO/XUENxutZrV1aBEW6HmZA9wM5D
	 WySiv2xN6DZLCmCX80wuzjH4iTb47jY5JXuLQET+253MJUElSuRVhOBKGRzcYnihxg
	 tRHtUrd/iPk/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901F6CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175552619358.6627.9014915971438065150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8a6b5bac3a96d14cac9af1a2a33d862770dfe6993caae931e3ef53152b42632
Date: Mon, 18 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755526193
