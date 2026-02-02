Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B4B2BEFEF
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770065034; cv=none; b=qQ3wLkTV/HjCDQjE3qoVgQL14gE3iyU8UzHHPSa/Z/iopVtK9Nrl50BgkzuRQMryoL0m8B0USvj+q7wRK6OrTtfnVwPzB3DwR4DC9TUIYa8112qkQNND1G0jIvq+lJ1bGb1X09lAKMZNwDTP1t3ug84Q/1Rvdce1dlZcOpudQgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770065034; c=relaxed/simple;
	bh=a+cGGso7W/z2LZFUr6IXLp6Hz6g5nedt3Drbdz92w1M=;
	h=To:Subject:From:Message-Id:Date; b=GU15ZCikneZcZAABeMkQRvfYoXe57XM45+TrS4Mii2WgUJlcXlVb7YAxNbl1Tiz+Uum251gHs/H8v2FnmjxOPIgyWK+1SZ+38LUIkbeB0fk9nxRyukGyB/s3fQNqk8L/uaZ/UrOLFyPgF0Kg0UfMRm5jQagRxPG94htrtErpAY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mITWQCaE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mITWQCaE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE229C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770065033;
	bh=a+cGGso7W/z2LZFUr6IXLp6Hz6g5nedt3Drbdz92w1M=;
	h=To:Subject:From:Date:From;
	b=mITWQCaElxp0cw3+/5OqVo8Vq6J+DA3ozAV8tl4HdYdxb46LO+Zmnb1E7mVC2igSA
	 CvHbx+SVLXtWqIncogsldezpi4yNaJnACLS6ZGtYz9y12BY10b9gNmoLOL5IN+4V03
	 5U8mVEPbdFcZdwNMOfTdGnnnq59ZnwQCQ1FYBlJk4I4gVuloaJl3IOV2Cp9QUBUFmL
	 uFdNaTBkMIaCoOQLpY/xG25ClMunA+OI9xsBCP5hw6so9pmAHoEDitueKW/R7OurbL
	 fHzXYoy2W5idwxDlq0cewEX17l5VagdA6y582sjBX59uaAvLPPxKTuGdHvwNi4QMPf
	 fCe4yPFcv1+xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8925E7FDD0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177006503361.23104.16825757139544938795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 706827f1e1be2be0d8398d21fdabd2a1093b721b29c96cf2883bbfbf01309e14
Date: Mon, 02 Feb 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770065033
