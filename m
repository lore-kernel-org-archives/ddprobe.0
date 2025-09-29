Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3224734BA3B
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759117195; cv=none; b=qiN/C/xnuLdfCV/y6Y06+S5xrAVEYFOUxmrPmFHGsHSazR8S2ADRk/l8e5RG+TqR9bHr78bm1t+e9BUTBzdK0Kzxs6qhbCftOIftQNy5WoYh/jnjrollj86v4oCIfS9BSl+2fGYEFPkC2WuvDqLnPsQlKdR4H5AxFC3dPlyeU2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759117195; c=relaxed/simple;
	bh=Aed+/pt78sZJf/jWZt3zGoWhcb6QENDA84VB9SPWs/o=;
	h=To:Subject:From:Message-Id:Date; b=TD3euuVauiAjlPHwDVQI7h/mXmN6CTdsOh0YhygwXPMCiBkjKQwnXdbGDwy8Ri/7MhcT/KAj2Q68u/yAnqfD34pfkwOXq23uJ7rZtycQWNP6r1QMuFIlw/LEjrdoiQJR5Fvx2EFY2vn+awQxEmJYxn6sI6S0YyXILbqs7FS2p1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMslmS97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMslmS97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB4BC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759117193;
	bh=Aed+/pt78sZJf/jWZt3zGoWhcb6QENDA84VB9SPWs/o=;
	h=To:Subject:From:Date:From;
	b=pMslmS97gA2EQhHPwS2pezZU45RuBk2Hy5cR3zOwPXmKWXykD/MiZ2iBA8Qq9c2HT
	 kXqNRp55MD+o2C2k9QatcW+w1Z2BR9hDMHmN1XbX4uRmDv5APE90PlVsVu00lZ8DDv
	 aD5fCreSvGq/EtdN5ZZmvvY/uu94Aa9yKk3XzF74Wsn4j0n+0f6Z9OQkfaF241WAxi
	 zWpzSdpjE9CrGV07idq0sZQLuhgAaI0dIldW9HUIVoO5ZNGP7GJjeA/1hrd6gjQcuW
	 DMznDk2zazJWMAJwSPep+SDCbf71XznEtObUCFurmNAKoj2IEI2ka4PAgnOA5TYmVF
	 XATtrKWEZuAXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9622ECAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175911719359.31944.11865764713126085521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ccbdb6d6cbfc8d5731ede28bfcf767df3ee2864153d11a66034c2cf973f93e8
Date: Mon, 29 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759117193
