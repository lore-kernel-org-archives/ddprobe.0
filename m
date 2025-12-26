Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228591DB356
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766736834; cv=none; b=fum72Of7dCKC7woeJQGL4L7HqqJSt7DzsMOslV05YRpItExNiG4tmV0X1QNYY/EH8gfOsGqEqHiE/evrtzd7bM2lfqLwnBsBGVs4m4pZkoTZoZTTNSltMTM2utFHMrJhSsCreTSf1uzQ69GbfZlPyti5nt4Ym5hMWOgKrq5kTOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766736834; c=relaxed/simple;
	bh=TP9uwCvE73f/du5QZx4cZBDLnK4ZCadiqKC8hqVwjUk=;
	h=To:Subject:From:Message-Id:Date; b=TOC+8UNk3n4ckIIx5AYuKOJewg5YV4g0A0n/R9RcEZEYke8U944HPGwImpi2AAcc/jzQ0M0aYh4pEK5YYoY9loWQMfgOmKRm92Rq62MTzom+z42cYfKjiSgmC0LFwG5zt+dNe6nsw0YlMvZj4UdBBOZQkDm7xTqEMQJPNVeUUr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MgQs0GuD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MgQs0GuD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8239C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766736833;
	bh=TP9uwCvE73f/du5QZx4cZBDLnK4ZCadiqKC8hqVwjUk=;
	h=To:Subject:From:Date:From;
	b=MgQs0GuD3E+W+tVF2T32e57j195RTt2UNBEdJF9j7dIcP9CViXYWZmvA2lnUqul4K
	 lT6XqL+F3f8BmeiUtlwbErbPAW1dsulBEexgW6UMyeNk9Ocf65GyRi7sZGM3Dew8P9
	 skLHB1FAriwJHC89F0qcrUxQwfi4XDgvha16EVtK8SLQyXPIWCjVbhLjDcvDxZ6Xui
	 PuQJsaQLpV+cuEsxShSKvcLiWDdhao8HPlfUgWbsAhJdOehGEaIBxHre9Rh6kIgcJx
	 vNC0ZbRXIxEXi09jFxOFVEYBizKDI1AeK8sN3dQ3u2uL3vLjzurENcpEzy6Bnvw4eY
	 JSYJq/keOvO9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BE5E8FDA1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176673683358.10459.16639628046225736500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ee27e5fdee6789a153ee9f148551cb82fdcbb7a22fa67bb2baa1f87e98806d
Date: Fri, 26 Dec 2025 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766736833
