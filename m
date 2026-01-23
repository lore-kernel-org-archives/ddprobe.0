Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F41541B4224
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769190834; cv=none; b=uEKp7AsBNcVqkjBZGrqbayWpWlie3Rq9OE6RBEmH4TFXb/IP3qXWjKqDkV7ZbDGILfbGfFzxUAcGFONG5Xrzub/S6AvIhaKPGulltPe6QQHJwjR1GMNj9l+nTGewXRTupWS0PWIscaWt95Fw98vgy6Sz7WwyuulSH0PZJgWCWyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769190834; c=relaxed/simple;
	bh=9Crrpiv556J5/jYGA9054lL+w4n2w41x7ycoGqplHW4=;
	h=To:Subject:From:Message-Id:Date; b=Evh18ZsJm59XBRLQpW64HT+jdz+k8PUUAKAd69yP2PnqP7SNgVWX9ScBKgLOSkn4nHqiWrl8Uc7WwqQoOq0m7PZ3AerUyh+l9i9Xr19TNCa9lK53xj5og3NgGUKyW7EKGrixu6epri2ATMB8JG9SN2dW4Xk/yv6vkGH043EGip8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldJtKhw9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldJtKhw9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A062DC19423
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769190833;
	bh=9Crrpiv556J5/jYGA9054lL+w4n2w41x7ycoGqplHW4=;
	h=To:Subject:From:Date:From;
	b=ldJtKhw94msihFzMCzy+VVlq7itgsZPUe7eQ1YhHZse8Z5H8rIaJSwb7uZq1WMqJy
	 1V9lkCuV7dyR6Iz1Wu1UoCQee5cW8Q05k3ba6l2uiSR8vtyONOzJE4SsHk/3CCOKQe
	 i1tWMBSmDb4eOm55Sa3j4MLFRYF3tA6ZRWMmQtsaayDchRP7SqGyAT9xuvE2AwOnEb
	 kkLhinQM32Ut0yMC/GIO+miXDsGZIInkuF9uy4juTY22lkprPR4lYQK1c6DxbVxawm
	 dPhFt0CLaf9AqBCIJYTn7m1jUjonkNIAS3EW/RwwX51YK3P4HdBb0Y6nUXo/jorZsI
	 MLZkMv/WLpMEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B24D7789E
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176919083358.25939.7071463663835562163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a032e9c2b162404d96ea76a5f7a9871ffb004b342e2a6d2015f8109fc7a16e4f
Date: Fri, 23 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769190833
