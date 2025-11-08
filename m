Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBD223EAAB
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762628394; cv=none; b=Nph4U8JyUeE65uqhaYeKXRKIV5nn6ZR+oXYThsHM1vRJWOPJDwd56rAMmEP5voNvoBQCHeThSDhhKG1idiGWafnxs34hUMNirCfUTtvua/ziX45YSv/H3AsQFasvx6FW7KsWXOtu6EvbIDmIxvcrhc/GxaLfX6Fsk1kUNEHygEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762628394; c=relaxed/simple;
	bh=cY7KCHA+mTzSapAk+y4Fr6iLWR/Fyn8SV0e2gat7feI=;
	h=To:Subject:From:Message-Id:Date; b=WUXD41m+hQg2E6msjWvfOekMbe3fje5Jox6qS6YuO2OOcZFVmqYdNKR6ywZ30aV7572YRHQr8gCQ0wMqWOezFtYbEiZ/vzR1Jir9pmDTSIYf8TOITtA8Hu2eUme5omEjrVuaaC/pkFlxXrdJrhzi4Tj78zyKK3dVry5Nzl6Sewg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTpR3oCt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTpR3oCt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A417EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762628393;
	bh=cY7KCHA+mTzSapAk+y4Fr6iLWR/Fyn8SV0e2gat7feI=;
	h=To:Subject:From:Date:From;
	b=MTpR3oCtlIOh+WA/RFYKJQwHMrKUvOBhrUJJESP7LyWGJZsXJDE/KJRt4W4yTfwAi
	 YAh/xzYxoa6tKMxkjI5dE22jW8fsNQZdbqj0IINFHDQqsG1XaFwH3ojBuR05KsGVuk
	 CJo1g/hMxe+36ZnZACIO6o6T/VR3Od0MiykdB1NhbBzyrMgr6595AXmF1tIA6fnUnX
	 Op1v7BW3b5Te7tTGjc87hmrUKK8vFXARmamjF+oJSHd0BDZy70Fdzd5Zw0e8Tjg4gt
	 Jv997s5kFTqgWRulP3BLcmnPmbT+wkLp6sTBnC1RiI8uDMSNz69DLtjWzXXGCb0rXe
	 VXL0UvC4c3Tvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94830CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176262839358.19962.5656256297775806683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8037127f289269dc2bb95d698dc54f67f719cd37354a60a75a4bf9252a60b2e
Date: Sat, 08 Nov 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762628393
