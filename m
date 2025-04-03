Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A67D529
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743686394; cv=none; b=bshrJ/H3PjU3vMahvAWxH2ellHBb9BbRDZJ804ufD85l6H7/JyCeRU2yA4m3E9ZQ7q8pjF6C/EgrAe4rUgGq0+M0VlGJLj2Jydo6maop1l/IAgAj1ifcdyHltquGdqVSzskcBWfIS/lPJNIGuTwIcdQzJrjNrZNT3c20Y0jfGY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743686394; c=relaxed/simple;
	bh=8lmMyQmYkJtZtWqObhSNH3e11dAWDzft9ediacaW/dw=;
	h=To:Subject:From:Message-Id:Date; b=PK07a3Gxat2jbb3J3mQabObk7KxailXkkeOtpJ9x5+MxoXUIR2JNktskH/BsySbZa7Gpgpb9Kac0pzqBibNUxEKaViCedDF0dyV6yb5irv6v8sVX7BX21YfXL+50hqaKnXd/MZamLXDC0INUT5691iqKJKM3EFR92XgAS3yP3v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/eMy13f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/eMy13f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7D4C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743686393;
	bh=8lmMyQmYkJtZtWqObhSNH3e11dAWDzft9ediacaW/dw=;
	h=To:Subject:From:Date:From;
	b=m/eMy13fxk3qWXRJjT5g07SIOIGkioKtjR+TSSq5XmBARKo3mpvG1Z0KVGpQ5mKcX
	 lh3ZrzoJahqleoWf7SCmJJc7GR9KHhAwTYq7ISaDaT4T8LuxtXgmVKTgOQ6T2YSp1A
	 fF6909WApH4+OD8w3GVRTgy+na6EshdaY41ctxIjq9VInPyHSA0EcpQmfucnBkemMr
	 M0WSmkqIJ1kgyPOTOly1ZLNmWpf1PuyIgPfzCAzv7aK1XjWnvQloKLoeUib3Vs7wNS
	 kpSpKmFzdnnaL9GqRJvOYiQ8bKBaTXn1ciuN6Btb3TY0oqvqohGU2kdZaYkNy21jnb
	 HjrkfzSScImZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FADBC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174368639358.4052.1606475928865960435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700527a432c5c31cc97902ac0601fd6420d1f8b3cca460ab95f788e934ab7e95
Date: Thu, 03 Apr 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743686393
