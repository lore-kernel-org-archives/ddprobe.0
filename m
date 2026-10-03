Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A474175A7B
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791028234; cv=none; b=d67FTd+PXfzNjGBg7F94m6mQxf2dx5B9Qzk7ed3VZTpdQl5xeP5go12topKKWmOb56ZsFVgdp0YZYCSKsujIp0av3WB3P34F/DtrtxndMkruL50NO8PrIBzGLF7kCA76zSKXymTx/aV/OFejvYZdOlbRRsjdcLXiAsnK9STKCvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791028234; c=relaxed/simple;
	bh=fE8Mgx7Bg4HWGhzMAnsP1G+Mkp+FNJJi/Sgtg67mRNs=;
	h=To:Subject:From:Message-Id:Date; b=mutqwkn/25m9zNPM48+YJEQKMXL6d4hsiVYv4m/bZLK20J/mPNWrOWrX/G4+OZXd3Ko4ZtTSjtI77OKe1tLnT7w2Ec9kb8VBoS3bqF6TONji9VjpTDQleN4e8EG65v++H6ztTj2u5BOTcm1UwcrwoV5EmbQ0fqtwUB4DTiPwRXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EztP7bU5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EztP7bU5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5058C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791028233;
	bh=fE8Mgx7Bg4HWGhzMAnsP1G+Mkp+FNJJi/Sgtg67mRNs=;
	h=To:Subject:From:Date:From;
	b=EztP7bU5mpITld5XNjhTcn3TrfS/iOL04i5CvKLFzvw74LajpRtzpYC00N30ucK7F
	 aYi0uwL0xNGT+CLOC5TyAigWVZ1ZNMJIKxfH/62nNHRjY9Bd5iC4atmu90VRxIpU1k
	 Q1kmgbwHC1lPmjnOmZ3R0cNVLy1gO+40HIn4WQZFN37u5eFlUNe2et+z8dlgPSU2i+
	 I3gQJ6fDILg9M1w5Xcu7b82dH8ILwX1fQnbnlkAQdCwnsTNybgVZEkQ5ug9Q8YGNEa
	 3DQD0kRO7KjgEWgJU6CT4jxPILpNaWgAbJKDmfeVL3/7Wp0kZIdZxMqwjm5yL5tlKP
	 sEqPvH9E5XHnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C75CA5FE3
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179102823368.24676.3859735268183020929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 971f20e8fad453226fa7d681ffc411794610cdf6b77cd4c3b8eb5b3080505e37
Date: Sat, 03 Oct 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791028233
