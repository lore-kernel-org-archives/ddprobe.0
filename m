Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9F91DF728
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728392154; cv=none; b=q6x802z7auWREyn3P4vhRfTnSSYksoJIH8yTCArb9sOXanf0WgDsnGHRqe/WwDFV9r81+WkLnJZCihbhD/ZUGzjiLfYEZzFDtvTo8uQ+QOWeYOYg3kfxyyufHHcOmdL7yweZDNpP+EmNy+2GEPOyoxZzjWXYz7xNzsDimHS3Nk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728392154; c=relaxed/simple;
	bh=YW7ER+0K9H87IXBwxfZ/nJ148GvdIhteFQMlVZyNqCw=;
	h=To:Subject:From:Message-Id:Date; b=ocsPmI1lzFZRxLG3Pu76yagJpJh24znBajKzy0c5auHZI8TujV1owM1USADmiJaMx+LrRMxBcTMHT4ASTLWdnftVTOK8pQQLI+oiyeqGdLgbkV11ZhiyMTmrtBTEziX0H6I6UR33PkZhcnwYZPjSgk+/RzwMamUY8kS5kRCroYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhakodLc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhakodLc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2CA9C4CECE
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728392153;
	bh=YW7ER+0K9H87IXBwxfZ/nJ148GvdIhteFQMlVZyNqCw=;
	h=To:Subject:From:Date:From;
	b=RhakodLcGQrz+1TNfzgoSC0B2G/eXxQH4/k97vK2ymDcKBt8eOuRKw46ZmcugyxyY
	 Ttv6+lhDk2MKOgPj73aIRx4lz8vSbvo2szQoIcybIWQImY84G4U91oPPesyd9vRvsK
	 ovsG0F6ZQsYpiU1AOvqWnUwJPsm+lrDE2M6qbGL4fPIrq9HQAO21fMS+TKtf9RVXj4
	 GU5tjUZPwq44oNP6Pj2vbG1H942Mj/E0kCP1OGwu1Uoh7NmEz3GehMu4LyeC1z2dEL
	 MKz+wzBzcLHUBFWOfF21gzybN6ifNeBgarDBcFpOXuoldqdot/x5qIuZex1712v/h8
	 b5sUkejDmgSMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E82CEF166
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172839215359.8446.10147866096180506136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e14422324725ff5aac344d2ddd14bb3eb59b25fce5c31b4993d234aba0dd435a
Date: Tue, 08 Oct 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728392153
