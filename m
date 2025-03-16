Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF8218A6A8
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742158194; cv=none; b=OuXvL4Pv7I2qC1bw//b31wY2RA7HpbZXILJyn1F/b37X3MTz1KBSUOoInj8cE680jkq0oRAfVmrnkfg7jfjXBZmVFHQQGC+VDHeDSCYr9rjEE2Ktt+xmfGhuLhX9xtTfkaIvDG9dTF/pZI48fmFPQ3ldqJ5E4EZQOiyG4z4651A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742158194; c=relaxed/simple;
	bh=3HRo9/3PnA7/8BO8/qpBylAOmZXbN8d00Ltuao26pY0=;
	h=To:Subject:From:Message-Id:Date; b=VnNjdepIpLLDAtEpobrhtyqicXSk1RzlvH52OvPO7B0oQBK7snY2pEkxI448VmitWwafzdMGIVk4oeBz4Idu+Lwmufb6b+5Sn03Uj2wJfL17z8c5hCWJsbdJrc4HM1XLCuIV/dVxjFLObyQRfCCrLO+AsPNPMSMgXKPPcLu9NJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMq1Kr5q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMq1Kr5q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FE7C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742158193;
	bh=3HRo9/3PnA7/8BO8/qpBylAOmZXbN8d00Ltuao26pY0=;
	h=To:Subject:From:Date:From;
	b=RMq1Kr5qJ1rljhnD9kzXIFDcgBDiaGz0R9TP+73ypbDEyrABI/NYBo6jHuOL05BWy
	 u2npqLk2C4kDGcP+H+zD/hnNgaxecIPnet9e/AvQLxZZO8D+WsswwS6exSIeCGZwbo
	 mwjI4AtEzBgzxx6iy39VLXYVV1R7mLcR9X9P72dOpTsEqAYUDm9tmTUn35n/i1Wk+4
	 I2T/NPxX9UKVGuoQmpa1xdJGT4zCcXaIL4iZ4EqaRssnomrqjKgxOXxMsDt4FBXAVN
	 icn/u2Qf3U7UEweycm4/zhpJW+iLmD/TYW4i8FOtdSp0UOdA5xC8mR3x3y1ue/cD5G
	 6m7uVz11owtJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B88C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174215819362.29720.12859458574196805529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43ba9fd485348cd2e9b75e6916a7f1b697bbb99a676ac59a44fcc66b33fd9382
Date: Sun, 16 Mar 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742158193
