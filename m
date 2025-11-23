Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2803A1397
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 00:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763856114; cv=none; b=nmOLBNg5u4jQHGaM9mVTAJy0s9vF1LdqQjY1srrzzwVrQrZHFZyzAy2NxzPmzpJ6+GK0VFpdaFTpID/hub7X0P6DVHouyhWJzTsdxtDCRKZyjtr2w2Ux+k/PHAAvaT6UjlIzJ2GGNnX3F8txcyrj+jALiIEN/if9Im5Cfmhdom4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763856114; c=relaxed/simple;
	bh=5iymXviFL3ghNxsD+FAlChnY6to6tNB2FzEuIcV864s=;
	h=To:Subject:From:Message-Id:Date; b=lhI0bxhyg987hExmnmSQnp9EXgRYJIJy/GstbEJGQydF5klxMZ7AGTR2+O5njKefTSMNduTanLWPnSqLxER3zGz57bfQEu/5HcRHzOYsmPRGadD17sxj/lYXNK10J8qtSO3LPkYYr1OaRlCKzVOsiEI7TL2TVicL8WZMPtt5o88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGxXuYnT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGxXuYnT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4E2C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 00:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763856113;
	bh=5iymXviFL3ghNxsD+FAlChnY6to6tNB2FzEuIcV864s=;
	h=To:Subject:From:Date:From;
	b=YGxXuYnTKRRYervwoif/kR+CLuqnRh2mGy75IJtpIa3KdDMXvUrJggXK/NLzts2jH
	 zOVIBAHT2WbAK/1wP403hF7HMhpQD1qQX6nBgdlEZQaSLgIy5A02EQ19rpAVb6l+gO
	 G2PLEbIUVHZEPQhQMC9bQzzWsr9aJqAlbzcpKcUkot1kZLsBo4YDKSNyGACtY8HvJW
	 M2i5UNB3vXOKdHWwTM8nwjMFZfSzqXCfz9U5eNHxnW4jDr3URi34jbMt99waxfbQOd
	 fAYdtJ5gkS4eOp7VRjka/TSUnp4CFNZnIcDAQ3Dwui05VYedPAxAOztM7OjjEKHjkI
	 NBiXzWMJnc8Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D2DCFD2F9
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 00:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176385611358.10461.12032114222348043463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7770b0c11043390090b8ca2fdebdda8dd192d851c0113c6ac0c4d4cf96bbc8a5
Date: Sun, 23 Nov 2025 00:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763856113
