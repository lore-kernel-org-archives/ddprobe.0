Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14BF0346E72
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776983854; cv=none; b=KzSGxwbxqF3ps+5oub3V0z8HlMu8YoPF8wcrgSaQReEUVFMiFw2+W5Ca5b99DOVbBMoXEAOc3iOi27wDcv6o5514uI09m6oKl4j/AGMfm3FvGZlK6hXeO01TpkXcHkFUWOB8teBeU3jG/hL7VJLoroSoFQK/dE9ahy3Q9u9QaZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776983854; c=relaxed/simple;
	bh=ukuV3kG87uypmwPnRDi8IQyrDBKulZaH6DXFdi69kSQ=;
	h=To:Subject:From:Message-Id:Date; b=ghQab9jT912sOkDf4NUv2ZGUKRLZk1Zgvs1BgGhMTA1rHTQjNWfpUL92niB1ke08USOCetnnQ5FF/RJwRd48CyojmSONeHpFrp0h8GncpLPfpPRSslDhSR+f1Tqr8+LGEzigqXcHfIirrJ3DZJTQ6dkm65XVtSKfE8KlGo6qpvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imyBm6sX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imyBm6sX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB66FC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776983853;
	bh=ukuV3kG87uypmwPnRDi8IQyrDBKulZaH6DXFdi69kSQ=;
	h=To:Subject:From:Date:From;
	b=imyBm6sXaJVDjcy38Lp1+M1VhvpaqNKblBgDatrDUl8yLxRmr2KRlg5mk8xP2SUit
	 Xitqb8EBPA5je5+JUxhzuAuISr6Y63oyXGVM678hyINYjvOxCb+edTHwDtsh/EVaj9
	 8oxd69yLK2EmUEIM+KFyJJA62MgtloTd2CpMBTWvJ358hVAyYB/Ge8qegkkItEXiEC
	 gGBVRl3VcChrcAgRndcxNvMtA44IAsvZkXdrf3GMfjjlT7SgECg5RejLrE/HMe7Yqt
	 KcZhHNcXJ4ZP1+Yoncj8xpiql9yA8LJnvnK0D41Oaz31o0o3YSDApM733I5HRrTv4/
	 ISbLj1jTbCFEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB091FDEE54
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177698385369.27290.13078677314477499229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66a7eaa25fb72fb0df1a0e6bb727dba033ef1a04d85794263d21934d707ad172
Date: Thu, 23 Apr 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776983853
