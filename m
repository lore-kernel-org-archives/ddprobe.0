Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27773189F43
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748202595; cv=none; b=b3pHSRNwMkTKnpfu4qYwkx8Y71s6MN5dghDxbTeZCkBH8znDNNOhmLMBmTlLIF1nb/FzmYOTdQssQ8lWjC6iOOrYtrFNHug5I+99aC8aE3UDh6KRETX0kkkVcDt5Bxu6h6Ve4xxjvm2/mGrekPEQgW4588zZtqlWSXHyyBGe3O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748202595; c=relaxed/simple;
	bh=fqUyDlGivuTYHHTyHqe70EiEipc734rQe5+dRNJY594=;
	h=To:Subject:From:Message-Id:Date; b=dw16xm6Edgvh/pmVT1522sMApG3IexWeRFcTdGmUNxG965nZyV/50POAOdNm+BeQJ1P/uSWbcoOK7Zujx+hVR9o757sc7AqquyiUDM/IPtVZNLNKix58l1ZvKVQnJyX7BX8KI3izQYwkxZu3FWQFzcXrr/eofnelVbePq3UjwaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tKLjRZZj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tKLjRZZj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0474C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748202593;
	bh=fqUyDlGivuTYHHTyHqe70EiEipc734rQe5+dRNJY594=;
	h=To:Subject:From:Date:From;
	b=tKLjRZZj1GY9XfBdw1pXfFyTM0Q7k8PLmah1dqILbIw2W3ecXmcLh6JG0vg3Q785E
	 loVXsx1djIOR5Z+vcGDf7EW/yIOTz/CFIU+kdaqiEVtNYp8AZzwK4JkPOFetDOqIL2
	 JflJYZrO+vDUJLi/6UruHruh0omHbB3RVaSC5tCgQiZStfTlw6WTvo79z5dIbXABSi
	 Ro/ijVIofQL8ZZcAEKeFX5Vt/6D59Kt1GLmwMbaPf/WsXHb+vk5vQ/d8wEQlh824/5
	 3K65+6IBmKmN00AJFwwXwdXKMcRJY0opKyL6stBMjxB+T4eWJvrdpDIA8Pfx2BBOcc
	 ZSOpF1tj1HvKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3ECC54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174820259357.12999.7328534279070784671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e627a44625971cfec217fc89677d968b8c7c29c73b6f21bb1f5da44d19eac208
Date: Sun, 25 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748202593
