Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C7D46426
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 15:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741533534; cv=none; b=cQeeYiBw/Vcc69LuuhP0ORYRKKDaSWCqtcgoq1pP7PgcmJCjKJdGxQ8f2koW7tFmQdLene/KMTR3QQc90/U//qT54Lg5gOZ8BsCXbH+dcjEbJubdmw3ylHNTHYtDEsAbI7h9Rjo0m40QxX6DgqSZ2n95KESEbWMUOJTagDwNjlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741533534; c=relaxed/simple;
	bh=rb6k0zbSAh+T7BCrGmUSDv9wGLS8crYNGBa9lbr+S54=;
	h=To:Subject:From:Message-Id:Date; b=GJi3q/n9ZNy2GBz5Q6FjwrhF/1UB4FwbgTIcEVd+Cox+j5B5/+Fj5rBcohSJ7KWH1FnSu9+kUG5aBJnN3NhAzIyRX/8/PPc8+GTfmDkwp4/mfhkyD5l3MHXkklmvJckVUW8SGKNsT/PyRVbYdpzoE/L4/JNxUzWdlCgtEP/ez/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0gX5JdV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0gX5JdV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BF8C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 15:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741533533;
	bh=rb6k0zbSAh+T7BCrGmUSDv9wGLS8crYNGBa9lbr+S54=;
	h=To:Subject:From:Date:From;
	b=F0gX5JdVcGIKhHGTUr+odToxSQDIbKpy56xZAEP/JorwatUDwH/Kp4WSUs6Tz6uvp
	 4lwJ1biGIvadMnvDg7ZrPdcdS3ids84GOgcV64uYZaVq5apNV6zyZqXlcrdXv2Uw81
	 6STHtoS4Jf++SwT800m5nEdScdr4Omiz6eslLx5yLifHg/QDglEd3R2fdh/oJnoNWK
	 zyVpTJzxqtiAoLZ0lC5U/pdPmMsMlF6+G36aSxm3uQJgjdb+zaDL0ZXGkc3+DZIx2V
	 t794laD+4VcSJNpejgPfbeoSAOf/uiqYF3cZqulvAH4APqMfJvw8MSTBsPq1CcHsGC
	 xZ7TSxhS+OiyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9771EC28B2F
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 15:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174153353359.4388.155308311868091453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4867487f246dd6761d1a169b68515fce525092889069a932b81e08bb343d71fe
Date: Sun, 09 Mar 2025 15:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741533533
