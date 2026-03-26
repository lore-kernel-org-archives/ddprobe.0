Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 020943A3826
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774552494; cv=none; b=bI/KMHWNOWlsJJX3mP92ZbZTlwp01i0o44bZPjyqs0jY6ikubNYcFUMrxJFlFv7CTVraxThMVFI7i/EKnr2X02aJK4jnHJBR5Jbo1dLFvbLBZlrZflcELh1oLgbx3fS22cpXWHpBGNiwdLM9raBH1eeXoMri1HqzXCapczBbi0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774552494; c=relaxed/simple;
	bh=L5j1cHSaPn8e+ocDFoDNrNwAYsHcn+ykVv3xGpX7qhE=;
	h=To:Subject:From:Message-Id:Date; b=O2Hbyve6CjgWQtBsM6vAlETcta8WW3rOLbHe+jgFKCo+InjUyUobIN+v5KNpfFogaNhJjhV2GXMv8JNA1DUqh6IQL/vJaw5PyRdZy4lGUzHc9narmXjcGoP5GSxSmS33Yb46AnxS9xKrcItDYQ+KHsiawZDpWbbIj/16/DYjSDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCJL/2rl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCJL/2rl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25EBC2BCB1
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774552493;
	bh=L5j1cHSaPn8e+ocDFoDNrNwAYsHcn+ykVv3xGpX7qhE=;
	h=To:Subject:From:Date:From;
	b=DCJL/2rll/Ki5ohxviUmhyzwLQPL0V5Ahak/0bvmhjspjjBR7nEroTfO9W6qrTrI+
	 rNWwZqqfv2hwNqLOZz43ze/v1K/m5PoWM3u9dwt0i49O24oqA6AFFaK6+PaPRoLLpA
	 FfA/8FUFyM+qZPP9MIr8uEIzSQfrS2E4tWdkP0ygB7+z5GPlc1echRIEfxKQ2Lqo81
	 5VXr9Bwb88GnjBKW4OnPpi01TE1xN68VIrD0oEms4BiQLrz5D9yk1GOsQ+ZkRDim/i
	 hpDuUJBfN2zxxa7nQiPDn4RYx/LreEeqWgSIH9FUSasNURXQrOP0FBlhcm9uqYp2wB
	 6OHTfDwoAZ+qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9342410AB80C
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177455249359.31993.17009715635081100403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6caa7dcd0f45a7cccb01a6898dd51e0f880bb81384a076ff9c0a109f6f094706
Date: Thu, 26 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774552493
