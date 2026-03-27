Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A6637E2F9
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774599294; cv=none; b=Nau9bKh6hOVXLidD5joUyKHhWEAS298bFQoQaNv/Mb6n8MKXnmgERu8WaiAyPTOxEKUOwb45hpwLDIvAJbPS1WWvxXSOkA5n0G2fBaCvc3ddpBkGd3sx2uxKWxMD+0a/RTLpp81UpblElIUS2A9XvSrAX50/a8c2T+/DW29pcXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774599294; c=relaxed/simple;
	bh=jvPduX2qUE6heSM4diyTfBcoHXVyotsyFUGHHvRScF8=;
	h=To:Subject:From:Message-Id:Date; b=ULR4t/G0Te78cipOf4K4QlBEtcgtbGFGeEBF0eVgdhjxX0i4XG1N2XLpYkmkH0amF/grwPg5Oo8tWGNQn25purjkri5S2ODaVEURPwAhNwBX5U6rWxTUtqYMdtquSaVLMe9VgOf/g1HMv73S4fn6R7rVgGkNCRJlXGemAuzezoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MnsbGUcN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MnsbGUcN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7D0C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774599293;
	bh=jvPduX2qUE6heSM4diyTfBcoHXVyotsyFUGHHvRScF8=;
	h=To:Subject:From:Date:From;
	b=MnsbGUcNsGc4dsbjmqd9SctB4hopvkWuCl/6XmRD3xvpB6VmhkiROxTb3TU+7zLqy
	 byFspnMDUWMKgI0ht62aJRnh7zpH9BqXS6zfZz4i6DhWtq5pM+ZlKLBEk31+ka1Z8Y
	 guHadkfkKgtxZDGTtc3f6lZZuLaA86i96c6NZFBg5SRN0jE4YyN11WAWsxBZQcZb5I
	 5D+7l60EOc6L8JsKfFlM4k7y2MRVb/KzrwRGSwU5d8zHZ2dG/yCWZUkQ9Y7KZw+bJY
	 IpuvbTV4y+TFLwaUf96JOg4c4mPKRYtjFGXYpIWdwpI/4dUM4PytoXkcSsS7Pi+UWc
	 SD8fZdqIA7Baw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EAF10BA437
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177459929360.17791.10233293612360899725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef2b16e5af3ab6ba67b963e433400857e3ab1c64296eb0e8ed5d84b9f9acb284
Date: Fri, 27 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774599293
