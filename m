Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67873234973
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785559234; cv=none; b=AJpBWuJE+GaucAoVg8X5z+PAi/6dGavbC0baO5IxjAQeBrgI0xl2ks/zreOcjUXPhlH5UaOUaGWIDImNzy8JAbOaLPJw9ycgb6XyW3GOdedKEt+MhBeSNmp/V6rWEPfp7pQp7ROUiavgrcLPMQq5szQ4d2oQc2Ki7AFymLgFzjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785559234; c=relaxed/simple;
	bh=KMXy+fnnf7irhCM+CN3CCD9IoyimWoB3Uc2WGQZSDkI=;
	h=To:Subject:From:Message-Id:Date; b=blbVDt6mb2EK4wcrZGcvdOuvICP8KElC70+09S+jOyucXcHUrXUexq3mfbSUSBiw0Vttw1MDsIJCSkW4ENJsw15KN9Y+VQRbVV8gIFX0QGORMb2Xn4ZMQUpVzC6d4GTnAr2nNtv4Ywbu2KKIrUSEJHH7KJTPSN2VR4vMU2H/C9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=naN013lG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="naN013lG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5FE5C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785559233;
	bh=KMXy+fnnf7irhCM+CN3CCD9IoyimWoB3Uc2WGQZSDkI=;
	h=To:Subject:From:Date:From;
	b=naN013lGcmlgl6506tbYi8wJzDnevas7mmhcuFq6R6AbvJwzK8/vKPhcTmU76zWw0
	 BgEezdNCsgFCfkM9Zh6eNywGExr24tbnrQybrjKc0onnZni53UWtyr+rphqK/k0XfU
	 GvNxdSKYl2UMZ6xnSacgvms/qorfzb/B6HMOVojLK/1SEkiFx/xuKaA4QK1jHig54e
	 WxhDV9CuI+J7tHSpMpyYtosq8tYkZ+6YP4RLpdB3FINSzbpKp4WQZ7CHTjF92+HluU
	 KMTWcqz8xQT7VlkpIAQ9w5BvgzZ937U10XJe5hzwEqMr45H/Qu+dn3QmJc8GhKn+EB
	 obb3mI6bTEpRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D5FC54FCD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178555923371.5787.4050146330694928706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 351ea3c13ee58aeb7e70ac8ca2b9f84aaf8441db1ebb014d97bb66a24462dadf
Date: Sat, 01 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785559233
