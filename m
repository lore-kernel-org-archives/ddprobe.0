Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB87191F6E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 22:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720047323; cv=none; b=q3fJHEzrSEMKv4f76F3oX/37p/zkn/ad6PSiym4eTWWfSwAPrtVllGKCTRiChTrTosZE+3fX+ODCLwC3wVGyfwKPn/1vnROpzvrL55Bj8/xRqCL5aznaX/K1SzmxNuKcaOl+TQJHL3n7PtEt4ukHfMClzdyGWRQSf9Qokc4QhG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720047323; c=relaxed/simple;
	bh=aeFTJEyV7DLWdf4Iv10549SVsQbhryCO72uvqhAuUI4=;
	h=To:Subject:From:Message-Id:Date; b=ECqiVn1qRsBqjYJJNyTizQc9OUXVw2AKfVpEsEF8ZdV568fEUbmLyGfCrjPNsyMZIu+P8wQ/lgzBJjPMSmmxJQSFU1d/eswERByBFf/kGpSSCKD9LTheUYf+P6yz9xJa4r5EVlHMctMi1sDHVPYNWzLYdW0cE7AtSeEJ7tPz9HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKhT411X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKhT411X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E04C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 22:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720047322;
	bh=aeFTJEyV7DLWdf4Iv10549SVsQbhryCO72uvqhAuUI4=;
	h=To:Subject:From:Date:From;
	b=lKhT411XtWDZbM4PfrV+x0WCrUCUGyDjRzjM/lqzluxdrwaeHK7Rprjum7hnZi4ws
	 46J1fwtD8WPp07dXjSeEQ+WrU1eKWLxY/pcFULNs6UG/HulNch/WZlVip5fK+ZFV/O
	 4RwdaHbnCw1CubE7yJdF1X+xqPHkS9q2/Y08eq1fvTry4Cvd1T093JRXZtM4pv8e69
	 nTImal8vo3dsOzZYy8FzN7OeZ31fveCb4u+gSuLO/E0IUHIegGKN6glJfM4mflLGwV
	 xJFc+9drVmEJhFL4uzjpCw8J6iMyu9aVFBLwaJ7zIdqEqT3DSqHY449vTPB3UAskhL
	 PDefHdmTWlIAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCEBBC2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 22:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172004732276.3507.15349036559530062145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d627e6e720321aadc5829d5868a7cff11d63d290739af60950866d824dfcc3d1
Date: Wed, 03 Jul 2024 22:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720047322
