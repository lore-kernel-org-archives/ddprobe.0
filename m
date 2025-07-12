Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DF51E1DF2
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752313195; cv=none; b=Soe9zbH8CPkeCH3GRkumEPJ8vxnq3D2Cqjttu41G7+2D9RttCC6zOPzPV+tYC+2Qc7fUv8J38Femmjrr5NfQPW07Pffv8Ny0CdixwNz6YAooizMd3WsiXTjAJ077KWF0LGwJZ7vwqh1b+wc6lWlibDLyu84zwTNZr+Ag7IzEtoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752313195; c=relaxed/simple;
	bh=xmX9G1d6WHv/rxiUt5nzpoUyOfejvG0Lb6dZRnjmGzU=;
	h=To:Subject:From:Message-Id:Date; b=AX8LoCNnXUuAH/fpucGqc7JqIYMSsLR2yUkhZaDYhtKZeqWtViNCd0TpeIOcWsqXzy3mkLRZwUV3cpBziStR/F1x+xWIgRMJmP5yNNB2GVDyZYqeOxu9EV5B28t367lgq85q9mBP3soS9fw+j+Q+M/4DU7D3BgYIY7ZLpyEcFSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kur9fx7h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kur9fx7h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26C5C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752313193;
	bh=xmX9G1d6WHv/rxiUt5nzpoUyOfejvG0Lb6dZRnjmGzU=;
	h=To:Subject:From:Date:From;
	b=kur9fx7hU6gjnCFDyLRdFT8Wbkn3g27mSDCqS64mTU0xdCeACUSRSRgyanoUaBNkT
	 jY1uuqUiJYJCSvUOwPVKDZYsNmt6YXUG4326r7+JpEaVOvyatmgGkXWu2DWWtrCJSt
	 Vq3O8L1KkRifAgjMbhoFPBDsJ4yoCUikz87YHKjAyCgXT47etQjjXnaaKvl4AGx5jV
	 xGnlpn8Oxayd2Phg2Mfx8Hc/L5poT+k+svRAofEkUD/MQFXD4YHuB2/fDPOYZa3qb2
	 CxYUqYAGviBm9/Qy8n1x0fw1sHZTJHt29RLMvlNABxgoXN1DLPcYX8+7Pjyh17KaCp
	 +tnfP8X6y/D8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93173C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175231319357.23405.9675937035651929346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba335269689af6aac3fe27a10ddc4899a65369bcb96d592f8e7be87e9bc39f53
Date: Sat, 12 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752313193
