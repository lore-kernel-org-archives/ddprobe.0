Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 876323EA967
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791444634; cv=none; b=kCREig7FwRXRQjtvWp64NfkEkGZsBNzRwpOzlTQdgMsLmvQtjw61vj0G5+fqiMO1QIlYPV/p1JtV6fpEPJOX/lN5SFVDVT0/PwdYzAfXehBOmJAAaCVgpxkAOqCApwAWArHP08JQDpmGOA/BrFV+crr4DGv7zFy35rxYlrc8FiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791444634; c=relaxed/simple;
	bh=kKgefJWJfF5Gw93bvY/uafW4EMLcYN4//jUodOEnkWQ=;
	h=To:Subject:From:Message-Id:Date; b=qwE6u3fqjSXqVxBIYup961N1HFIhCuX1DFYD/6P5rJ4YedOjJChZ5ptJbTVtpVTt0bButuUObgEjJaYZWFJFJBaUJhMSIZMIbZctPzejXq+0vkHDfMVLr4+kL9RcKY2/4Atx485w5IbyzEl6Evulu+EbbmGtNdkzqxZsneXyWtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XdvWCZ4Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XdvWCZ4Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D395FC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791444633;
	bh=kKgefJWJfF5Gw93bvY/uafW4EMLcYN4//jUodOEnkWQ=;
	h=To:Subject:From:Date:From;
	b=XdvWCZ4QHe7go7R3SYHg/wprjjOkqfWC6+GiF9o8r0Jk2BdxRIqsgpcGQdMQmQB4G
	 smfMbmFNSSbFAKKgAmqt2RGj70Oai9lVNXXTfnrO8/0tTdbrR9/nqjPm+3uX7gD6FV
	 BeOBLELm6h5jE1IlXIp7dIBD4niGYb1yCC+50qa7AUfskbN6knmH3SnG0NCDcq0iW+
	 RpaS8flTwOu7w6cpYrscQRIHYcHhNvWLpSzGTqMbAbfVEYm9h7brWAZkwb8vZszKNz
	 /MjKoA4NEnz1+ftby5MIpIx2/o3GsK4NWiIshtHbZBNaFwF00vYcdfgtC9/2kLRplQ
	 J+7HOOC5/mvGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAC7CA600A
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179144463369.10413.3878605792760783635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab49ea7a67232465efa6f88ad681125fa6e5f0623e613b8955eede18df3888e4
Date: Thu, 08 Oct 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791444633
