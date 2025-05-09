Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260492405FD
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746817194; cv=none; b=PnGBQjKA7XuDNvKUby+3QkToveb5B2uOIkWxb5NF5Ui16k6EY4O1oM1uTNYKDY0gQ4LroTAa9+/6cRcBc0jx72KzgoOvXp+RJ4kM+fN6nMR89iZ6KGkHs9lLxAPu8ECSazfRQ2rEYYN56VRMVklokEjawJKv30gYb5JrAbv+Tzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746817194; c=relaxed/simple;
	bh=4yrBHrtF2twE751Ir4wc+8NyH3KOe32wm06OCxsnOIU=;
	h=To:Subject:From:Message-Id:Date; b=srOf6L6ynma4m4k6P40DNFshGfRRBqcsS/ruNa9Uw9/mvDADaxq9YNr6sBfGBkiTaDmyIX+nUQzf18CUsamu0AfzilLKFzieTGA3j/mJxb69MnWwVK7M4rp42wTy8ep5YNwv0HZ7eY1h6dypbpq8le9hDRX5onzDJ9SkfPN8QVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDbu37Ps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDbu37Ps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0D1C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746817193;
	bh=4yrBHrtF2twE751Ir4wc+8NyH3KOe32wm06OCxsnOIU=;
	h=To:Subject:From:Date:From;
	b=DDbu37PsjHrgHfFlsCz9lqNelq5X/Rt4mowe0NmRuLeXmXiCKCLtM34LofXwX1P6w
	 GAMaKW+9OL1nyD8mN+A1YcQBuJVwd1UQSLGVQlfCZGjYjoIb/JVBjULaADfvqyII2m
	 SLt2YGKciMGLVjyh3z1z0VLQYp7shfQrK3zCAbESzFxOmb54GckT6n+naltVnhzzyW
	 PmvHv60oL4LhooPbirW6K6LUnmrRtUbR3M2wXU6euHf1b7EbZJGf+yU1Ubd5IsLsFh
	 3BctG0fA8nCOEgrAdDtTjK+ImnoHtBTSt9TJ/EMm4MNCw0yn0Oe/i0PQRsSBaNmOU1
	 OsIQl+lg1BMmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E686C3ABC9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174681719357.17701.5615571974437189607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87319024b2b4326e9b6c05e7fb05899374af7ed1b35d3b527923e60d47408818
Date: Fri, 09 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746817193
