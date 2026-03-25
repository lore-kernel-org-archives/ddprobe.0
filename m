Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2059C2459EA
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774465494; cv=none; b=POopXkSHudvbF49Ii6wbOTtj+rTjOEksLIe40VNBOPOl7i+WhTnkcGBIsV3+MENVZXY4IVrwsLb+JMj8vabp7htkTA4r5cHkxXvdnxEp1C7J7aiMloQGVU2wqT8+6qwO0xRheMg2hMQUVUtWKzNrN/e8XJ3gPi3bdnw+1Q3W+3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774465494; c=relaxed/simple;
	bh=LWCI667EI85oZ3tj/dcF+alm0wrFqhD5YUIHvvLrNqk=;
	h=To:Subject:From:Message-Id:Date; b=r/E8cOY3qY7AFYLib8t5eU4f/FiypK2ECHXwQkDKhpXiYPpdgZ+/0HWEYbRemyHkYpaJAvVZusQEUmsN8See00Z/TYGj/ZtBYJjL6UliBaIpuhjp4KJNYa4jV0ZQrNehqJXhaVUM/s9heMUUOkIsBRTs38exHTWr5y/hpn8EmEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oid1V5nX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oid1V5nX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5865C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774465493;
	bh=LWCI667EI85oZ3tj/dcF+alm0wrFqhD5YUIHvvLrNqk=;
	h=To:Subject:From:Date:From;
	b=oid1V5nX1RqWPQ7nVmYjc++xH+5aTHVSt7pXsWhHEVRHPaAxkHc5FrcPQhb/aVRz/
	 EcG+ov4CjQuVqCnv72VApb4aB34SxlSTaoF0TezOpvq+8ixdFmW89NCE83I9V9VpDc
	 MO9/OgUehzmb08yuZ5pnjI/ysYRY1KPZiDQaCajZtbXnfmGov3Xf8e8KyuiKTOUImk
	 DPgtF0LlaisHtv0MvlrhadjbYGT7Ic8EVK6yX8PW3vnJk1rej6Gb5MAncPPlXW+Inz
	 rUK4dSmyqI6tWp4v31V7yInwIVkZ0+7IkokUtkn9fsctxBLc8rq/7C9ZO1PoFf8PkL
	 BOW5BFEQyOZTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E59B109C058
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177446549363.1409.12734547835375830246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7238e7955f826dc1b3a8612e2668bd9cb9ff233115ae15cff245dbcd23b0a281
Date: Wed, 25 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774465493
