Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0198325771
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768053834; cv=none; b=IjRrS9eevaCwy1wAidJFyb9gX/mvgmbbpyRjkqjMenFg5VGi49S8QUTICAterZuEY2PEtuSoCfJKmchpqKKfNC6i4bwiC+IDYz+05OoOZ+l3jXes5WJIKh7ZiCVE9tvg/zjaTGrQQWGRa1f1KkX1Da32vPvrUAnR1x4dEaY+208=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768053834; c=relaxed/simple;
	bh=D1yJcgVuE9zdgawXHvHHPrK8R32gNrYg3K6d5oBY7NA=;
	h=To:Subject:From:Message-Id:Date; b=MacV8E910q2aNqo66xPczXAFmLvuohNZOuvZN13INQ9aLBzmUk+YVh0xnwiLPPuz+REafGWYt+dtx8iQHQDUDl6CisjO5ZA2CYoQGHqtwO8cv3tQjSLz+5KBXLc/0gC3OvK78DhJM4bpVkcYDVKmO6Jp4FaOI9FVBvXobfJe7a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cg8S1gER; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cg8S1gER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A579BC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768053833;
	bh=D1yJcgVuE9zdgawXHvHHPrK8R32gNrYg3K6d5oBY7NA=;
	h=To:Subject:From:Date:From;
	b=cg8S1gERuWDb3Im6EzND49IkqEL9i3RPZToMYLu9CTXKkzGLT2CyDDZobnjDMKyWS
	 h/dpF8S/Tyk8MRQB7fgwu/PKjC6sDf1KiP6UELqQuzjLeRy3eauD4LTl802KKh5jkZ
	 CdS56xXUwE5XxFt93NeyAQ2wqw2RWPeeXtlMuet8iLXKwPru/cq+gQ21jjOnRXLUFF
	 7pTkpfEebeHG3a8VfL5QM4VJVGkMZY4/gOy6a0Twx9XhWISx8QWA9nOddVkmrTxZzv
	 DRV+hzXjPO+l+vZJnQ25l9r/h6ayYLfVp8I6ierMs5wf5zcmXxWyHOOhBZg7A272xZ
	 6N0il2SJ4ZGYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922B4D277E8
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176805383357.24566.15833348048244958861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e046227818373cf88f1c771c4cf2a5d1a0369e03b2e9ef33c1d7507a095a7423
Date: Sat, 10 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768053833
