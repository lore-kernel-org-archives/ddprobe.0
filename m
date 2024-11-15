Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DA81B3937
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731670554; cv=none; b=AN5KLyETFJh33sSg0YZnTfbQEi+9cRy7WUhCL9T0s+oFs1z/6+z8gJSz/l11uN+RYPqgf6b5Qmc2iSQcFdTL8y/29H7mcZubNZ2r36nYbA2IjEPeGnLGYAXkAPCYL4JzgmW4rhcvpDHgQkIhAf7qF/NyAgTng1rw6vIyI6aVccY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731670554; c=relaxed/simple;
	bh=UtoUDPKXHVACFbwDWN/wHhtT7fodWe3bMiW3K8AN1K8=;
	h=To:Subject:From:Message-Id:Date; b=AKcXGgJbhqORkbjk15+iZRTSdVAj/dtrrA9u/9YNyVD2k0FuEcU9iBllsGOYuMhbWLf0FbHW6XmeBJd7XViyLB11pTnNPCTTlU89AM45u+1e7ZoAekVJn6U2NArOOLq5VfNExs49Ia6usTB/f4fm58W5iw7WdyXxZ+5J6/vgqqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fvzko3Mz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fvzko3Mz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C8AC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731670553;
	bh=UtoUDPKXHVACFbwDWN/wHhtT7fodWe3bMiW3K8AN1K8=;
	h=To:Subject:From:Date:From;
	b=Fvzko3MzkOlPZGNWaDuFwLhsi9Bz1m+Sc5RCDhLcHTTaV3xNiKNu6By5Y8Znnvd8K
	 pefVWP9/Edo3gQYtKp/wolOpFctWYR+NhGC0fLyeL1FPWKWZbAktDmY6kiUiIuKEWN
	 f+/lMjsZOcmwbSUBSKeXumr6V7sJnRxcm8UqW2RVyWQaCfhnI8eLnyKl1WFF820bBY
	 7R0TuybUV5YlTQkZUbEBnzEZHNuDfc5LNwYs/uB/6+G5WVvekR/ZBpFWr151CX1bjq
	 H6rrtrioHCLEWn0jexM5pk2a2Z9byqDDX3DJYjTuceei1r6e92m5joAi7g+hV/eJ75
	 8ycXArm/L5BKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B409D6DDF1
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173167055362.861.6441372555270921410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e071841b50cd8dce480730900b95739c4a53c9c96320399d9aae6f5a2533726
Date: Fri, 15 Nov 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731670553
