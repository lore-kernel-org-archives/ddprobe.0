Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82BB814A81
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 12:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720958423; cv=none; b=qgw7CiGjTpC2QRaXMethT7pjVAyEgvVaSXZ+cY1HZ6tRwRf6cqL6/ClowCMAGjY2HUxiQmhgZ+cWCX41nAmxgr1WcJV9rM5DGqjp03A1p9lXN3OQDgp3lEWMSMMHmNFM7zfzXARIC4CrfuH5JVIwn5RGJwB8gMXNHtU6p2jQe6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720958423; c=relaxed/simple;
	bh=cM4jg1oPxVm+gglQXopFbIaAZHU7pbl3d+tPNHZVk6I=;
	h=To:Subject:From:Message-Id:Date; b=okkLztyRYTkZ1JJ0mBR5KRYEjcUF+hwiZlMYrikXZmYvnyDK9KxmyWr2cxZGqOEz7IB7/jPDtnDswKXt0Xq2rtr3gwKd0vFYqq8dGXwMD/f3rMa7PYkXnxsNXutdslqXfwzeyOzHuR0Ue0wEkPjyeSbP263zuWZDIAe96Mjc59Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCxqusLS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCxqusLS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8A85C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 12:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720958422;
	bh=cM4jg1oPxVm+gglQXopFbIaAZHU7pbl3d+tPNHZVk6I=;
	h=To:Subject:From:Date:From;
	b=BCxqusLSXd2/rawH4q706Rn3lXS/aMmzOjCy9gdAxLoUWBhqYwRMjGsLfVWfj+6Dj
	 749KSOYnP9v6OQtuUnnrQvUET3rnqDSmpQbWh5L3ZCQGBdnRmoUjrqqRnvzrkkaHUY
	 UbJR1dZlgCUiE/+JsgrsYk6Ugw5Mvg9LqpnKgmK3A/S73x2qjH1LZ6vdVKH4USDGYt
	 dKQ6iK+knpMVpn2tWmVonmNFIkm0ZvLSR6+1k6H1fNYfGC+p8g2P2xv55BbmmFGq7q
	 bzRamRHbtLdihGnxLCRcvN4+DKYp5I2ByoPRlb2kxvosAxVsyPKoUJgNVDyPELOX9U
	 q5wzQTpLYnK9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C35BEC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 12:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172095842277.2975.9024887642841594619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e8cd969d31288900520134c247ff25e5b04af9e5130c6ec577ab96bf619f177
Date: Sun, 14 Jul 2024 12:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720958422
