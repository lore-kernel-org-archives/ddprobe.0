Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FEB1C4604
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728549954; cv=none; b=SCDaWLwtzKrdIA28yV8AvL/EEimvhZ9v4BTu/sBgmbB4HjYr5cnOuocqHaNtHLccWh8q24oJAYo63CAE2BOxjXYbsBP/cJ0PCAktPWrDD8uWAmm5fzoDscOxSnlpRbX7Zb/Xjyn0Ax54ehQxHUhQHbZn6JgGlx3JI+tieRhIr1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728549954; c=relaxed/simple;
	bh=Lw0cLEuOf9v8zz5kVOQdgeT7buJkW3SiiKuEjuq+YxI=;
	h=To:Subject:From:Message-Id:Date; b=kSMAtDKDxIX+KeBWhHK2aHUVZB48gWYulfsfxdV2nvhNyO3+S1OTKIiU9UW6I3EA7Tv7BseVLAASd1hcM1NanopUjBKthM9BMSiLjIEomeKJSfQkw/LQOg5mEoIRlXwlkMHUwGfEi9nNeCp1F+YC7uq/cUHDeUvzbkLgjvbNSd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkRZ9d2j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkRZ9d2j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27BFC4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728549953;
	bh=Lw0cLEuOf9v8zz5kVOQdgeT7buJkW3SiiKuEjuq+YxI=;
	h=To:Subject:From:Date:From;
	b=qkRZ9d2jQhlsMBH9Y3SME9Mj7CUpIGppm12nHkv7hDlxoRfEsnky8EUVM7IN40fI3
	 TPRi3EaiI6kV/ZCrz4Y+JOvzXWRtXw+0WdUhFv+ZADaPl56aVE3jEqL2J2KVMW4y2/
	 NpQlrRpBrvZ7cnIEfIn9OocCH1RHqNEbFEao6xLhrn4fjLg1qgtnS8Fd0fgbw1Fkq3
	 qx+Rdx+POfhleoMLZb57dC5ekGtsCvh88wddUja8NVQpn2qONjrFQn/tqGHyd5Db4K
	 HFHm8CP7ZgQV8/oIoDHH9EGK2Q3WvNFgTrRqKHsb/7AoNMpbmMkoY3N3E5x1RlPOXm
	 qpWXdaCnmMgvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2AA4CF07C7
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172854995364.18901.17624657616706045457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e285bef9ff1e04ff86e2e6872a7171d2b1d859a226aae4cb67edd112a04d570e
Date: Thu, 10 Oct 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728549953
