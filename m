Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 680D8140370
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 23:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716940463; cv=none; b=SPU9k+eQgb+KBxkkpysjL7Pv4otsTNC3Z+8Ws0PAgpc7SED5dvgxOxdq9umMPuohwFJLR2DpDrAEuYFuJsOfdGfjEr2sEa6EaAkBLTcfgZnjkNH/U6OrZv9/A9HDIPooIP1kaKsNnVENDyttBU7Q0ejg73cbUxw9xBqjYXMsdXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716940463; c=relaxed/simple;
	bh=n1Jugyxwffhs/3tKHC/eSqDXSkKBgXEyoN8G0AZcJvA=;
	h=To:Subject:From:Message-Id:Date; b=kGL/YTod/U+gtxQK2wDWsSfB4n1zspPBIDZ8ODn6lzeS/3TEvgUEps4uBq0ero1h/8tXG+oTGfMt8XjiHdFKkltkSUC4FwJjX3wq1yIMu7KCCAoePQqAVfpSwg5z1+c0FcdNWzBoLJ9LYXqd9e8azXI+u11wOUiy8fEFGBuDTjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kArAE33b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kArAE33b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E309EC4AF08
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 23:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716940462;
	bh=n1Jugyxwffhs/3tKHC/eSqDXSkKBgXEyoN8G0AZcJvA=;
	h=To:Subject:From:Date:From;
	b=kArAE33bkjiZ5ujx3XM/1vcu2vjlK/Pex4OpJikO5p99AUE/n+oKVuDuKnCL5uN1M
	 i/q2p+9waG5clNNaY9WXwuGi3KiBuyRTlKcf/p7WoUagfdaqeWiZUvuTO2coVzKlJ9
	 f8sD5xqLNhr4b5u5t5NPI3MSjIpSFfp3zPZs/hI+OADGBEONcxRf8xPQCxdaAwALV1
	 Odq3HiT0ShCWCG53SXRSWEz9MVbvUUcoJC0h+zxKQ2i748gAmH8CtKPOAW/ZCzHdZR
	 KlZnwUKSD/xTIl/RP90hzCeC72uMbgzQLpUki4kFCO1TjbN3NAcR2Ax1zqMgQFDnZ4
	 Sxh3Ccuf5GbBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C854AC27C43
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 23:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171694046281.26574.2040070833546514267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09b7a556271505798c122241d244b938edca763b17cf46f36f3aba42954de0b0
Date: Tue, 28 May 2024 23:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716940462
