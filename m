Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4CE487A7
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 07:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719472463; cv=none; b=qOebecyivuTyQ7d5biWrtpkF2x9zn7AbTFcn7OCLx2ZlbW+9xbMvmD7E/6qym4/Qplhemyq2g0nd2C/MWcc5OavoFimAK3zLBQAjx/i9e4MAT9ctx1yJ34vUZd5B7gfWXOtLaq9dvy6bURD1pNIPm3+iMmb3NkKlB8jrD1wmW4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719472463; c=relaxed/simple;
	bh=mcuhrJPSc/so01Cwz+XiWvo5R2sOxVDrsTZgDF+ucmg=;
	h=To:Subject:From:Message-Id:Date; b=pMYO/ergPKrAnV7Z6OwKMuRlapWv5500FH1/UP6SKPbx9C2x+DvQF8PtmSLfHSqRhLKkq+WPVGYmbs0Kl9EK7Vjv4xEY4qpQpsPO/KN/tEMsBDsPOtP4GtRDCQEJaSqteV3Tjk6NLr/YVB7AFxFPjeBF1DGKrN2hGPdM7W6V9pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=efCgr3cs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="efCgr3cs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC819C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 07:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719472462;
	bh=mcuhrJPSc/so01Cwz+XiWvo5R2sOxVDrsTZgDF+ucmg=;
	h=To:Subject:From:Date:From;
	b=efCgr3cse2VGpvje00Qf7CfMEMlonUN698vt5EBKxFovXCo3+RbfEnKq/Yfq3xNdv
	 G3H6cgz/LceorhE9w5SMf5qfdCKQI8UNkRHjz2rZz0Rma1yYTRGT5Kr+GwIdZdpCqa
	 jT4VyqHhIBZGgBDqr2UHp/LvqE6jhZHHTcw/Mb6bN1dggzWgMNNIN/1yad8E8dUlfi
	 i42sjQov/VWL65SI3i/ZukVnE+OU9C8xq+kAAZlt/TvyG5mhb+o3QWdH2Ihxokowv3
	 cyUVVt5kBlAmNL+ots6hcc6rLPh0yWs5yXt9mBemUttQPUuYjHEjt3iusVPMrWt4vP
	 ErFfCB9y5cBeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA66CC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 07:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171947246282.5062.10526289595892234517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d64cdfb893c18d75fd6e3599f2b2c200b09fd66ae82f2cb95779cfded43e18f
Date: Thu, 27 Jun 2024 07:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719472462
