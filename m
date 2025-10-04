Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226FC17A2EA
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759546194; cv=none; b=ijrhaFr9f5A2HT6t6nb9U5/wQLPpJlrxgKXrB1fVpX+WaWBIKxX/RCyZpma6/0Vk4soJiW3qmXYwpwNBzC+64yrEkIBVLDQSQ4o4x1i8kcE0c/CHhiF96G6yt5+VaDW3N0xACImkoNBG3my648uzrG6eLURQswYMxeObZL1UuW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759546194; c=relaxed/simple;
	bh=Btx5rZntRH+wAA2a0CwJ+Ig2Lb1ZAf3zaFCgIffQoJQ=;
	h=To:Subject:From:Message-Id:Date; b=JQluV1s9rP6sDVlgLX5z5j6lbzVMsQLF3lNw/I40fQHsRcC+0o6uZqcEeBCLES7hBq7SRb0ufgWqGh2MEJVnCLj51nWlOlyrvlNKi6C243/uLYTVS3DTg3GKg5xQokqIYfdIJLn8D1v560vj8vkk/JKiLQh5MbzenbadrPKzKhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fyr4WycZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fyr4WycZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1D1C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759546193;
	bh=Btx5rZntRH+wAA2a0CwJ+Ig2Lb1ZAf3zaFCgIffQoJQ=;
	h=To:Subject:From:Date:From;
	b=fyr4WycZgDOpa5IvxnP5E8cp2jqA3tdWdRrud6mZwHYbuRZqJ1tUNgAaK8U8jU89m
	 ia7R02VSmNu0hjGSo5dKcQ1QUVJ9Ondy5uW9SwfLw5HnWGbmHK0wg0Qi6CyImyzjXL
	 LXS1zx4QbxkY/Ro/phrj7hpmM4NhFRgKX0+BAZTRqTAHKUJnjpRVasgTbkiAgyelwx
	 aJozWV2CsngfaWJ2muZApOznG5ESIhSHNUH2QeU3LNVloON4p78tfOtJRcuxIce5DZ
	 pfnexao8ayHwg6pdO8tRjOJF6cqQpFO9obaEEjrvuiSZHgOWXfMmr2du16KHLoJRsz
	 sBfYVFTLEA8Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BF0CCA471
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175954619357.23872.5241624147561471015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a053c34e5fa339e09560b8f22157f5e7f7dc33a929a09dd73e279fe6f236be93
Date: Sat, 04 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759546193
