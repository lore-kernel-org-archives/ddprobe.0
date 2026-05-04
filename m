Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136913D75CB
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777926454; cv=none; b=qUh5mqDIVTVRxueBeTKUSvVmchMeU85cukzGqM4TRrXfvRA3X/4ppqL/3FRO72ghGsakRlRW5zwvwGfLyQrzB1W61L/iYXGTNTVZAi0zGr8af3kENFht11rglqYUdczhWSy61pckbO0QhgUdT4x9+qBOXf5BTz6Ohr23u0fq1Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777926454; c=relaxed/simple;
	bh=NvgyEWz25UAq/tjxeaoMG2O7YemObeaP0dnJLy0eP/g=;
	h=To:Subject:From:Message-Id:Date; b=LNquJatKeh2ETwBL+WFXiWjgKHBRu5p4vuvrrN7Z0sj1jUubuPbkcTxKWCRtGczLD/mfPLDqRco/y1nlBjRFP5uEYd5vdspU6RyQ4k2oljPiVUWO9DwN9/sl33XJZ5m3pk+JNpdMde5/E9JYFw1rrm6OgcQoWRZAm4sW+eVTaqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tnm6/1Ah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tnm6/1Ah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B933AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777926453;
	bh=NvgyEWz25UAq/tjxeaoMG2O7YemObeaP0dnJLy0eP/g=;
	h=To:Subject:From:Date:From;
	b=Tnm6/1Ah+1IM60FJcTWKo7LD2n0a/C33OZOwouK+ApuPPF2Thzp0rQI/V6DwrRTf4
	 E0a90wB3rDyTLsU4Zs8mqAJ3Y84RjOQNIstZMvYkFBBWg08p0UTylfx44J+HVnEAQq
	 vLbytG8RR4PXdrACnW2bElmcrwUOkzyQdDotS1jbwaaHZQbqP1EAenzm5S5pO/Kp+E
	 neYYbq1vzoQkwZzyLfKuN068BrRR5K3pcQAt3ScNNT3Vc2e9SSE17gcBg23DBOyQfa
	 a+dO12kAH2p0X4TgHQXiC5DfRAJDko8HY/6XynXnmvTSYSm9u9uaz27p3X0D0iJVCJ
	 fbilkaEseJSCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0F9FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177792645368.7472.18333385368805940507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 887236f4c5221a39ff295909b6a71d5131daf89a2fc84e93a3b256a0da792660
Date: Mon, 04 May 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777926453
