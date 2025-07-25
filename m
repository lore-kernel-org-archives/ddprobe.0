Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C706A5475E
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753457993; cv=none; b=TcFZ8LMtS4dOih68X2CDb4yksP7mVk/m5rKxiyQ6pQ+zlTadTjvoFQVxV5dGzZjItV0K+I5oCdEyGFzizQFC0BRm8p14c1IqF0fZbcedMXbCmMKOkt4MOMbB00l9/j3M+EJ4qVnDEt/qIDTCWShUduu3u7mObNsJU2OyKvRyaec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753457993; c=relaxed/simple;
	bh=O5ZuqX9AQ+nB5lis7Qz76q88SCj5mG1PXwCVJgcd8O0=;
	h=To:Subject:From:Message-Id:Date; b=CrBK4DSnSK/m6QLFn0gCjVdpgoKO0ho+U+ZYpAf7PocP6xIAio6m2RPsbbVXOgNE3KvJUzwUj3U6xp3mRB/xexX4vOHeZggVZXVcu7QyiRQeq/j0mx3get9bHRm051H6X6RoJFRkziGtD5pX3cnmIpBUFLSqVOKZH3DvXchsNBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1DmhiFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1DmhiFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F104C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753457993;
	bh=O5ZuqX9AQ+nB5lis7Qz76q88SCj5mG1PXwCVJgcd8O0=;
	h=To:Subject:From:Date:From;
	b=c1DmhiFwXi2FlbXHh5jtJsrtti0CoJQMFFX58JPf2qKikJMLfxRDqGbW7cNCVtiXS
	 8f+8AtdeIsC/ILIM9JLPvae/7I9hEYS5zYpTev4Qfps6HtTp2Hob7sBC27EGfEPM4C
	 +bONZtHuHB2uL4oqYRtZD43acegY0X2AS9i452KAdV6YB8w6L9qN7Kazp50wHtTOIX
	 TKCFO8sAzXvYw1LtyCBLhvLQ5DzN4fxCdEFQpGzDF4YYgmyy8wdYqoJZk14NnubMso
	 oV/h22Qn+zfarFmPMLQQo4dsrz/4fbbt96zKNRACmF9cl5ZoB5yE2bdyLqNHojsNZi
	 zAv/JYBiTjazA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCF6C87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175345799358.12877.17857375948953099992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b91593b307ea82884299db0e694f791bfa45075e0999a7a10b24784b7da8597
Date: Fri, 25 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753457993
