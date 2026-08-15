Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5244F4B04A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786752634; cv=none; b=OcOfhAIwM98vLSYMW832VjKhc1X67+YONHZFqwbcAm9FOB+z/THyY0xFxr7iq1uFLV9Dsx67WXJvNB/rMoVkz9eRTYXKo6fnil9taoQTIOqdnwlLsgnod4xE9w5N4LUKXpEG3uwcneZnZQJtrGzsAFl8WLCEgSmvp10Bw2eJP4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786752634; c=relaxed/simple;
	bh=V76aYMFN2DDss7TqSGJ6EwYyu2z+Kl82+yULXNNEbK0=;
	h=To:Subject:From:Message-Id:Date; b=CgUaBILhhICyJUg6o/AU8Ele7z8zWd9tO0hruBUy0zub/jxQPhrE1g2V0Ooq4VgXwhHfPB6iBCAl7j5ihsdcdzTJAzNKNLgPXvNJ7AtsyFD7BKZPfYblLJVhFP4vdT9zJmpULECmkrCffl3DUSQLoNiQQwyLOZnoqdlR7yQbyxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stkGEHfj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stkGEHfj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29F7C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786752633;
	bh=V76aYMFN2DDss7TqSGJ6EwYyu2z+Kl82+yULXNNEbK0=;
	h=To:Subject:From:Date:From;
	b=stkGEHfjoDNYU4s9Pe4Ds+ls+spejlWsF3Xjfw5/lBhrzqUFxjk8QBWZvgHTxAgxv
	 dq5yaSBhz6OGfkM6Q2MsKmElZjLgkTv2P8UL5a7L1/5svTvobZqUQvYuSaqe6Nxly1
	 IXJOczgiSah4KYyQ/+ggHovpjLX9lIUNuNtwIlDJeJIsPViLvYB3TLwzCIZMpF8OzF
	 cd77giUDIW4EIIOpCtJvUfrzP5RTBMKLApsghk1D4VFP0trxIlgQiv2YBF0CZh7Poa
	 mcpjdi/7I3Dpx+WVIJczH8ur/1znmnw8kY3n0WXrT4uvsaRimLHEstqzY+yVBxnhw5
	 39vMMpg8zkR1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD72EC5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178675263368.17831.16617721481399741210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05ddf3e85b51d21736f0ca31bfc20fead55f79fa2290cd10b520927ea1aab46a
Date: Sat, 15 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786752633
