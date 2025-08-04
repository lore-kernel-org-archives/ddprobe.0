Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3DD191F92
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754308794; cv=none; b=UHtP8XBGiRAwyNvBh8jZn/fReqWviCoq618FopJq2BUdV8QA4oYxTb1qNhmth/X9/MNtPxAQdrwGvtS+x8DvWnL0fZaJWc3lfSgRMOYVLyo5ifIpNSahGhUSsVn3x4zsHl1FxAUcE0H7fTTbyTzJrXDGUFAXqJSFzo2Hvra8E4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754308794; c=relaxed/simple;
	bh=qSuWRXcNhPial+HPFEeDr/sF5LrTWj2ztTGHp35FGOw=;
	h=To:Subject:From:Message-Id:Date; b=chuN1hqbGz+P/myJN1s+HQ2r5thrOrMcG5oCLUNsSnhua534GjJQ7MIawe/qhoaQuu+XeVWJZjzvw8PW47EuyQAbUVoUSp4kEsgqc3wjkW6EKsRJ+DnV/oWOA2U7GATl3P/n1YWjehAsXgW+TZxaqRBeO4KeLObXHlNIdPsOPwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EgpmSqPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EgpmSqPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E4DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754308793;
	bh=qSuWRXcNhPial+HPFEeDr/sF5LrTWj2ztTGHp35FGOw=;
	h=To:Subject:From:Date:From;
	b=EgpmSqPkYE76aJeFMutPJscRtBwbSkZUAgLyK10b1T7O6qm/STSjQKOd7obFjIPmu
	 MbCTlPK0KAdCrpYfjwq1jfEgVb5CEBXORakVJ9YrzQCpLFadKqCYx5Xky9FipCNMSC
	 DX5/AnFBsFFSaLonYjn9vHtCkknJX92JP9PCKJ0eANtEAfPaU78ohEN3xJy5yIVXOX
	 yLY4SQHHbt9DT02qhG8mFL1KWqGonUd0VT+uVM5/YREMT29ptNfn3ytipQ+Tyy3Jn3
	 qkpyBf0kUzd/Q+WZYjblwQvBFqLw/BIQpins/iN1iajwqNuRvzK7kYHtcW0fVUx/xL
	 6p/7v56dtAiwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4EFC87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175430879357.31628.3621063755747416090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1694f8b1fd441592bbd9924bb9753639a4ac8f3bb0af6c2a85b061ed816e654
Date: Mon, 04 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754308793
