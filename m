Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174E22D837C
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772145894; cv=none; b=TfAwvxzj7pUpiNAW64DimLtbtPiR7WTExiqmLremwlWvZERKAMP4jvVD20qflWp5aq+38if3lGsDSWfnz0v2lArbcWpqUiKnYYOignGRIXiJSomUAPnP/IU1aobHeR7y8t0OIdSFQSdLOsSa2xPz68kikrGSezFx3wjedX7BrHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772145894; c=relaxed/simple;
	bh=138AKnSJ20tYhuCEn7tUu9ctZ11+tdao+VRplF5+iFQ=;
	h=To:Subject:From:Message-Id:Date; b=fui0NOvuUwiN6EBikuwHic9YPnG6FXwIctM8PvP8Kso6VyCo3Rb8RhvKqSBpkNp7hnCDTP+SgeqB2i0D+RPxVEzGmMiHhSsxhtKNSYdRwFuldn3nbOiLt881tyKxqVObFRz5Sy2tAehYu0JbnQ8tuOeQm4u0sHB7QO6BKmaaDs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j81bIxeE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j81bIxeE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB9EC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772145893;
	bh=138AKnSJ20tYhuCEn7tUu9ctZ11+tdao+VRplF5+iFQ=;
	h=To:Subject:From:Date:From;
	b=j81bIxeEOr46cCerEXDXWpdYL/cYInuVVZ/gfNzvExZ3c9X449XLtosp1K0akTjWL
	 cnDgrE+LoMPROO3nww1e2cfFWnakhiRyvLP8YPJoYLZwWlqrp3zf33YF3A8tnxfI5j
	 pg802ip+2WB3L4dlmv2bH6dVE7OQwlIiGyHCnePWV9/XS9Nb4dSmUuH9AQtV2ludze
	 f/0Aat7ST68suSJpLciYGMBbfSQke/ElCUT7ETLsDAvrknOJzKyegEtrM3nKQts9vX
	 Hj/nLX7rJwByQw68fPdC02f0LAqjhkM6MKs2ZOfwC6oW9mYyTDcceBZP2FyrlROWc8
	 FOy44udO3x9Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A273FD9E19
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177214589359.15646.6293831447837123892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f88cee3cc17bce57cfb87d14355f220b50b349a6ce2200bdafa2ed79f977315
Date: Thu, 26 Feb 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772145893
