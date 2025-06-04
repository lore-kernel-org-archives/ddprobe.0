Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A6342AA9
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749044394; cv=none; b=jcqEgwjrZzOWI7yRkBjlncHl0yh6R/p6cVTGsR2CYbBHwMqr7WOT0pNB9kAH98aDYYL36bAMl5SaAYhtnJBiFXWxmyRMy0yVNrqHvGTPUUyvil+16cpBbJIcJsHQ55C19yF36Q1ir0x/exJ8ToIvFDIOS4iSdZSJqjhuQ4cAOkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749044394; c=relaxed/simple;
	bh=ZSr7vISS3zDj3WD78EkyWpRg1pwC9WZKH37yKeTs6wA=;
	h=To:Subject:From:Message-Id:Date; b=fdtXMN0WEfL+M+vDefwDHfxg58V9Ox6Vpf5Tg79MsFQO/vhQo/B6f2aocF4BpnAYlWsAn6gZ7jhw2lZZrwTxIaYdXHNhGha4PWIOsKzjx35d3ytaIU+o/t0F/n4ZUHIKOOVFKz8Wl86g8ftlSLBvYWRN41zFzD7oT6afY6D/1Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLJDZEMS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLJDZEMS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50F8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749044393;
	bh=ZSr7vISS3zDj3WD78EkyWpRg1pwC9WZKH37yKeTs6wA=;
	h=To:Subject:From:Date:From;
	b=HLJDZEMS+5dS6oKVHh0RBIlUXM/RTU0AJoREplDkaOonlDGYp6o6nOI+Q3lGTBBnZ
	 iihFI7tz0Mda9a1I5Wz1LxgwlDPoZCvo2URLNIwW+d8HD8b3MN27NF+nrc6FKIQDSV
	 U3o/vk0JjcZoVMsaO6oNXKc/blHNxCtogBRv1rfwPyZjWHgELNlQW1cZ8qVhtrkBJo
	 luFTnbAkK3Zeaay8jTanXEV+fqarObTFI8pQDXC+PiZGHD3u1/cbiM/m/CfJi4sgq2
	 7kPTQ+JW1Efcduvq2ra0J5GACvu/cEmPsGHyyLnqlLCj5uGAmect04kqjal4hhB149
	 wM55zj3db5KSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9418EC5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174904439359.7873.321989269706338783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ecf8977377f3f193eaf962dbc3a25b9eb5754ff0ddbbe46b14a3a382adc0878
Date: Wed, 04 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749044393
