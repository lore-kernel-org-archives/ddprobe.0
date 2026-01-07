Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2420C13C9C4
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767762234; cv=none; b=Y7GUsCclYRFHJakT8T/p4Wrt1qX/ReLRppKZE4uAD3tR46ZQ6XwNI3x+w4RQt7F/M7AGd8OMYbjqYULUPpKd6VUDHtoeB3WhsxV52IyQPxAZNFwoMPIMMOGTlPnOrReTex6DMZSWPAGUnnFF6uYusbBwuDUrO2y35rjFsIQ0Z0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767762234; c=relaxed/simple;
	bh=RA+3oacpGqaxG+Dz1bXPIZ2rPh//hUj/WnkkidasLcc=;
	h=To:Subject:From:Message-Id:Date; b=YoOtiHATC9yEzJw/9uRFUOth4KEBC6/cUSH54HYxpsos+N2i5srdiuLpc4wKByGSRxszHp0i9BrmmSdZDMm4u0dE/z6rNspQ1ruFxQHRhcC8ynMFUuI7nFoBqAqTdLR+Evg+7SNI5YhXx9hXxprrUUo8UCScL4wg3Y3NMtFP+H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrRtZQEK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrRtZQEK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66D1C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767762233;
	bh=RA+3oacpGqaxG+Dz1bXPIZ2rPh//hUj/WnkkidasLcc=;
	h=To:Subject:From:Date:From;
	b=IrRtZQEKIM2Prt/DHq3jIkecGmBx0ikCQ+0Mpinkjl3I+4h32W+gT6ZZYt3Jui/DK
	 02IosrPPWe6aYnjSzcw1Fn1y6C0QKwXIU82CvzkjRwBGci4dpzgrXvEwBQQrIJY5Oa
	 e/fZDrKNEbNBUftQpd82GEg6oFwOOgpYV41aiC1tARcdD0Iulg+POLs5PuJwl7VoPN
	 zHGsEb9pP3Xow2A8G8T66CvP+uCrk1pQ5Iv0AEy2vhOnDkbPHzCsd2U8Po18NK4L7e
	 3pz32zKslqiYlDC8EKtD/0caY0w4AmWxIlZoOscseC8ielliIRLM4zcZECTXllmwrs
	 QYSx5xAaCwLRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D1BCF6BEA
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176776223357.18801.10082136002825056824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bee006906a508b35edb062402b292501b04fd9d9c6623732f807252791919659
Date: Wed, 07 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767762233
