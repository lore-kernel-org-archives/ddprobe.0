Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F41D3BBFB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 22:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780610674; cv=none; b=RJ37GxgZe83a0Q6TF81ISySiadaoHp1x4KzHCDBE5TS4SpY3Vr4FBYLvuYOeAJ07sZ22hQpeno2w46ynBKtrb1YHatotTKA6Yb/slTOA0BL87cXOQIVa8hH9pLpch5wuFRwy6AzF9XI4jUZc269SD8OsCqu21MVtQ0Q0urP6jq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780610674; c=relaxed/simple;
	bh=P57vFdGpy/1B5Ta/93LHBWXh6BWkaMw62KKnL/3AfLQ=;
	h=To:Subject:From:Message-Id:Date; b=aD0Vgd75MMNkQtT5NbYuiDdiVNi24D3lK+MrBhrfE1m/qJAmN/mAx+hwt6iZLfuk0hRMtLvmWKAUTNnqhJAXjp/nQmWr2cAaLCWIvTdbAJSUGgKGbbWTM1+s7bwRjjaYG9HfuhiyVihakdolIOtvcj40rTXid1p0hShChkFIavU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4Npr8Qm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4Npr8Qm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2300C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 22:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780610673;
	bh=P57vFdGpy/1B5Ta/93LHBWXh6BWkaMw62KKnL/3AfLQ=;
	h=To:Subject:From:Date:From;
	b=J4Npr8QmT9+O8Nxl4ZkW9KFdWs9m53j3EDDWfj/Pi8A/6nXbuLBEq1mPQ1wN2vpLi
	 Lw1YF4oEXVDhkPBwBmPju0iSpX98nM6QTLoMDPLFPdwMeakDUHE3AV4ZeSyfvNpmVn
	 zHsSZdi6zxzO8JNa9oq/kfn62IJf7LfM27Uu/MHnClTzU8QWyjm9XOMh6dQosUZ/xg
	 HFsKVS/xvYvL7oEGKwDws5gUbguhS8tYHX3SO+8iJNvhmkC3HQ+LPfQXWs2v6+sims
	 RfiTGBW+ZzsW2RaRkwlmMgbriSzQ5QjwNDeFJ1kfahj/9uWiIA1T+VyH7tMoUY/vCf
	 aQEPBPs0uitcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9094CD6E75
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 22:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178061067368.10618.642980504587899105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4be2726d53ff4d44c4db9a5f44066dcf9e1129815b232aede1a439ac0bba0ac4
Date: Thu, 04 Jun 2026 22:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780610673
