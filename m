Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1780D1DF25C
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769241834; cv=none; b=hGgVsqeWn1JH4sgFHEI29k9+qc7b2+12GkySEfaTUUEEUY1ZU4SZNjus7SvPoGVhn5947nXj8iaFxziGLMZBUPjdGlRKJcFfO+2r0RaMe75EmCjFeKJBh9Mo/JV4vpF7YUkoNRMSZ8sdZukHudgDOpVcxzbu6SVGGtyOp/C9dRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769241834; c=relaxed/simple;
	bh=c+y8aMlKzk7fuFAK/xMnL56vFA2NyYpoAHZq1ilB1sw=;
	h=To:Subject:From:Message-Id:Date; b=I2R7yqCWbzK9BjimIB7XuuGyYze8FxcVBX/V8yAXrZP3peFygRIBy2irKoxYeewdNhal4fZ7z0ctWCpZGW4n6rW6onD7lCd+PFlciZOXVf88JaTJqIWsyGK0U7YgBoxt7DTybCVdPZz9W5ShxcVK6lrUlS0TdWPuSwzEBrMCed8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GyO3gMr+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GyO3gMr+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8962C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769241833;
	bh=c+y8aMlKzk7fuFAK/xMnL56vFA2NyYpoAHZq1ilB1sw=;
	h=To:Subject:From:Date:From;
	b=GyO3gMr+Tn0si+dTgRjJp/6oi3eCG/N3CfABi29r/M0vScYIT+vgftyCoNHFic8Ej
	 dUe0KTQ24wOiuE5KGcYYuQ9YGSQ8/YELwJt5ydKpxYzjEMtgodylDJmR44MFOmZAOK
	 h4p8J0WDJfVONsR6gN8VNztOQq7KsLZzRnB/kD1/WEfghc50BUw3GVehVRfg0eNG17
	 TfCpVOXdFwixVBrlv8FRixKH/gytkKWxwxidik8zkyDAqUQjUO3qKlNM6RgKL+P9lt
	 RsyDceBI17ZyO5JuUCuMxeFbU52+AuDT1vRuniS1pDv/C/gSdakjQxIhNmq4XKUbAh
	 MQJkTwPUv8K0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93654D715D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176924183358.17967.15009989859000056650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e1bd3b4f86059ff9b62061c8ab6c141ffbd4637fca4fbafd36c6c16239293be
Date: Sat, 24 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769241833
