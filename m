Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC653939CD
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773662694; cv=none; b=dvTSx2YgGstIt07YkEssk/IfVwix1YtQC9HtPIcDVliv7munu8AX204DLAxa7Mb4qaI5ekSc1QX5u7muBMw7vsjXQ56GVDVofVPDa/hMQOukaZLXnKYsoI8tBhiGAyZB0022pGlL761PDnjwrK7H5cVrk4PA4HvKAPP+dnZ+TxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773662694; c=relaxed/simple;
	bh=5yYLZnXYOg13hBIFvE4VZLoTSgJtQsHg95xixYA16+c=;
	h=To:Subject:From:Message-Id:Date; b=J1lIlI/8V5IcXLhw6MD50uNGoPJdvAYzFlBKR5ANIyfIpHXAx5Sry1GptQMqEpJoH/Xbgds5WQmFz/FgBrOKiFL3UsZlMLPpHaCOsfSqeDY2pxuuPe+mXElwY0kgzUtlHNeDmE+S9aE+wOc8tJpLSduGIT1oEUOXP0uUy5OLPbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnmaXeDC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnmaXeDC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5548C2BC87
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773662693;
	bh=5yYLZnXYOg13hBIFvE4VZLoTSgJtQsHg95xixYA16+c=;
	h=To:Subject:From:Date:From;
	b=jnmaXeDCilq2PXDyt+r1MZo05tSzTDI4ntiH4S3PXd0pIr884FF9FeHaMOw1Qm9ZH
	 5lHzjM/7JVPDw+mNldsYziJj40nCkSuJwGsU3PyRBY85sFHRE4mmjJl/RL1ukHosYu
	 I65DG+5cpNkDXZ2TlRfkpEYI7cfGzFB9ZU/+altNzxxROU+tArgw10K/0wnV2TMJtp
	 wf/tgMtZFZJ9oODbfxvbHayLQzVtcLPI3BsOv7VFzLVffBtXZ1pjFJXUtFqxTet1xf
	 weqPoKXMGdtjDne4TBAOJ8+jsk3tCzZYgkLI3vbpuaRzu8ZRT71XnwryxgkdnOb/fB
	 I2DYQAtElPgaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92377F46456
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177366269358.28933.11299329418932384019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d21f46eb4380c4ca9b6b77fe7a32bd6b81bec5d9c0941e4ebda94d3b00f9bb6
Date: Mon, 16 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773662693
