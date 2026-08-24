Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1E4383991
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787608234; cv=none; b=tIgly/RjP/4mPEKe080fyNUY8buDYYUyt17mxCU3em6KzclpdlX/Q1jbtIjC5GgTUJ/zvs9oBBRVJy1brVCOQuaLnxMyZZSAICCN5UeTCWLUiJbrpJD4sAFxMpqYQwmFoNMQfIgHiIS+2Du3IumHmqds0zvv2bhcbLp95H7LHx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787608234; c=relaxed/simple;
	bh=8DBdp45nFQaGwh4pnXov9Mc/3EHv/trpjtGinaLLyrw=;
	h=To:Subject:From:Message-Id:Date; b=UCfG6qVF0Rxs7S5c7l3tIgLbgS0OR1o9K1UNv5bwADjuPi/88Zlmi/+idyW7QNFE4jZsavNRNll2u+Sdh5yBUUzB4atmxKowjKeBOcCMAG0/402Mm1O+EVxS9tJWd0Yud8fGBZR+VvrU92sBNG4WYPC+J1ZlPPqSZoKfJWyoWA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mp9Z4Scp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mp9Z4Scp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0671C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787608233;
	bh=8DBdp45nFQaGwh4pnXov9Mc/3EHv/trpjtGinaLLyrw=;
	h=To:Subject:From:Date:From;
	b=Mp9Z4ScpF2RSN3LzlPIFHrHEP3ibNyFvAeCdK9r5LbxEyyfQt+Dag5foInci/vouT
	 RBVcMKMrfDbL2XX7z6XLi7Wi5W21qzP3nVcSBUImoryu/OS50ZUhUVho0fu7qBb+j4
	 56rGifearaBeNY+fJqjgG2p5S1do4xQKsJc+3cRA1UTYdTeNPFkgGYTytwTqQxrkCo
	 ykmMbzf4c2uIKDMuImZL5dWAGqwSGDr1U7bjsb6602pzp/vyh27c1r8hrACulqIIY+
	 JO5PhZYrj/+fNspSYZldZCVFT0VwGaCHDxc9EtOaVzx5lqgyuSWCaaPjH9A1Rjnzms
	 BPmcptOcdkLAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB817C5DF94
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178760823369.22345.3123374655203408176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76b10ccf9cb9514d78c85aa043eefe3c628e178f78bb00dcf7ab6356baf30bb5
Date: Mon, 24 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787608233
