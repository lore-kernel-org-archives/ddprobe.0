Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C85245033
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754050794; cv=none; b=tSf56y9uv9P6W9jEfh5iFe46fGbW2ywJhbKH2UA31GTw+Lt/phQ/LlBk51R9B7TFUvXEyU6HCSovOfIeVqgzDnNGW+2+Kmk7DqFMDm3JsjF1CvLZmbzupWXEvU3AOS/Gpn8DA47nHQSaQZdd9U3I0VlICGPrGOaFX99edWnpEwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754050794; c=relaxed/simple;
	bh=WR6qu9EMgQwxUtL1zy286DI6EaOwHAdGjvj4EBL+SzA=;
	h=To:Subject:From:Message-Id:Date; b=QwFxXtDZEVCSK7o3GwNzIqFRo0d5OfpKohsf4ozPUCntk5VJl36OVDO/3Td+JWOV5LhGOBUP6rzzzcXoEa3/Ep8k6lB1ZvQVRaxIwU+6YW54M6S5Vs1Fz7LNf4unMNGReA43piaX351tAJYo8K/6MirMkR35wN2OEEoMWLCmDPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WRhLBtzK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WRhLBtzK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0224C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754050793;
	bh=WR6qu9EMgQwxUtL1zy286DI6EaOwHAdGjvj4EBL+SzA=;
	h=To:Subject:From:Date:From;
	b=WRhLBtzKjisW/VDJ9P4KVCAZ954LuHApVz27LjtPCOkUA/XCKGSahiG8kA+1pPpff
	 QNmF+1h7C0SZm2F09JiJRuV2coNO/Nppe4oUlmMHGClQZaZ1L0lEwcMpOm0CXqCG8e
	 IerK4W7bmXtRMgF09Noeei+Ph6HlhGNSeHXPnieVW/A93Tzw1HsyIdQV5+anLjnw/c
	 m3Cxx2vhfGw6yhuBd8To/Sxm/nraTOTXl1VJ7u1D8H9wPNBDKG3pUZHZHJnxl31z3Z
	 0gMF6Z4CPSfYije9YYnBGFXNQnsAPHKvsqWoQPgPE0/JS2qWECFgiezshJDEPqIFv0
	 zsckKP7KSr86A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F44EC87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175405079357.8936.307804578697936137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a0d58aead04438916e1a6fe1d7e5fad5703b0abb6e4d56be493c8fd12136d82
Date: Fri, 01 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754050793
