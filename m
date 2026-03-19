Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077C6399353
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773905694; cv=none; b=K0xRc/OJWQB3Fi+9lIHZbinmr+woFqaCPC2xMEOwvtqZUGxzp3ZFeDzeqtrWF0FYZP+PhRi+TWInwqgIDFXyHIXZEdLb0UNur3tEm6GZkS/beFUTc8ag+5uAVpOuw8B3LIPppPYdZIYzH+bQUcbZ/UjHA7PpvRFicatxC7XNkNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773905694; c=relaxed/simple;
	bh=BgJoRYyFf3LnLiuMubKssFrGubl7+MEgOtCPfrry5sQ=;
	h=To:Subject:From:Message-Id:Date; b=f1b4KY5ibH5yg33kSTKJv8+aPbu41SvLTfXxp/ksTM/Defgey4Lv3a+jGaAHZul3Cr4yMtai5ENFchIH/5vrBl472qVS81YB7oQrsxCgT5s94zzSMvN8qN5OXuspMMmGydxRnoPkT8ag8XOicjKJZkXaRTmt1XPwFmFBNMc2YkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TsFTuXUL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TsFTuXUL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2022C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773905693;
	bh=BgJoRYyFf3LnLiuMubKssFrGubl7+MEgOtCPfrry5sQ=;
	h=To:Subject:From:Date:From;
	b=TsFTuXULc8vnYaRHvbjDJNA9Wvh7EvY73jDSmM+1ZNMUWmsX2W2Ih1/DTepWCcmSW
	 bKQ4YTCKrNarrdyXoY1Tq/PGkTrP5NgaXIngfdxApDKI/CYEsXnMXL+QHYXRwx9ndA
	 Es5w0KBmsGEnENC4+n6npjsJHsbUD5+74IOeQCBqNeBRO5ssYZaMl5ma166GryFN2A
	 uxoTVwo7TxqXL0z2ha+m1WlKE+vhJ8mNpJQv4TRiC5FooJSJr5StjmPGN/7dTc8LUm
	 9VRei3g5FzHUyZyxP8tUP1hmm1sBGox2+00wf8p3tYs8TYFKJxcUF6NHpeTCXmfgdN
	 q5Ba3q5QLfxTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED41107526D
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177390569357.5361.1573824967315217196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d7e0868590a744d2c6bd0a8c5f7b0bbc1d3a1732818ed327080e7a2155d95ba
Date: Thu, 19 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773905693
