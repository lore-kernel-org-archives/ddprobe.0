Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1EC3644C5
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773042894; cv=none; b=Z162aK/rZ4to9G62I0U0lzqzZH3xMW23GAC84/MaDvsx7u3E43RHAPOP9t0vDUy0l448zwa862/I1yUemvkAlBWoo28XSSPsWxLSQwVwLGtta7oR+6V+iYulW3Yf03q1smZgpg6HSYPqC9lqYFGtiJuGHl3VoioyS5dxuiNqLOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773042894; c=relaxed/simple;
	bh=LTQewpnIA64mn13uncgDMXGk6dZXmQHsbgOTWelSUas=;
	h=To:Subject:From:Message-Id:Date; b=egPNJItiIfoc3sDgF4mkSC34HNWWDb+dvRUirccBRg6vQYsuZL6CA+cb2biX7J7TNnbMgFLPjgNVR/z3JLAqz3qG8RkXm/cO82CwMF0y9oh9P7igpZzy4DXRgSjCsYS4OgifSeGh6dAC9GdkPEkCR/COUi3q91LeRx91W5nTfe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSFAV3LG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSFAV3LG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9889BC19423
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773042893;
	bh=LTQewpnIA64mn13uncgDMXGk6dZXmQHsbgOTWelSUas=;
	h=To:Subject:From:Date:From;
	b=uSFAV3LGjUttPCIpo8SADAGjA9Jf+UKCJTzV9RfjI8r/q2HNiDYp+WwN48j82qab4
	 mgpa88WiP8EF5JGKRTk3zJJcxqYsQ5BwJpGedWUs4CHBttgk6rL1SVChTgcvrhCwC8
	 0em51Ak5h1oDXqpN9GuqAzEPo8Nyj+hQFEKWwknhvLW+uYKsf/3xj9973uTIe3ZUcW
	 ceryrPaJreoDgnPs8oy5SHIzg5Dp8gGtSdzbhzPCkX8FoXe3+XlrWWh1QOkWvW0cCr
	 Cx4PHbI/XQLPmEYX6DHk0f+W6iUH1KjSFkRN6Q9+TQAVo8/4rBBgm857bY1BG4y8Ok
	 C2h46TlMOyymQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3B5EF36FC
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177304289357.17227.8873335037622213778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b33b8b1883bbf4eb8ed2bb86efce9a1909172a2c7a681a03f5055f1ef5f9ec15
Date: Mon, 09 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773042893
