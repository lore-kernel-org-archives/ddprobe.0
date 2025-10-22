Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4FF1ADFFB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761093594; cv=none; b=XHbFl9GJLc7z+RA2DxN8dAkRj3R8Fbtf5kggmamo72Ixbapz2u7g1RvaghwXeQslTo8zrdR4px0C7d5TwDf7ExDvHagPuwymYqdGaykJxw53YYgGK8k+vJjPh67Pq4HshxJ7CFY66VH/C52+Dj+GhmMEfclCtlIQ0MB4fFk2LFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761093594; c=relaxed/simple;
	bh=sKhAZWy39uwyNZNLtzZe8LbnoBTCa08LlAzChtY2Gos=;
	h=To:Subject:From:Message-Id:Date; b=IP0aeS9Y2G1p6sUBiwxR4eMXPlN954HvIgEuQcBRUupCQKicnuCvoa5crRJergHLMbEvMYLm8SCyCI1JOjDMEfQdlCe/5f/hy764Y2VMw4vTpaStAd+HLDmgEL6E08nLQvf/6H1ulCS4o+ArlwVB/wl9kB/RqYOMLRVbd+1HKAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzSw6b8t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzSw6b8t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A470BC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761093593;
	bh=sKhAZWy39uwyNZNLtzZe8LbnoBTCa08LlAzChtY2Gos=;
	h=To:Subject:From:Date:From;
	b=lzSw6b8tV47xIxFoFbo7GB7cGbC7ZdNIc6fvdIFwAtAXNqR7xmf+Y6hXNFppIzIS1
	 ahxZZJvO4l7AtTzSdwC7PY4mDkbND+LnZkHFaO3agzofDMcYmpt7PdMZAYWgbvsHgl
	 kKpw+z88+HxYsv1dAyx5epzi98XH8MsdC1bVOsmiT7RjdONqKQ+8oxYQFIyvWCpylr
	 1tUHsZBctAcpekRrdxMmYir+Vcy7tamJ6Wla5w14TKkEMnhAJgOnh0+DZVUD++1FBs
	 iY95k2QVvmC5KWpYoSBWxzt9Bik9zskERS4Y5K8YUMy8BLbYmDpEmvy3OEUPmoUz1x
	 6wY24tCOAMmXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93452CCD1A5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176109359359.25269.199803062639801370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1df1804ff376c39151d3e452d1130e475c04705077631e990253a1a4def79c84
Date: Wed, 22 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761093593
