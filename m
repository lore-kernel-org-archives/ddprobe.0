Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364EC1E766E
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761986994; cv=none; b=cFCXgdJLEC3vOyRUWDSeH9vxRPgQyV/EyPQwAXxJgDcGLsIKhX2IKQ+Vpo4UxV5iMj43+/oxyh2Qotg1O3C86Xz61gJAj/mBkHmnOR2TOeF/inxRqGce+X+LF3XllkMx1vzYFKaC9BtXKZw4v5bk+ZsmcMr2zAWnZPo269yQzMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761986994; c=relaxed/simple;
	bh=bwt66DGPvP+9c/3DF8TOS3la5pLANZ/FeIeUNdxaVvc=;
	h=To:Subject:From:Message-Id:Date; b=fRrUbgLocQ7PmWHw4GcSuGm8wWAvYaFth2rdLhGq1+xC2a3zG3Mz6u82m9rund4NdLXmh7FP7QDgQh+RtOVcaOquCuc6xhKoRTO6LFf4UP37/BRMj+E5aB0Aj2sXeCX0iax+PCNM8qgw22kWS/flnH4WooaBJ2wgCs8Emmqk4E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMPYWTmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMPYWTmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB109C4CEF8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761986993;
	bh=bwt66DGPvP+9c/3DF8TOS3la5pLANZ/FeIeUNdxaVvc=;
	h=To:Subject:From:Date:From;
	b=OMPYWTmAMwvWFj1M5vNolX9y/DH4KeNBVibQLaLCtDhaCh83HN+Giqw4hrJdx9gm7
	 cwJ449d3e1cZGB368DUfwXVXv9JwQvz8CPhog3crqJQyknf/umw4CFv5ys9xEuv2qF
	 V+logETtghtxvg5q0mp9zHLZoN9NkHX2tngGS4wydmR9/l0kuTcWGErd9pgNaRJw45
	 dovZyMpjXOJgXKYfmKBI1ZFiur+8tjOlmPW0MKleThNNaGb/1LuTMpb+Fqpj62GA1r
	 rcNfSou9DmOSFabb2cZhY2aX8uSD6WDVsc3pob6M0dtmMYNUqWKdO9XR7F45lvUgxc
	 bH5pOAEIDQyhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979CCCCF9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176198699358.32380.17048796898341440335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edc1d2edca94b86c9cfda76505a432b6564dc9c17743325da0052bf8dd2e4527
Date: Sat, 01 Nov 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761986993
