Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D01F33987
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758587994; cv=none; b=HnybA78+tLD6TkyoK+U+qhxLNjT9g5g0E06PEAtEy/+xDUE44f2E6T1RknLD50VMIqUxRGZVPB990IcQsTlpkC1Y8iyEoTOUCKfVL5wpHLZMrrrJRI6H3ummput2rwiQ44/FoK4qklXP8/S7F7vvy3cFClSbPPms1yvCDBYYA9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758587994; c=relaxed/simple;
	bh=+aajdsD3fwEHKWXrW1q+tDESEyUuktlDwIr3iHLxuVY=;
	h=To:Subject:From:Message-Id:Date; b=s4Z8zifi8kC8vSgFrNqxqz9Md0oI9yvsGI0Wr22I0HZHnMEwu2mj0gq1wOn/q9DpXQv04EjuZfwYSD7+2wDzvkuX8bRA1XFJ7oRxF4xgLHK84eiZBoc6crLPAhPSGSwnoHtAF2O88o2txXrcxJ4bin0JSnkDEicNIBuMrpoJ9Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOo+780a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOo+780a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A894DC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758587993;
	bh=+aajdsD3fwEHKWXrW1q+tDESEyUuktlDwIr3iHLxuVY=;
	h=To:Subject:From:Date:From;
	b=AOo+780ax+/r5kJ3kDTutBJV/A/XIgIAv7TWFRA9wSmoePv7hHhbDPJs4o59hMTsj
	 vVsWo2o37NEjXg8W78GRFXiK0B5g/RyQ90X0M77ONJoA5PehcwYf+puT3/Q3HnX79W
	 Xl4m+QTeocAOBt1NtueexscLUN6s0BqHNJ1xIc/XxAFsJ3gcBCN0VZ9ZyWOIzdu8FB
	 3xpqJCxvQwoXXjzKBz3tfffaSpF1NyrwWK8Tbf1WD84heJ4PtnKdolwAmJ+uTiPEOa
	 Ha+rwNsQC7meRm8aJD6Am7bzJHM35dwcbpK6/lui5DShXy+zb74ljRmPoGceAXlFX9
	 YWXNHOkDVdz2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96764CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175858799358.15623.5611511674749393322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcf2aa1ad5f28950ec358784905ca3438848f1ee1959893dff200070d2354f3a
Date: Tue, 23 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758587993
