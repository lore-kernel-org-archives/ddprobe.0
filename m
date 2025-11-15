Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EFA10FD
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763170794; cv=none; b=iEUOHfTK3pJu8KfXgjewI5ORdsHYxnMgjKts4UtacpTY3A8p3oF9+z3dDIRLkh0JJzh88cVmNTVrTX9Shrz74fzHZTgC+LaNpkg6sC7/hrNN7c8WpQ9byjpbOHoDwrhWysiTTjW/1/b5ORcSmxunYQ4Kvza+gJn3IGSt9IPRX4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763170794; c=relaxed/simple;
	bh=Jc3ZrsTyd3Ik9bTVpjnzcWlmzKB9yIYnFebR4uivcd0=;
	h=To:Subject:From:Message-Id:Date; b=q9nL/erz/BgdRZaBsNgrRav4ftfTH+HpNthasDn0Y85y6fnOkVsV93iCPDw/LArgW+CZTbXnnHgGuBtl+1daY9Iv0Z3mq57HT18dP0UYrSgh8KMHDYBX0Gz5OMAdAv1xIcRrQcHEno/iidBi1AIgX39WLQMTglirKFPn+CR9XFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLZhBOhC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLZhBOhC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33ACC4CEFB
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763170793;
	bh=Jc3ZrsTyd3Ik9bTVpjnzcWlmzKB9yIYnFebR4uivcd0=;
	h=To:Subject:From:Date:From;
	b=LLZhBOhC7stqx42GxGQMFTArpdNL36TCgR6V7hH/+9QbnU3LpqT8IWvW1ewyYjgsF
	 lED/7poKzWMp/cuALYdIuWkExiDlJciqtG5jSZ+5b8QrO3laNKBWvH5vSgkynMFAgq
	 Grdrl/wPWyqaNdhqOtWK8frmyXaiImalBeuiQMcH3qvO+ooicUiRSBSLqGfJRTubxQ
	 dbKVZ1fLzheD0pgZqQbbE74oMoadHPY2rAOpNu440khPpi7Eh50Bcup4bbsyjpO59z
	 xf32npPhO/NYyhubYqmlLqn//Cd69qsYVx4KXrhEve3Mt0c7+TriqEbYDbp+YjZvYN
	 9N5Wj4zsS+bOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972A0CE8D6B
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176317079358.6666.13911396692279171693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9df408df6f26656c01a57270d37337180b5da429ca983a5930bea4e29d008026
Date: Sat, 15 Nov 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763170793
