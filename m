Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C6328C5A5
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753268394; cv=none; b=t0AseGP0arC9KC2csp4ct1dfqteSjKqDk6zCaAVH4toPE5ApR8ax2LujVCDMp6RyeWfLEA1mz2U7nf7mxwzRWN3siuhyseKI0BivZllba8ohRMFVSzHJ9VQcVBK+ojXx7FIw+ixJdflP/DtSTAVRsU51WCX8NTnU9t39ZJo4FlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753268394; c=relaxed/simple;
	bh=8MRLrTBhqlfPZtRKmFBJyxo/D9zPSULURmBP13qKjSg=;
	h=To:Subject:From:Message-Id:Date; b=lUzyt2hPFRNBbeFIqR+o2HuMpvWnosq+jXwpYquEC9r7oat1/v348QKqaM353p8n1aS+osIRtgmfiGErmf4B8E0nLrwvoED5HQ3W2UCzZYZLCogNGTtv74cG40hXGkWsKpFhH59OzzAgqNDdMY1eT3HF3HHosBU60SLYQnAguS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLroVh78; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLroVh78"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE94C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753268393;
	bh=8MRLrTBhqlfPZtRKmFBJyxo/D9zPSULURmBP13qKjSg=;
	h=To:Subject:From:Date:From;
	b=FLroVh7817jAelcgNUsibnVBvAi2zVUWYjNWbED5x3/lWM2BOV93Mhp3Xk2itb6OY
	 qXXIhY4q1Nih3mGgvTgbiJMg9kxEsBuayc2nnrWor4oG/7LXN+LNv425PPFqWjtaTA
	 zCxHU9vpvYxA9yBJix8/ycFWGrZG05VJ2cFPCJjov2O+IC+0mL4VoRQI+2Nq8jl2j5
	 eh54TiXwGmcxb65nqMhQ6qTGhPTcJPsTQHWwTB5FB7mcSQa7vTbm4QnulLXfMapLok
	 MeQS209lHNj3E52zX4QI0Q6sskrmeiawfCgfgeNpaVFQkMoFek9hfP9P19aikAblD+
	 sOXnUKwPlyZVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB81C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175326839357.24384.4776161868646810509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 689cb7d49bd9912f4c29168a80c62fcd2d53a9aa8656821bd8b162c9bf64fe0d
Date: Wed, 23 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753268393
