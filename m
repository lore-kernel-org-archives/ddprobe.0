Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4F041737A
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 13:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783431514; cv=none; b=TmCjnanrSWf/B1zMsYkqFeWjNm42zF7mEv9kxgqoI0v16op/IuslR/uAIH2m9STs4X1YYd/wnWyxf8yUizbDXkxFP8dVY/m3/hrdSJct6ASzONN+YcvEVActFjJIN1QEbIue1d8+z5bdj57PDIeKxCoMTiMSZSxbYprCS5LlZJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783431514; c=relaxed/simple;
	bh=FCcvgbT3In8KS4CSkadndWg2O+jI+/Gdo6AIGFnopXI=;
	h=To:Subject:From:Message-Id:Date; b=fHqjpKXB0VHcfy9MWhmN+1yCh/BjYVCOimJGCXSwNNFIwBU0qkWzqnVNHjjJ4WiDdxZJhEhk/yffgCbp+/TNZkH8tMZFGPuD5K5T3sJKhL4nxMYUq3N9sBkRC8xEGGI9x3wiLJFXGVASrUNxbzl/jh03G4/Zqp8RTH5xP8VCD2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUx0r/oE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUx0r/oE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE47CC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783431513;
	bh=FCcvgbT3In8KS4CSkadndWg2O+jI+/Gdo6AIGFnopXI=;
	h=To:Subject:From:Date:From;
	b=MUx0r/oEljfspmoFk3pDzlvwAkPtLBDNih0q2f/bZbdS0EQisOTM1GtNWINP6rb2R
	 NZG50Uzqh3uyCAMGxMdshfCeS9mD/hFR5xBV9hhzGz3Msjf7pfFWUwSmWgs2gTi8C2
	 j+3JPRi+3XaXJ75fUKnPLPhIT0SP33VoG/0U46Vp3Xj7y/zjqhlqoUImESYYWfyRvk
	 MqW5MxE6D/o54GNP7Do8maoB9X3ObXnxs6h9kWlE15S8tjXCbZfSsOVe80dzWptmmo
	 CSlGdOtvNdhPhratyUP2+W59Qo92j2s7YGAnUikrzhQ3g6H4RW83GQtTdCdMnsGpGV
	 E5qpIPqgviTnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5BCC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 13:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178343151369.21953.1016174700568866969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c954e5b7e6464e13fffaa165798a698c0bf061f0f4e3a31af1560c0fdfe475b
Date: Tue, 07 Jul 2026 13:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783431513
