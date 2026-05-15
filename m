Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291F026A1A4
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 01:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778809234; cv=none; b=WMUQSBlHsp34UUxX2519py8XN6y/paL2KBxGnC/yg1u3/sXX6ng3TWMVm9LHsfgbwHB0y77SL4cdz89oahO9GZ7m5HX9+HV6W0IE9L0UeSv3W189q1d0Mz8W7mn1kbsj2miyZDZWSOojzpDXMfvlOYoHKxm+NQG0S+b28Zi6D7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778809234; c=relaxed/simple;
	bh=IqYxU7QxnpBlqyxyK9ABGhruurt1vW6FB+pcAtF3I74=;
	h=To:Subject:From:Message-Id:Date; b=Kl42SJ0zA+GDk1UCdbMtFCVSlZGEogk6nKQtr6GR3u/i+QifQRKmN6sxKtgAc35TU6vQrRbKoFyGsM0dHBid2MKoIz9VCVc262ukahy6cpWdHBGMxm29aWkfhvEIbEVqO+Fy/WWPnAE4MrX2/diDQQ68qNJNQEAqZAJU9rxpqtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hyQ/hOuN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hyQ/hOuN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C31F0C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778809233;
	bh=IqYxU7QxnpBlqyxyK9ABGhruurt1vW6FB+pcAtF3I74=;
	h=To:Subject:From:Date:From;
	b=hyQ/hOuN9UdMuyShXJKSDpkSp3hzUqJKida7cH48LA43o2wfmGaQnmOi9Eyc7PaSF
	 L5aB5AmzV231pe9T7H40QTOHtOH8E/A9LV9XOk+7yfiDwX5fjrG1UzsX1m1AS+eFaY
	 JzWiosa7CcUjB2oszwu6Dz8O2A2QLzDZZxq3uBvQKaFRFjxtPE5KhfTgYdAF5X0Dh9
	 wI6jNV+cLCUm87WyQw1n5273XkQiz3f45/+H0JeU6b13ct37mVA/dID/aaMDVGQlz3
	 tGHtycSI2Nsh7r6grQhqzrIa6SBP1JJCGn2O1JUX5XypgDUNMcrwXnqcGkirl0cB2P
	 AhNNAT824HEfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17DDCD4F3C
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177880923369.13356.9320554767716785142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbe49e0dfb97e47f45d8b294dc69d5dc92fc9d3a397e7b4bb97494f206970775
Date: Fri, 15 May 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778809233
