Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B09383
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735690554; cv=none; b=Pszus+u18lhN6gDwdsOLHM2S4bC87pP206n7IWNdhNrD+v4CogXR2bez8CEeFLF0GDmZOw9m3aAHpJjKHp3C6qsE+e39ph9/QETY2CBXucowJWruifV2vDtHB/nRkryjOkPhxETmLiIxeEb+RqACKEpTbCS0cCp4oFEgrH/BfGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735690554; c=relaxed/simple;
	bh=ZuusxoUFjnFHfU4WXOVkcZWNkM4GE3Qmkfqqi72/6qw=;
	h=To:Subject:From:Message-Id:Date; b=IVEGnve5RPAJq5ZBsPRbFEfYVS0spL5vRlEz6Fuu7mSx0PU2J3o22mcPM3hEXo1AGnOJQo+Wa8kWXovqIMiFDM6GCX2H86g2EfZ8pQn3SBZ7k8bNxRBYpWfH7BCCPwubICqSPloEq2M0gEeon8lSHx9/W6pkyDkc8fh+DX9FuOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSpfGO9M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSpfGO9M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65ABC4CED2
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735690553;
	bh=ZuusxoUFjnFHfU4WXOVkcZWNkM4GE3Qmkfqqi72/6qw=;
	h=To:Subject:From:Date:From;
	b=SSpfGO9MAlvFFVw4zqZpDWxqVWoiP6kD/2Wv2b4tbLAdmtK5PVnVlUsCHN0K+/mR0
	 Z9KOJc2nKHY+pV3UWPlxH6OPRUYVKPzNCegjBt8a+5Spn73wKm5hqwip4Bh+1079jX
	 P3Yab8jkxv3qo/rw3nEkh1AgJ/p2toCJQ6Z4JdS6cxyvXVLg/N5lnEXWlDY19978ZV
	 wugQY/IoNnZy0Jul1UKFxkRjJSZkzIfW0nRe3B1nniVMmDi/baVG+iRKU2h+0xMU7K
	 c09ZAc6A6SS/aAt5hd2exNHyfuxo1MKeWkiq6tcgVII9Q6pDt/7hyRV2ExvAO0g2uY
	 Z4+03Vf4LXZZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F484E77188
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173569055357.5523.14707573666325570604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aabc8735fbf7f411df58efa22d6cbde81a76754a7425a4684217e2afac119ef
Date: Wed, 01 Jan 2025 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735690553
