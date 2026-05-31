Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FBB7260F
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 01:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780191874; cv=none; b=P4Aa38PN8za32JpmHg0ufdpamLiBbD2DLhIOrghisN0saMsuwskI47qL8qWtiOUcDC+yr5D71Oeara4RiowDHw4UcxMWA5n/jVDtzSHud39+HRPjDT2OJ7IKxA6im5uRrVfS+MI6stU2MwVW+gHmhUg79u6vaPR3RZGfNzAWVo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780191874; c=relaxed/simple;
	bh=tcbZcxwgfoeYWhJPIiG3lppByQv3ftqT454IY2xAHho=;
	h=To:Subject:From:Message-Id:Date; b=AIJcOve1CfXZRS0o7jvgJlDtC49wb97mxc3Sta+ikyRdhUBspS2cxQ62scYpTizCK3R0bszaWWqQvwQuNILr6agCtsIqJyfs+qSP1r+cNBAO64M+JvmkJRB48oTIrSLD1vlDugcu87k3rZdplP684FWhoALlFWH+ZDUdl9D7LCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUlHiaez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUlHiaez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD2EC19425
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 01:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780191873;
	bh=tcbZcxwgfoeYWhJPIiG3lppByQv3ftqT454IY2xAHho=;
	h=To:Subject:From:Date:From;
	b=CUlHiaezuMjgU5yKQN4R3w0J+J31PQI5t1rcuwiO5d8Goq5nHuwIPNJeihtyQZ0LM
	 /kKKi8MX3g5zk/ufwTIgfzYGe+U36HOh2rT4mVCYsM3+yu7Ke0t8YUEFLPLbbPZicF
	 irfiSnLstBLyMcxDE+/42TjaPdNYu3Lq4xTNTz+NK0Rq4vtDWcD9xpSCwHtlMS4Amx
	 EbgoyWFrPza2OZKUBtZz0gVTdvX//dHJpQxhXUNiwBD//StFGtsPvGkkhhE1bYhwmx
	 tJmV4NQsjD4Danz4wDNb0zUx8a/czdS0deKv4UoxuAylWgag4ljziYr59OCQT4/kyk
	 JyIdfDhu+SWFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A75CD6E4A
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 01:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178019187367.30937.4052148448119321564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 632252e6977a3ea5c4661f2de264a877b2787fa4f6322819fd25529b96bb6962
Date: Sun, 31 May 2026 01:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780191873
