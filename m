Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FFC138490
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777456054; cv=none; b=F/pHo78UPCnOiSgpOfV9MuyZmy9Dvf1TKtjhAfF6Jqv7misOHZ11UAMRLXKLERXj31Ntt4mUiJ7LdVQzWT3YzWPKs++rf6p+BrnQAbkbqfTy1Y5lyJhhxvKTXqN3h3TMVgA40iyYMLuSa2YGtBX+dGhwVjYWvShGBLmYiWGu0Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777456054; c=relaxed/simple;
	bh=W43ygWftJsy6ZdUBzpV6SvH1qDMeo2bFJUN9knRG+ko=;
	h=To:Subject:From:Message-Id:Date; b=sbFr3vcMehdCsdTSB8vIBqY4TFLtsKJF9za58B+YHE08EpSAFwU3i6I2WY4f6r3tqNEixdZbWtBVtytNzJXTy4pvT9YM1SJj+DLbQEIZkZ1EiOcp30o3U9tCt0DNg2c3+CatCSmdHqnW5SH3Pmt4AIM7BtlK9ocH40WxO1uSH3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLkMQlT9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLkMQlT9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC971C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777456053;
	bh=W43ygWftJsy6ZdUBzpV6SvH1qDMeo2bFJUN9knRG+ko=;
	h=To:Subject:From:Date:From;
	b=uLkMQlT9VIRAUzhiurVcpkFBcecvNVhoBuSCss5VnrNv2FspVbt/xaGNsZcUzsyEv
	 s5zxjRHAjrTryW/6w++J+yDqHdv7Gw2DHjAu50zE4F8sGpY8KQuzvwufG0IQBgP4Cg
	 898dEdiJR6Wt8cJ4UbOE+lRI9Sb1BdeO6MpZmpQrSC5uXctJjkTGA1VnHC+WrIcp4D
	 3WlLJtsx6chFCUkfnhXFZhLLWXB8r+NXS5a1pn6e7lmYg8MUJINj6uzdxFpVdSnoEm
	 9CFO9BtsthNdc4KPJMcYV/eKQVzpwnYSA4ZypK+4V/LSLRi0Yysclu6eRGqBnsDibU
	 t5dGML90pooyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC864FF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177745605369.2196.11099910976866659425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd7641b6eabec14b8a2de6adcfc7e5b0a55d1b7291868653a446b005f4fca0dc
Date: Wed, 29 Apr 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777456053
