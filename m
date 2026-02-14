Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A2F17A2FB
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771035894; cv=none; b=DbcaexSqp3hNKOEhEq414OdD9pOqdKR109CCL2u1qYwl3KgLlXzFcklS5fH84qtx41fEv20zZhJXDoxD8BBvd4qnglaeCvDYCigxxNtMReobC+C5PO8xqyvRl8uDyBWCm+Ufs6yMe7u6hJ0zh8w15vnqiBZFEBxBpCKCn841hKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771035894; c=relaxed/simple;
	bh=1jucebg8w5qlvpORoMfaaYuRNN4zAERDE+/lIQKOVg0=;
	h=To:Subject:From:Message-Id:Date; b=ObELAL3VwgwF29kvUfmTLJ8nmLxsQ7GK53RITpn3fiYOcC0d4a2nhYtrd9wYOEL+iEcUenaL/S9gcbOdUy0c+hTa874JrkPFirgXn/3AbtGKTiZ6DgflD6+nBuVZ61PihScvK/3Ach7e7VQdmDnR7XcMBmMSzhR0qIx0+NmaeOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMmkthO/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMmkthO/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB494C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771035893;
	bh=1jucebg8w5qlvpORoMfaaYuRNN4zAERDE+/lIQKOVg0=;
	h=To:Subject:From:Date:From;
	b=hMmkthO/EbpH4u9jld3o51kfkQFQ6s5nq0Lw3vB4SDov/OQq3QY9715uZHoqw1TwH
	 wlshgfOGB+yQB0GtUPbZMDc2x8ChYb2XyfJMYsYpgH2DSzuJB/llD6FfZcCzN1YLTV
	 bgudQbuO0UGCeHKqVmzOWgf/+ayNYNxWB/maBp9ira/7gobHd5eJc2zOLceoj9ueWx
	 XBY3KA2RnZhLzETZ42Rff3hvz9d8z2z4gufg6BFaXFDhId8bjcKP8eusOoM3tOiRev
	 n5E3PjFgSr/8j+Y4okITlDwF3jvaUbIeD2Plgkhxulx/iyZy8vZyoey7hYCYWv9nQ/
	 AnsXNZEPT0IvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEA3EF99CA
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177103589359.11790.13390625291596900946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f00959c91e37005b91c28217e6e045917624da5311e254dd20fd98711185619
Date: Sat, 14 Feb 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771035893
