Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F155139D
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743567595; cv=none; b=MWHnGlrfSkswm3QW1WSY0UVvC7WAjn8pvA9b+8/EEKowBZR2rnPQy1pHE96YZBJzjdCVKUOjAeHIXZ6FONkZqyr2iyVQjDADxkKYBQ33Pa5k3f7YY34U21goHFW1rZX4siv9m7+spRi5FF4+iJ2J+uVCkTqYgu7XXtH7k1+Pz7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743567595; c=relaxed/simple;
	bh=IdOAhXTx5BOpPVx69A23pDN03B+4FHdZOWYWmAeDykQ=;
	h=To:Subject:From:Message-Id:Date; b=eJ0Vu2Y6f/ODYhbYrc6GM1B79GhfGuqqobd35AWhJyXI4eWX5vBCJLxxmSyAGsfcq9c11qx006x1hXOTynP4FpP4KANpsG9TftvXG0R5999K1BGhvL8KDjthIHh07ApHVrzxKFB8m03g6iWBsOYOHGE0+L5DL7NSb5r+cz7h6tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHIDEMTu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHIDEMTu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07F4C4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743567593;
	bh=IdOAhXTx5BOpPVx69A23pDN03B+4FHdZOWYWmAeDykQ=;
	h=To:Subject:From:Date:From;
	b=hHIDEMTuAL6qYYl4EQ+FuGNUoEIA6f00c5Cii8PS9zbXzHi/qijaX9QFIIWjb8MGB
	 YBx1Uz237QhMlpUgHsahuGTyNIEHFoUxZfjMzBWFxDATy8fnd/McRtLCrCR3zCtA2U
	 g7mCv7Sl1s5e9C3OZqbO3O1dxBIRtFDIHzCFelvgLebaJq667/0e7E2oZZlPNLJtQa
	 gQl/S+68MLqN0rA5UzVXKey5S8i9hh7rKx20zANUytSPHcdd0dh20GVrnxx/mmwjxZ
	 +TY1kqSSyWT0CmS13mQcbT/XyGEciA9RT7rLcc8zhw3oka+rcO9Dg5UWfvTG+VTczt
	 olP1UhbfKVGZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A701EC28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174356759367.10762.15014123795282124148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e483792f8a2a52e645e7858c0b20b443c197b5237f43bc85799ecc376ab71632
Date: Wed, 02 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743567593
