Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BAACC121
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 03:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716780863; cv=none; b=i3NVtcq+P8m8OLc6L59tgLTMgNjMRQphQ6zfwqBAGYZ0VkE89arvEq9jvlrPhoMPGz9ap/h7/LqrJoyqlIEhvtGZL3VBoGiEowZiV1M4lf97n3CfcE3iLkQZD2coUiW6yBFWU3MsshTZLiQ4cFpQ2S7zjxAPOjU0JUl7notnFKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716780863; c=relaxed/simple;
	bh=PX6BIzd+tu7yGbHT87oKiWdOmQ8gTBIY9sAJVdue+Ug=;
	h=To:Subject:From:Message-Id:Date; b=elQSN5dC3/4cG6OikUsvzK/DBHUnWO7uTUWmPHohnsAAbrlyq+Ux1Y/TWPDczUY5UU/Q/q27G0zjscWFXXw/TdMbN1foVCznMsyxajopXUeBr5t4pSmc1fXnUlVKr45FRQxz7FxJlrP2uOwipfg2m+aXX8FEU3mg4+Az/uUMiNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGOMn2ki; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGOMn2ki"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3576C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 03:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716780862;
	bh=PX6BIzd+tu7yGbHT87oKiWdOmQ8gTBIY9sAJVdue+Ug=;
	h=To:Subject:From:Date:From;
	b=bGOMn2kiI61IjdOqKpZfjia3Kn4qpTT/G7vzzeuBqAKk6SIurQ4ZeupdwgxXOBG1B
	 1vezl1nxrtSLSMUpVGr6C6xeFG1Vu/Yhj45gnQ340n0DeRpkTNDlQEHwM+6kahC5Ji
	 hC1X5Tszzack8wLko46ojP8586dgzgziIid9ekZcV+02PkAJ6r+E4bh+lHgpW+rHc2
	 wrTbdpqqFy7jXbNG+K0w1ZuEw/14xM272/iLQukYK1ZZrsTP+pMLHTIzuJY2l0cS88
	 8WqM0+Xw+evhlh/0SG7ZuDLv9LPxrFRCP07KiMqE2WMk38lZzB0klhazUzu6gkqgjm
	 W1BbhGuxN097A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDF22C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 03:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171678086283.5193.7514321294026864849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 614f3b3945b88d6efb05ceead9daddd150c7eab47bf377604574a414b385a559
Date: Mon, 27 May 2024 03:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716780862
