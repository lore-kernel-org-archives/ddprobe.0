Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A59F207A38
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 01:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764897175; cv=none; b=SfEZTi6b1GdUmheXCFGmBo05fQQXHe0SJQlLc59eKjIAjsQ6zEHFI3gybzRR63xCgTF5B4fRhj8kXyVI7Who0mQJEpmwrNkpGPJQz3FzFj/i1Vmos3eYToANEU23f04jB3hYmpP/DUK4jKa2L6BEUCCOOHU7t9uUbIt2tl6z0Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764897175; c=relaxed/simple;
	bh=PcghmHpyHMu8CHRXUEFTUY/AaQFv5jNj+aGJs5eqvr8=;
	h=To:Subject:From:Message-Id:Date; b=agdIFjPKFaD67QSJPmzZsXxOgzdgPtdKyhWakAXG7vqlfI4KSgVBkgNOkbZB24cYqnN4Zpa3V4v/wwL/QEZkJeTE74+adnuXwdewUErji7DwYw1O5qjEVCRjuJbYkxb4yAhfFcQ+bZgZXwspfI3/Q0DFGyzWfCkcnmCleLLsLs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdiYbKl4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdiYbKl4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4477C4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 01:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764897174;
	bh=PcghmHpyHMu8CHRXUEFTUY/AaQFv5jNj+aGJs5eqvr8=;
	h=To:Subject:From:Date:From;
	b=OdiYbKl4/EVrThq0zY3WYKXVDh+ybaDm8AEjK82M0tRuXq9MM6FhnYvgYMgzZnthY
	 6GxZyaZjwYpP2bdg+9gDM4vGU4GDr2A8Uw3Y8brzBFoh3dcy6cRKW9S6I5Zm+6ms33
	 LqaI73EgPnCbaPSdIkZx4dPYdgM/H12Ic3jlRP9pF3ydMOu2fZ4KKUyR2ykWBfwdBS
	 lZP9zRO3RpPf4MGuESAnQq8oQplG+jb2xQkfoL0mPujwhdOcFh156xz9RRajRfBDFI
	 Wgny/O35kTaE/nUGP8uGrYmhrPS5HmlAXqiplQoB/b7iUiJBRv6G2OPhySzNBKnoI3
	 69ovvSccVxOpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958A4D2CE01
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 01:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176489717360.24725.1062489670627902587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b79ba53a1e4d4f1f61fd081a18abc9e6d58d460670edbd65789f5efe054bcc2
Date: Fri, 05 Dec 2025 01:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764897173
