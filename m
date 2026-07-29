Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63878481DD
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785360634; cv=none; b=et23KMSQF1kCJhMloTquKD6VdRXxhmPFaI78fkI1Lp+NDvyBNlytkUY/1sGbYTYOMfISzsIyzkFUQqpw+CEXmkmqb+X6Wkl0tlPsUcGRHsbvq7/U/NstlskcHOtXBCOZgn/JYbCm2QlNE3lvGRcexWQ+vs0k7oVnIq56bK6ppp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785360634; c=relaxed/simple;
	bh=/srSb8jyn5mRmlGQK9K9Qu/6WuSk14g6amxd0g2FqOo=;
	h=To:Subject:From:Message-Id:Date; b=QZvA2ZOv6jFYxd91alX0FSiSzu82Tv+sOy1ZROy49fKmb/RjX6d2yzI8k7tKlCokwXwPqQ+kjV6FFXPfedlQtQ/ixZpJlQPZStAAqNYnQz0uPwv55iLeEZBhEM4/bMB9HG6oCbSJqQVRD8sxhPPxxJ1VXxvnGbGDZMvaiBWLVQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqD4sq/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqD4sq/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E248DC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785360633;
	bh=/srSb8jyn5mRmlGQK9K9Qu/6WuSk14g6amxd0g2FqOo=;
	h=To:Subject:From:Date:From;
	b=kqD4sq/33UXFzpMXTmNtkqRfmVvZt/QBh2XNNWSjzXsydeLFRQsCrKkihWhajRZ12
	 pw+YGSdA4bfjQ9TatBHZfCym9148NWxpUHNnLTog2ieON05xwIjFwXLXb51ot7sv1y
	 TknR/39xN01CZCdHPo+uzYop1QjYL19G5rpVfQZURM2AFaw/recsa5lIkmobwGCjdv
	 6OUMcEyhYT4rijm4e5buQJZjsQUoDsqjf+Yzblu/LXb3fzPS2kBGNHj9ORH+1aK34Y
	 hVWf++cFp8TSXeX6Fk6vPGdSLnlwXqeFEY2X9KKKd3sstk7+SxLmO2xPrFbMq4Klgp
	 yf5QKVprCfK3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD114C54FCD
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178536063373.22217.9665379995272217075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da79ef768e12b7b07f6b1ec687f84490384caa082335aa35ef354b96ab14a665
Date: Wed, 29 Jul 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785360633
