Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E1215278E
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 04:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764304374; cv=none; b=dk64iJfLbtQb9oi+QL1jMetPJacS7wI3kJsfNvJ8IbuX8qG9Vj9ECwvqhp7vnf1jXMoe1DO1Sf+GNfVbZ4rpXP6xe3FxFJnekYsSffbM4Z8XSkVcMXt/HdAhOxFYI/PiitWu0EFeACfF49/7j202N0CsAWvEncA6FCdNudNX2m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764304374; c=relaxed/simple;
	bh=7VsPbNjF1XuSejIGCacraBl7FVZlKMz+/yVdUrC0AWc=;
	h=To:Subject:From:Message-Id:Date; b=N0z0zf0+VlLDVtDxQcBx3f+IkrDAcs+sPUfFBvp6tv4+Gm5Bj8HEXjrTAktx67bSrV0h8mUgtQKAli93uIVuaJrRfV9hpoU+W95Gawllao7Jl/hGUnjGvdeIcoAahvfIJeaZgdE+zOG9MOO5TKSGq8cOSx/h5PNzf+DmYPnZP84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dEJbt2gJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dEJbt2gJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C28C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 04:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764304373;
	bh=7VsPbNjF1XuSejIGCacraBl7FVZlKMz+/yVdUrC0AWc=;
	h=To:Subject:From:Date:From;
	b=dEJbt2gJ+8T1oUwl4Ud3psf+8GCXtE8IIuJOH62lW9TT+GgYUS1TvB66BhTjy3R5g
	 nUsODUcEXpaa3K1BYZqC0R+DW6X7l013YJUfc4g12hO1xr2vek68YmiK8PSpojELWI
	 zMAqueYM7SUsffLp7lrBjibInHkuEIjFOAL8bCw5s/EilGhxulLBU2FTLcy2zcIL1t
	 SIuOv/fwO6KwYCQA1W7ssAJgv41MZhgSwCv3sgODqNKMER8bCER2i46PKihlRpu/nH
	 ApRkSOjBxLBHnlc/AlaArC6QkhXVTDdTtiqnvchfv0ebAiksTc7yWxIPrgNxi6eZo+
	 QYIrRyd3tgj4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926A0D116F1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 04:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176430437359.18619.12068771981792554825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b7b2feeae0bc725bc1fe4bd18f68f09c6cf4ed323e0a3e8548ae7644bfb3f73
Date: Fri, 28 Nov 2025 04:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764304373
