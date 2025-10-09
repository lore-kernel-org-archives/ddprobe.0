Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CD31D5ADE
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760023194; cv=none; b=CipuLt8Hkn2aLbm1UznkwxNzI7eehtCKJnl8JHLrbSQzCz3WwIW4xSZrsy5d7MnE7ZNlQFrb/opzK/rRmnVouTV4cApNLy0l1Dz6gj10JfjXKtPdkTHmnzfpMOW9aMo4Azy7rblSg+3twEV5Ih3ubOp778yhjUv+X3BjiPCdtFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760023194; c=relaxed/simple;
	bh=h/zNsuVksHUkofLKyoDgTMGCA52t5b2Fvr3dYSrvlE0=;
	h=To:Subject:From:Message-Id:Date; b=DFtzevSaTlz8syBVVJPh7pDO2/25NK08MtxTvFkyV/20B6/GRIyA0i5izcE5zcJGooc8i6PDW0Io0b+perKiBUMsoEewfmZQ4Qp+fgRVyEr8cU7kwjX1GV2FCm74BNKQfIbbfod8OFqFWbIQRN9C1FyD1XbcV9B749xlAmk8SpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2j5fHDA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2j5fHDA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E395C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760023193;
	bh=h/zNsuVksHUkofLKyoDgTMGCA52t5b2Fvr3dYSrvlE0=;
	h=To:Subject:From:Date:From;
	b=q2j5fHDAeXQdeG6kbwBiKjONDZNFDCx19fd+t0VYqIqJShXISzZmUZnriSxszABMf
	 4h9GVYLHGczfedS8i+FpEWY3baB3UlnGfyv6i+2lNvWdcmd2WIZUADMWMGexcrJKZF
	 0wVtGBSFtoRpsphPMvrV3W6PtmqXve12keFjF6fatcJaWw0J8LMCodnMthVaomDpR+
	 gZH9yW5TcQtLWzu8E9vueT+60AeZNWtI/jIIwRfh18fPvdnBasyq3aOeaNtsIGmdSp
	 CCy4uKTqUsP+76QLlceHmxMjO860bNDSyfM5uuYMtCdOhzmUquk+xl81k9fUpcjWhS
	 nbGilvCwWsGag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE60CCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176002319357.1178.1535085660973235610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6519c7b3310a1961cd8af7d847134a9f8443d78af6433b158911d241e1dfd706
Date: Thu, 09 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760023193
