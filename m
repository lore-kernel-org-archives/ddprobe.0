Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3157A2BEFFF
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767589434; cv=none; b=ebr1jrHdxfh2L7RJLBG6TZW8TVafBEyh18jdGNKF6TeotjJiWd9ygSWTBp65L4WyTlnDRreDbqtQe9H3+rOYWSFPwULzvXRhD6NLw8L6ZRCD/OXkpOwS8h/rgHYtdnlft/L6g7uumEDIrGS7kiQfJ5pIbJ9nfG7ltYxHtPn+f5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767589434; c=relaxed/simple;
	bh=FRdIvPIPM8b0/SSXVcW2y21REVLwcGrZxxLcrS37nUc=;
	h=To:Subject:From:Message-Id:Date; b=b6icgDgruD2pYxFVhGfVHWZMHvNYbO6dEx9vu1Qc+hYS4hQkeQBOpB5Yv645VqErNY/Ei+9RAMvZz8CD2o79YMablDlk1sORNtGzNtuxYZuhy/7nzePjLFdCvQ1BIiuQm1Pk1btH9N7lLnsXdDp4Qktw4fQiTy4oQHjzXBFB47o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZqtohZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZqtohZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFF8C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767589433;
	bh=FRdIvPIPM8b0/SSXVcW2y21REVLwcGrZxxLcrS37nUc=;
	h=To:Subject:From:Date:From;
	b=WZqtohZB31358Sz+TuZe32Hwmfu2dOi159m/X5H+RRP0IJBjk6EbfOhWNFRqhYFqT
	 JK6HH5QCzoQjYBLtSMGcRr/iwlPoqLXYtbWB88DknmUhkAPVoysMi75YSFn8Vo1AYc
	 BBTh44r4NKgwX4JGvrYojNmiSZaAulVYngY+ZhyhtSbRbpxg8vT8E2DiU70j17YFhA
	 JPg5nJW+YWsgMD2RlGF08btVOyt52BP07hgInXQNMcgjJ9sMfaIHIjCUHUGQ5VoRmE
	 sMGEPkS/yqjfjkrxXCDzSDr9aN2dM80vPtYPE+eiiID0i0FosnSlxViTqlnu5UdrXn
	 SAmbrjC+bdDMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE52C2A072
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176758943362.27203.18193991486965925148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e86f059ee39c4a1d149224e952435ca77988a43454a3c4a7e83f9cd6a233b61
Date: Mon, 05 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767589433
