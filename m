Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C186435F8B3
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771803893; cv=none; b=TUg0k7Z9ahEwKdoB3y9Suat9lONKtniOV+dLA4/EFHp6/7eWBMNJLbY2IJUCskLFZJpiBr8nIu+36ya68nBSjZpTWUFIrH5bJuLjgRWD9g9fPQ50dxMTbWYrNefoEN1Zr/lK+6FzCqgKp2V4G9kfep+WBGA61OJccgPk/d6l1uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771803893; c=relaxed/simple;
	bh=wa/xJt6Sg35SwyV3KjjuHPN8YLvHcQBps88S64x0oPc=;
	h=To:Subject:From:Message-Id:Date; b=rqGrWwbv1QQ4nmrL+c7EBn0o3yqCy8JfMJ0T6Pex1eOj24p8fOUCBDzh5CWI2V4ve1ibDduKAU84pxeQvYsTrhaAuxlS/bQlox+KUDpZ5eHlCdE9LDSMMJM9Hie8tQ9sufSSnQ13ilCteyWbuh18qRMUvjYi6/BPLpFXz/Qfd2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0jEvI1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0jEvI1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6241C2BC86
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771803893;
	bh=wa/xJt6Sg35SwyV3KjjuHPN8YLvHcQBps88S64x0oPc=;
	h=To:Subject:From:Date:From;
	b=a0jEvI1+Dc3fAaWuOt3wmxn+ufyzd/baNH3c6kmxnarA1qX1P6tY8g/0Zmxd44wZf
	 wA40sQ2HRbuAesmmElliF+MWCT21G6l20ETEfeFwz0Y164g+Zx8l98VCzM6UHYSyd3
	 x/k+IkThEMjhbge/QEBZsv0hNELv3fhGLzoqlaLrBDtjAQ4wfwb+nkgA4SkrueFBXc
	 aBvOId83Ja49wX7Fo0w7DDrm8mS4FpqoTKjOsmOR9FyfvJKpycZ8OC0C+XX5D0aqAZ
	 eURzAwUIltTJuwJ8hs8pfH7bB2GJCqeL16DBJwM/Q9qiR6h69XIsZBeUjhQs9lBbIF
	 1hnB/D7cGvJnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98456C6369E
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177180389358.12733.2771205603169393552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99ee7a9a061d063d2bc90a38683537ad079f59df97a943414a099e623f48c041
Date: Sun, 22 Feb 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771803893
