Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1ED0410D0F
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770304434; cv=none; b=D9FY8ss6UHXbqYLWRed+vXHSWZKiBwRgJAjJpfs5IpJHlDWd32ft5RNg04lP/y+q4wREh7/AMOKpcw8XF9FIV7kXKXycgn41ElbqrSteb56STx3ffej1/9Fql5hWdFWkRUGvGC6hYNocCBxqiZY/p3exGfVQM15B13qPhPG+ass=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770304434; c=relaxed/simple;
	bh=2ikYlkPtBxfqYf+ALej8C5jeA3tFGEnDeK1tKb3DHog=;
	h=To:Subject:From:Message-Id:Date; b=PJik2CZjwC/eyxe52n7KejrC0ASZ+jm+UZ6N8QekLpoQESoytBs14CjrjTm/Yd5NFuq5Kj3t+8dPR4bEfFpSvhDZvxxlI2NHU0zJIkVuVx3/QUWvkcSgBpx7lamBrhH08fjGGJUUY1TOAelwv7NwezrgmwOwv8V56SLtFeZcam8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjZayDGD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjZayDGD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86E7C116D0
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770304433;
	bh=2ikYlkPtBxfqYf+ALej8C5jeA3tFGEnDeK1tKb3DHog=;
	h=To:Subject:From:Date:From;
	b=gjZayDGDPKwa6OXNu6l2vxFTARPqrDq1lmKAUCRsmOxBqAvZdE4tqPgf6GjI/K72b
	 1/qqtm3bAOPvP1gyyPJwyj4hOGUdxN+VIxpxH0yiOldiyFb/oEdSJEJ3/XusozYYEQ
	 C+E09/aTeHIXq+mPjSIDtMWxuW1WiYDUKbkBLxErQy4dgy/qJJsfNkOXGk07GLnlNy
	 yI4v0rdo897EwQYJ1OAk/eRq8y67CPsESAFUOGtpobdHOitD2q2ziAm8nETL02LiFU
	 4z73cYfRaUAG3KJf/eaITdvzjuOWWcmtqWyCG6AEe+v2ei1Z4lyVFOgftdA+s1V9/S
	 zaqB3Foxh+m1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C06E83F1F
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177030443359.16451.5032782989156394075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa70c3a39b0e0670eb4072193608956314213b7bd5fe639568df11841a485b5c
Date: Thu, 05 Feb 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770304433
