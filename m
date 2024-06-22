Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595B02231C
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 04:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719030143; cv=none; b=qsHWULi2Psk2VUzYkwiQae2K4jRx3YOgPNh1NeXM3S2IqMjV9GoQMdGq0/XxFQl5t8JUYBPyA+N/PeSA5m6u6kMxsy6Vcart+dzh8u4AZKBfZTHuwADbhqMDxUD7SaaPBt68i8YgTctRomGTgMZcidBKe24u82zo/WhheUQuKNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719030143; c=relaxed/simple;
	bh=IysWBYmtTlJQk2fKma/IwTRMavZzrXviMUIXqgQL4t0=;
	h=To:Subject:From:Message-Id:Date; b=t8kemMxKXZj+F5gszbQxHvq4d7pXg9sCluvBmzTmb8tPRXhyNqV1eZDvVBcdjk94OgDEMqy/CTEM2pmuyvryWujtA4Umb2ri/Csy75oz/meC0uk6ixUGnsTY/AZoVRsQ4u0NdrredyJMnJShcXFrvGQ0F3ej0ftUq20DZuCS7+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EexbPXJ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EexbPXJ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3CB4C32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 04:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719030142;
	bh=IysWBYmtTlJQk2fKma/IwTRMavZzrXviMUIXqgQL4t0=;
	h=To:Subject:From:Date:From;
	b=EexbPXJ6VgMazu+34ARwCOUjiiP95pBo/cYOPdKIvIbdg/TwFkHvd7Rm7ty10zUEo
	 NxxPnmVUPRRqBURlWHhONB311RWouyp9tyqeHTrNYtRFItI+qLqN8vpQ3H5EzY9Nkq
	 BAZsmA0uvElXlIjbNEC9vGtvurIasHBBxK77dv+BXU6Z6x7o0kGJty58TkT/bgx4ad
	 NdxokOYs6R5JdwSHIDrtEBidm8kXagYP5sWHi+n/F6qvqDWdOeDSWiA40S5N0WGS+H
	 piEipg3/l1btI3ciHIy06OodhkK2U6xSFPtQko3+VIBhhiSc4dbcDlkmaozDPl/ifR
	 geCfNIGXgCU7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9A9DC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 04:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171903014279.9285.5349967741778431314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c12bb68ade3af7c45b4b68ed65b34c822d671a03b786eb26ef473b68db2b20a
Date: Sat, 22 Jun 2024 04:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719030142
