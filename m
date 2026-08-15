Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512FD37F731
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786828234; cv=none; b=mRerM6a4Z+Fy6Qku0Cc30xtk3YrxVsNytdU9PbUG1KEZ9ovnAfzFQE9HZ7acba+sV9VcFt99pPZ+92mWEbWqwuFVt66NqMH8tkF2DRTv42nAcG2Ory13jVGHXqxuwW2sNQFSrOVfF+sO8hO3bCWLNVfdcTrik2YMw08J4LDT40A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786828234; c=relaxed/simple;
	bh=uNMdLkz6f797bYfy1I2MRJyM8gtmBRMjGVZoMFtCeFo=;
	h=To:Subject:From:Message-Id:Date; b=lUHEvCtc5xgOc94O/Jyxz2d8Fu2FsffclwHWfJXqpu39LLMS+xyeFPlSO5Jkq1WTzbjtgL31AkXx7Q6Bdd4VwjOFZWu51NKy6zBA5pLhSKyX7mXIUVyNO/J7D7/j9vWH3/SxtYhDrAZqRnYYOe+lrgxxay2Q9BQK0rx1SD3JJLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPtPVRsb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPtPVRsb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FC8C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786828233;
	bh=uNMdLkz6f797bYfy1I2MRJyM8gtmBRMjGVZoMFtCeFo=;
	h=To:Subject:From:Date:From;
	b=CPtPVRsb0mpouOk97VMC94spdddbhIBDKOB4awsE/e+5EBJnkVyJzOwDlFxW9VPsO
	 mogQHWymCfQhArJwjqntgOJyhV/mSWDH7Fr1Qu1FfC2lS84cCKWt5e66sx97YZ7Wnh
	 UnrRA18DApzPG7ItO76YkPwKqfsL3ozjtAF5zvzxNGAHB/7jeQ6Rp4AaKKhviMikGu
	 FhwK2ghtfJqM8IoDQPW+xNJaRbzzrr6pOFHuoL80Uzb+MvsE8Og+eY1qTBpmf9S9GK
	 visKF5knSBM/CLK/AHA9bg3r0iX4CUC7e+UmJcexNCR6TW/qTCI9xY1ioJFqOUO3Os
	 HaqVL/aqyueKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B182EC5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178682823369.28743.2593234004766219784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 007e1def2feeb4647ae223a51a89df11d0e67c2d22617669395eaeef9d433568
Date: Sat, 15 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786828233
