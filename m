Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36165313E03
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 08:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775464534; cv=none; b=PPrFWwYZXvytpqFIzt+xmnUlf7HzHcse82eHXv6xIOiYQVlP0qddP47Sh3JzoGzirgUrBQyAL699BIFCF+w2+dij6JWVp0tSFhHn+w7P5fAGL7z/zPE2xOoHjOs+MYuckl9gbLP/lPKOl/ODdHfAD4FMOsCVBVuh+jo97m61ivU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775464534; c=relaxed/simple;
	bh=H9DkDNAODyJq1H1xTU3iZitnbVjgG57dG0c5xYuuN4k=;
	h=To:Subject:From:Message-Id:Date; b=KXIRMSIDNP3tJUUtiJfa9MI/dMIGZHy6GijTXwtQK/65vK0YYgs8BpjsVRb6tjBep4FH/diW0bJkP+qx9z6+lNXt213NgTM8Xer+QHrpKuUygt40N7C+YKitWK6lbEHBV2zW0OXJkL7ePBiiyZz7eSuIeKsTfjIyOgEC8XS7nRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cv2E2OtW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cv2E2OtW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD4FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 08:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775464533;
	bh=H9DkDNAODyJq1H1xTU3iZitnbVjgG57dG0c5xYuuN4k=;
	h=To:Subject:From:Date:From;
	b=cv2E2OtWdx5twguz9r1UXAmhuOwhIQ6iBpHqjRcOZgOuJbE3Ul9CO7xdWYTwhnu7s
	 Tvf/ft+crlXSr8lXae3vDPbQV91XmcDfJcjrACYy0z/r6Hs8V8kX2CA+p9IkPIdQTp
	 0zvfiaum1VhAnHrRLf8UWzWuQNJcRZn3gEH9sBIcPpVnsCQzNC8+QrCvQdThexW0Kn
	 3PDtNWIfyxsQiqrYsqowNoes+60BrhuDY6O2n1zviHljkQvq3geB1URlcnZdL2q88u
	 Oy2DQP9StMhpyL3FupIIVZdDFDpNNa5cgBXHk/MrgZGvbUtyUiaEm9FUY0QZpspR4p
	 QcHK49RVoB3jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1DD2EF4EC6
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 08:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177546453375.18816.11253990556079939130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2a6f42b41a560eb48a8f882c35fa6a186f00add6b88e03fef9710f2897e5724
Date: Mon, 06 Apr 2026 08:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775464533
