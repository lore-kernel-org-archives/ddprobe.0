Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B213A2546
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777849054; cv=none; b=jGJabRQADH8uO/ohBVWXgmVmjmWYRTMWrK3vGkNWD2RVRC7FQsRhoUBoS9Z/6qJTLiloW4oUJ5tEqqSsXliTiNI+CcoOY9Rdmr1Jr8r2VQZKBypK6IYM+aF5MT2loB7PVgAUau5EB95JfddppbT6Moxf7rHCIYcXpMzGN5Btq6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777849054; c=relaxed/simple;
	bh=YSDHX4LdlHkbK0Mw6LMy4TWndaMvqDYQccbpLYLZpsg=;
	h=To:Subject:From:Message-Id:Date; b=qEHfegIibeK9MrGKzo/U38dM9E0SsXEOJe3iM5lf+Z+EDFEzXZOAokvDeYbXpJ073otmRbc8fEOqkO7p23eZbSVHAbbo+CzZGYfBDVip2hRJB9XF1A7gNzuiLVWQ8unMUVQsocS26aITi4OmwfPOTJuqrDhVO19ZWP4gWt2slrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZdSBqf8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZdSBqf8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEFC0C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777849053;
	bh=YSDHX4LdlHkbK0Mw6LMy4TWndaMvqDYQccbpLYLZpsg=;
	h=To:Subject:From:Date:From;
	b=QZdSBqf8S7qh7iywSxXyIt906sH3ntf3UHUPzIEyjqg0onGyPuDYiLlmyYRQaGn8J
	 jBdmERkl7RFy9otdTaEbN1k73/jwSyaEpvxNkPq1whMDN7qZV53w8+jFPpOQsAoTtP
	 FoJPaowsY6EtUYqcQRv7Wb0rQA/Z8XZjF8TxMc9J6FmnAhNtGoX6OHbYp147jqYjNN
	 Z8rMUXkioIIWEjgzIpkWtglPLCkgE2k/DHep55/4H0dar8iIqp59Ip1W8bSRwWwkxo
	 ys+upmbTX/WQSo+iBkQui8cDxUtPoLpwPYS/8+1tlgEDbUhh8EdnRC/lYVJHhz7Dyc
	 a2yQrlwb8+trA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0234FF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177784905368.11040.9421293338143489049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 156772204ea77d79694960a63b98ebf6c01819d2d5f4a7c8db00a4c02351044f
Date: Sun, 03 May 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777849053
