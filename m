Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F61417E8E3
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 09:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721210123; cv=none; b=gPYhPA1bM3hxkPQ3DxtnvIsxOFo1+0uAiKuMAKXICon5HvrVFglSP03RCVbA9eed0IIBnpz5E+wqiAVXxZEdACv4JC/5Tt06/LlLB/mVH6prxVXwVcUq/AWQaeTFRXJyHThYRcVNT8bPaq6jJII8pR0gKOqXBSPWp7KSEeIyMYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721210123; c=relaxed/simple;
	bh=/FpFP51lIkAqnPztDOUEhMCsr7ER2RD/YBZMu6t+9SA=;
	h=To:Subject:From:Message-Id:Date; b=k3TltQ/QQG0RTPEUE0JEnWzDJ9Kuz4UDN8WTzioniM+PfLClX86h2a+qPPcscihRjuJPwUhCq+wotur9FBhnKJepLYLS6i70ZUqDIDKI5XL6tErcfn412I25qMOgDrwFgXHyIFROFXiWlOtlfKbyg9mi1qPQ0o/nkQnwAUJ+0gI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjyFqyyo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjyFqyyo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E18C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 09:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721210122;
	bh=/FpFP51lIkAqnPztDOUEhMCsr7ER2RD/YBZMu6t+9SA=;
	h=To:Subject:From:Date:From;
	b=PjyFqyyoVY2Wx85gsR1HVakQhaWPbXXaI1vq3H4Ip6JLD2fiY/BBoFe3dth6E+4JR
	 39PDrvSFNYNKQM+oB9rN/jZuha1U+fuUPOLUptehSL8cCId/fLO0z4eKAKmL++L3vs
	 Q01fdi4pq3DZ4NPNyxvSfgCHKTOF8blc4n9jd4IXaQToEgr7o9Pka2LTUz2+kKD7fT
	 IQ98EtG+SeZhMQyw6HBUPTFr5hCFqCAVUc9uC6hfRK80LeMcZSZ2SNX2FODMMxoFm3
	 B93RlephhfyOckC787jk/xgZJP4MTzJgk3WSStKccAM0YybLQD9v9GGFWCaJW2dzr8
	 haRkUaRP7z3xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4A04C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 09:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172121012279.18493.2780521685044232049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 570639fd1476424275bc9bf318a9db85de6ee2d672eae8ebc5b68fe964adc5b6
Date: Wed, 17 Jul 2024 09:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721210122
