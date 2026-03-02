Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C88423175
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772469894; cv=none; b=LKupacvZI65JTBzYhu17FZmWTCzqCO1uD2cYhYChu2KPqJFvEA4+mz5+bfCyiUc5KqScyNoYl11E+NNTjN3auszlYuJksikYh3VtklGAgOMzJuSmAMV7KJCmEYeOAMKG8wJ0DzY7/Zhf/3OEmNkjJZ5cRG4ycMK8HWdvy58u4vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772469894; c=relaxed/simple;
	bh=Jmi8jljjGato80u10b583nSJRuL6idvRK4VRhiqD6Ek=;
	h=To:Subject:From:Message-Id:Date; b=VZiUPebLiNrmcucgP22wK3Y7K+sRE9Ug6RmUJtuwa8nNUFlBIsrlAv6QsdZbWw7JUUNFdrroAXBUG6/ZcaR67Mw77oC8Kq2S0blV0f27uGIFy/eJFmNiOaXp5d4taQN+jWiXxsSgWM6thd4ZNfO3B51E7YqJsOJ+AV2HHMCJrLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUlKDd+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUlKDd+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDEDC2BC86
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772469893;
	bh=Jmi8jljjGato80u10b583nSJRuL6idvRK4VRhiqD6Ek=;
	h=To:Subject:From:Date:From;
	b=EUlKDd+XIVgoWwZ7Fj6ezvICms6+WAu8chCU+ApnPrLGjhgDoHza55FvAHB1JGGa6
	 pmkRXyJhHUs3kTkhpYErTxggM1XQrLbbGAyEhQzpwvZ/fX+2fEh6kH/zFWtN9n//7v
	 gbOSca1NdUJW9nOyGqRb49SDIPwNFqXv9RAdEhTMBkh8ge91eikSq+aT0970PkBeZm
	 tro+4eOZNz9BaVF7Xka/lQMZxU9/CvyAgrPrG0YwsvfFti0wUFmm1PO0QXJfWVIutV
	 xx6IqjfPVokGDlLEJ4O9AoqmCsq32t2QzCX3OilDxz6WUD52eWp1bM92m0iRRvndWF
	 2THLZq3un/2bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96319D58E48
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177246989360.18939.2352710872509219457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eec13e1b44137a45831b5ce24a39873b8737f6dfe9b9d0914cf04d4e8cc4755b
Date: Mon, 02 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772469893
