Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2178130CDA4
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 06:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764139374; cv=none; b=rZskKJZPkMz2qUujSxX5LCbiMFzqAx/4F8OeW0z6VYet2gD3YilVu/0/aChOPwFySMV1CuAKR11nAuPKhq/7vHIfm8eBatXQ5csDozW9WbyoTi+t3nKDuGum2mRxLaN5R9TmvWRLbPh8HTbt5Gg+Hre+Cw4wVqnEIGUsyxTZ300=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764139374; c=relaxed/simple;
	bh=6mZnPQrdnyrHh2vdRJ8aJPYQhpYFy/ZF0pK5z4VOBdY=;
	h=To:Subject:From:Message-Id:Date; b=KrrTApK4cgBlQ94imSuj6+c6XI86XGwHBPjbGi6K+J47v60GLHz4P0DyWDvtuIPelSjvAQp38U3adAlkJkFKhFvqheCBLJH7tN+S75ZD22GGNQ/CRWXdE2QfHiM+cGnp1f0IdM+5H8d87Er2wEqJYx+aACh3OZPE5zvUFccz0Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dA/5ITOx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dA/5ITOx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5169C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 06:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764139373;
	bh=6mZnPQrdnyrHh2vdRJ8aJPYQhpYFy/ZF0pK5z4VOBdY=;
	h=To:Subject:From:Date:From;
	b=dA/5ITOxh8IqoIgJ2Ai0GLZGCY+e+kkpAmxAXNlIwdTF74mdcUv+fsYYDs/bAH0Us
	 fBiBKgzIry1g8baXqkkKGqFDI19+MCtlaSu4EjTi1MaCi2AVYjH8DHxV//Kd6b+Fkv
	 tggpeqt/4y/SpLRz1Oo+N7Hp3E20+SyHOLyoRtdxr7Tc5vsLB1g5cQYriyHh3LtD6H
	 v1GxsaW8G5Q3nCWOCkUrbrtrlqxSGLl/cDSEWknw0tzh6ZUFqO3XeB17Pefo7bQovk
	 07ZPUMeZR893/3TN6Ok+51DWvFpRajyj6nlMp+GEnOFcbsAU27u69pm8uOz4IZ7hIO
	 vtOiejGrwtDUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9334FD0EE29
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 06:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176413937359.8091.6948268308471971064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6057437142c26355ce888e50510684871574f400108923c8e2b3a5e18a54aac5
Date: Wed, 26 Nov 2025 06:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764139373
