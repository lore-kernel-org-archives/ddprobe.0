Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4655222D7BE
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744877394; cv=none; b=A8HZbI48ck7oEP+u0yLHDCqEALjWhUoSHrGIVNZ4la/J7L09ROxTpKmVnWHm4lF3POTL4xdQ2heXV/C0b5gSLmP3oUMY2/1Y1060XSW7EGTB7TdCgsKaol/LV6PLcS+QSre8Ha1OD/QDKSyMVgM+YL38A68lfugBAZzYgYebjSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744877394; c=relaxed/simple;
	bh=Qz2xczD1QMhVr7tOkv391wGx2yiTm51UrQ2euYoDfMY=;
	h=To:Subject:From:Message-Id:Date; b=g63C3l42SECZjLF71BFmOodcrqN/wFOyqts6FTi3u8tQGIMiemMnG+NDqld9d4zUqsSXcaehFaW72X44WMephzfvw4JXz1kpDx3cOTz/xULiHjgmqKAIp1OTkzzwPRRxqc54vzms+c8T3dkVo4AeGQGYo8m5j1eLN5ywuxWf9eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7bnzfE4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7bnzfE4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD139C4CEF3
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744877393;
	bh=Qz2xczD1QMhVr7tOkv391wGx2yiTm51UrQ2euYoDfMY=;
	h=To:Subject:From:Date:From;
	b=O7bnzfE4ptcxa96Vwca9c8ppQ5WSEJfA9xnUwKzvO52aZUl0FKRQouDeOlb8Jx/ju
	 EjADQCU6K46ELRXDe63NcbSRKlB5yzaFrv6xjwLpTlu28JWiCIbKKr1DTKRZjXcxSh
	 PPFTvFF7RP6RpnOTpIhM5Tjs0sWCBAb9pMVAQj/StoJgLtGR+g7ethnxm8x2OnByBM
	 M1w09OEIcq6hnhLirq4zrpP6gYrZzSwwlGJgGOPCs6iRnWb61wE3aAeBDksnn17MPh
	 AW0qAlPPzxemBAYi4BonD+Eyh41klozU14yyM61oxamx545HfcUogQS7NhupjrVxr1
	 LKqq6eySXYlow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CEFC369C7
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174487739358.22547.12629024085398753172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a538103c9403760fc77d0ca86015e9446f8428c2ae4dd91e2ed4982757b097e
Date: Thu, 17 Apr 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744877393
