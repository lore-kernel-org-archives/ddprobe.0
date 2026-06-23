Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45556EACD
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 00:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782173194; cv=none; b=ouOpxtj+yrmye+XdcEBKtEpvHrjp2pS/igIKNUdtALnx3OLPE287nYYZv7KnjWZZS7QvOycWijA2+WGD9Q6v9cYUP+tyHCzTY111lHX+0m4bRKPS/YigYbnTVqaAvefRjMdARheEvaQmeAeD9mFR8x5r+JO7/oummcKS697Gfvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782173194; c=relaxed/simple;
	bh=gxvW5PkRNZjtJRyvzRREH4XBer453W4EQj/W1aIY4MU=;
	h=To:Subject:From:Message-Id:Date; b=Ck7u0RrTCLoBpl3Q9HUyCGT9fGv7yJtRz34euycN4djpou8Zwwoj46hcTZnGMnkHnDluETxocQiNsFNOVeuO0HusyH0EWrJJi1GZz2HDiZuYMb6gYqNsv8pIJqxn2AslPAov+ZiZ0Nu7CmVLYV03m5PYEXgekhj8BhLQla6+WbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRYuFOY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRYuFOY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A4DC2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 00:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782173193;
	bh=gxvW5PkRNZjtJRyvzRREH4XBer453W4EQj/W1aIY4MU=;
	h=To:Subject:From:Date:From;
	b=oRYuFOY8qhVVSxc94vz2Nup9LhduL/Uw6YcbVB4SXUPUb96b0KTUmrqFyzBgdby/S
	 IqgsWsPOfEMaKXrqQmuhwlA7dqmIYPc2W5MCUat2ZCCM3HBdqhLljBPw6N3eVV7eSv
	 A4IEE5w1Jxk0LQxZ3KA4uqY5FtSm3kMRfmBZru9CofDRe+a2ByrDOp27zy4VqAhiaZ
	 wK2UPIhr4Vr03TelL9Cy9US1I0YfSMUJxbXI+aFKAWuwEUPgiVIH8vLzcdOkCA4dLe
	 IO/yulYPoojO1D9YJooTBXJoUD0pJtZ/gVrVhksNl7JUhhX+QEvcwc3ry3Wwr7nEkV
	 Cy/mqcCMF/e/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A0FCDB46F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 00:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178217319371.31400.11317923661155602485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df47e444dc723ce1f47caf8060ae8b5bb22ea7bb13d38d6fcb2396f5320d5bd3
Date: Tue, 23 Jun 2026 00:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782173193
