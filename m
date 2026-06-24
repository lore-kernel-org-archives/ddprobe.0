Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401E72F7F14
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 02:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782268594; cv=none; b=QIFu79i1nw1Vbnd8wjgQeHZnhTC0Wx5aB+8uQdc2+lgzvz0nv24qt0HRkdkY4emEPYKS1MY686pxBo5IW6Lhm0r/tJ4U1WkGlz9+0Y4lRfUBVCf5QExERZ7YitnS1gDEcsXycawxTiYVzE9ckZZtgNo00vqZOT5P+yGKxRFIHag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782268594; c=relaxed/simple;
	bh=Sm8tdfMag1R1sGHVnT8BbVBpDLP6SOCByiRZc90bGvY=;
	h=To:Subject:From:Message-Id:Date; b=gLoLhsVNWkyBPdmNHZX6HFvpen4RXVKd3P3FkG1CGD8A4SgC9ddW4aFN2RlbfUYKtbFKPJwJ3pyN2eLKwx/41+AODKAjVgOWRzhrCKZ8MQ7Z3yGA1XMjH7LwUR6wvWYSP+YibwJ2hA5ax1UnMmvwLqo4vyKozg8/9Hlq2KbFIOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uvRfoy4o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uvRfoy4o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF99FC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 02:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782268593;
	bh=Sm8tdfMag1R1sGHVnT8BbVBpDLP6SOCByiRZc90bGvY=;
	h=To:Subject:From:Date:From;
	b=uvRfoy4o6t3XIkInqoO9+aradhvaw0EJjgr7L05pAted2/Mfep3S/sXFxQk4e43gq
	 KXS64gcze3JNABIIu/YwqzRGIY+Qsh+opfe13XylSCHPTd+HNTnow7aMnDG8hUmiTA
	 4LM1lrscuR3dWTYho5J4ZXdm13orTwTvNvbkDAA5mqFUAdbYy5dVLm+qntfaWIherp
	 1eXjRxHuURDqgPAFwLuWC6s+LzZhp8I3k+BLL3l1qtrxoR9VShK2MUxNe0vRTDZ0PM
	 q4NSl5XOZs2aUxO86deURnrSE3Dsyjccm9mRcvXMQNTo9LoPP+tvrlO8oqtRvPpp0N
	 ebOGLJaf5kgdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B028ECD4F26
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 02:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178226859369.3707.693174959004934670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e9b5a6570f06885310e8b78065850dddd3d20ab2b39e6ed833519616c477489
Date: Wed, 24 Jun 2026 02:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782268593
