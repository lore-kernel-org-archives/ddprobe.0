Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A8A23183B
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 05:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776491854; cv=none; b=G0RhXgslGRe8Gbp+wOlehQpJfNlyH/TXfnyy02n9QpDywTKwvL93mZ2nlnu3Vye5mGYBzeIJrP1WtBiK5k5StInyMVm3hwxu4MuKSobtI6RBkW1Yrr8t5Mqn/QXTkkhbdD6S7UVlTXamdM2Tb7hOiKcVq3aJuyWdSGl9y1L48X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776491854; c=relaxed/simple;
	bh=AaM8XG0byoYW1/jv2USviFjzRq0W57F/rmZNH++VaWs=;
	h=To:Subject:From:Message-Id:Date; b=T70YrxNywU8z21wDu3yRig24Cz/L6HvU3Yibi9MgiR6ONFkR2RmPU4Px1Bc/TSYxVUHbtxfZTK0mpENAYw37yye8pSAp7Nam3uFFfe2SeKR5tlu2fyFR5ewIvO/zor/0LKEw12pNvLgDGzl8r15NoRrTBjb60HpzCD7BG2Cties=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bH03mfkY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bH03mfkY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC9EDC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776491853;
	bh=AaM8XG0byoYW1/jv2USviFjzRq0W57F/rmZNH++VaWs=;
	h=To:Subject:From:Date:From;
	b=bH03mfkY5NWll06wfnNLuv/3Pq+iTUoSlRlXiPkYSKUsIa+sg1ng9dTR5PjQaFLJm
	 1JSpgjp8cqI3ISs1TUPos2JRcjnfC3X75Twaswa/mO4r9OUjupreyVXk/aTO87Ulam
	 wH1rme2vJt9B/9Vsp8TXLJghilUvVL6WRB7eKt/Bv4+nxBq0KqDMUcNGBMGPt/WsVQ
	 xwQ0QtTmWDQibXoPEbPDaWq5oN6WhKp+YLMxeSbvxStxIATIOz3Sm0rnNLH/ZvCygn
	 KuiH06qbqwxXEzHM6oHytTjLvPKLbgjG2KdiZPI9RMm6whDsOBFd98YjINhnX7dPWv
	 aVyrXlZEFFp1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9262F8DFFF
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177649185368.3040.4635141663410820431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f3bd247125aed884c40d4d46c76605601dcce8ee72e8dabd5c69d8fa1a01245
Date: Sat, 18 Apr 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776491853
