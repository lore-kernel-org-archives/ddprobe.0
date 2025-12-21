Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0822AE99
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766297034; cv=none; b=D6MAmNV20kerA9J5QuPSM5H5iy3WHd/2Obs/FoNr89RkfMeJYJbGqCVAXVSOizHfX+EyCJLIw18pZA+OVJfMlbgA9jsaMIuOGrMdMOaEKLO9XsTEC+QFBjha8kDIaSKhM5Dn6Kpc3tgqkpnbZ9OPjbOnvCwi2u0Pwa6QnI7e8Y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766297034; c=relaxed/simple;
	bh=3ee2eLkANVJfiYOceR3OHpo21VCsTA1tU8nfktacXqQ=;
	h=To:Subject:From:Message-Id:Date; b=WykQktBiSghcN2QaGb0KMFLU1PH1srde6eyCt33q70IzsRNYZVfQgXgfFxiM5u6S6Qui4oELuLCAWSNGRaOQqAr+cVyOuLJJAle/RHevb02TYCgNsPBFdMYutrLnYyyoG7e8DQL1z4s6HuP9ZLmsaafbvMGFUlS9lvSbP9+uejE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBGXlqQt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBGXlqQt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70B6C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766297033;
	bh=3ee2eLkANVJfiYOceR3OHpo21VCsTA1tU8nfktacXqQ=;
	h=To:Subject:From:Date:From;
	b=oBGXlqQtz5kMScfD/6dYe/4GWUW6qDuQcz4z94SkcSBSGUzN3W4yMzXwHPzr6R8c7
	 G7X83dHpHbFA00RmTk0kgWoX0BxdJWOfPnI3yjJiUNj9X+kzyz8XV6Mn1xC9yds6aP
	 fInJDVhBL4paZvbzTSYM/t6oKmH1Ww7feXFCXgBEio+KebeMsk+sJBwMj2PLP2KxUN
	 +HQET3Jibx8Wt6as4tgcYdrVqn9C6NEaX2s+JrPVx/Ara9QRXxStk0Qjhv3wfPQ4SB
	 y6hbZJM2eHcb4NQ+2V2cB2lLi3L/AObM+pJfZjbkKVtj23Je9atUuwIKzK9/Lsk8sY
	 QTc4DJyoVBDIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B4BE66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176629703357.24894.11351942264150847081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65e76b31921332052410f1ee63537ada76e03d1f0c2ebf022786aed1b1dfbc3c
Date: Sun, 21 Dec 2025 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766297033
