Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097263D966
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705934297; cv=none; b=mpNqVoyYDFbHYgOrJOHpchtUSiD1PsMu9uw1oCoVsxb8CjUBp0M75pA9r/8BgvKLCQ2/5Qpk8mw1AVW1EqSHgp7vToBIq64bzJWP0uW+WvRginpreZ2K40mhIQe4uELnJlqJJSydCOWdCRumYBIwsgYc8vyhLeNbbB7TocvUd14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705934297; c=relaxed/simple;
	bh=3P869KxucyQ0SO/B15XjAv+IjIeJx6Ey6MFcxZePYA8=;
	h=To:Subject:From:Message-Id:Date; b=iJo4MayoLwtapvIqrQD54ZYSVhm99IZ9qt6Uk3kWv0P4dFUqo9ux6kgvATDk43Q4DQBOGyq30l/NhEbSvkeQJrFhn2I9pFeQVeb4+Tc16yhQ6B9rIlGLtJZ+lqltTsjNcurLAIWqP9lu20He9KUBaL48B76S+93yUwDMuS7R0jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCEwUqKV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCEwUqKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AE6DC43394
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705934296;
	bh=3P869KxucyQ0SO/B15XjAv+IjIeJx6Ey6MFcxZePYA8=;
	h=To:Subject:From:Date:From;
	b=DCEwUqKVztUd0emQqvllk23ObBalbcr9FPTy2In9JDlvJJ9gPilLZ2ZIJmx9xPYID
	 addfvHpidYDnAglAC6o9pGKkRLHRlfnpN0tRRxC9Ozjeli4cK1KxKKFQmBx+Njsy4x
	 HayuS+ZsrpscfhiP/I6kQEVlxsjapUsjsb0cikcSAGOFMto0p0BIGvh/qgd60dMK0A
	 BnUwQJ/cO2Qi8Ycxma0ky30PI6BiF40vdoPPvEFnoSmmqSbbv3AZlVAxkl7GJm/wfy
	 QKgj8MrRrd6Y4yJRZBm2bkmcUinZlboOl15l3P+bwsmhiOv20EqObNWzSi19Vc2r42
	 XmwksR6rJSRYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E547C47DD9
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170593429637.18966.1101767903106554315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 716314bd8e5deaa32ca4adb444f0dfd1e8e1e9a2a6901ea051e2f2a9f3a69de1
Date: Mon, 22 Jan 2024 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705934296
