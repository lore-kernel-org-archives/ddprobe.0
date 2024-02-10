Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF6AB5D47C
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707604097; cv=none; b=hnMIpL7Z+8HDPvtqanIFZChH8bnNjBn497afDjMpuhFB+8BCqULQxIaXtxkstxNn3bYRhNbr1qx4fTCxizXohqgKMlHszBJy5tQSKga2xTxy2M3Ca5ThZBRBKDZ12KtCHzXUqJGsX2DmkslvLFnCDDxhiVcwgA7Loj0+DA615fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707604097; c=relaxed/simple;
	bh=3gDsIjAaFLc4FAicLKJqlGPu21ixYWFEWWJiP94uVw0=;
	h=To:Subject:From:Message-Id:Date; b=CwNq6azcB7R7l88I79Q/wLUsmrtdKJ7rdoAF8O/dA0YX0XuycG9vrqRsE6SVG5bYVGg6io1dgL+um6suPdEx9x+AyAU8DC8vUlb6RxrBYK3LudiFhKHXPKKvDIOxngBGCriynXs+cdU6Yt0qIewonByzDaQ1uq6Dud6NEoRf0I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ad/i9R4j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ad/i9R4j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 748EAC433C7
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707604096;
	bh=3gDsIjAaFLc4FAicLKJqlGPu21ixYWFEWWJiP94uVw0=;
	h=To:Subject:From:Date:From;
	b=ad/i9R4jC/eDOy/mIhqD2D+B3GZSSBmR7PW/Ksas9y1SFCaEx6oNOf/IBsIaywOJi
	 5tg6TtJqy2C55k9Il9HQWNjmEkF/K8uhObeHr3b0vn9d/3XaPZGK9hMm684mxr8JBa
	 8s+2iMv5Bfl1Yt/IMD0AaUrCZNp0GhzyxwUNDNq976+3FRA/0BJ8XV3TviYYju70Vn
	 q3C+0QqcEKNgzzv2TCc1dH59nGI7WDy7kJt9KVZ3pTR28YSO6QmJerJ6Gi9jYJPXQT
	 h+Vq7Rf+Bwxd8TRIl9iT0zQyBbs2WmiPmj4mQpRYkB9agEaJzAY+v7WG8UQWFfvqnC
	 1PdnxJCoUPv2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B410C4829C
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170760409636.23282.13414458810188017921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84fcf040047093e78b7773640f18d3328f19ffcf2d74556a43e754ea1712fb2e
Date: Sat, 10 Feb 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707604096
