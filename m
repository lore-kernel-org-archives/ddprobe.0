Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B15E17A586
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775959654; cv=none; b=Q+HrFRFto+8z0YwobSwgTZSS+lkSYHOInhfwS+a1qJShJnMJHtVM2+LY8LIvgEaICHGvq75GttB/qCMeEBEctzALUQN5oFXxg7uu0BIlCjjwDLj8UwM8lifQbEaDJLJFuyj6e/DbrGM/35zR4nFlDzAf2gx2BX9dugz9yVPqEWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775959654; c=relaxed/simple;
	bh=K9pEpcwaj57sOWEORQWO9+nSmBIuN/AWxu7hHLICPyw=;
	h=To:Subject:From:Message-Id:Date; b=enNSGCMKxFpGNqRXOusUy328jJ3qjDrZXHCn0u6ibfhi4JFCEq54GLNvq7uYbzaBCkOX2XZ/VrIk6HuWKAc+5WVNSk4sBmUwM6SWZ6mLBNSrQ0J0InsNfHVq1RlPWWhjs89ga+yqakmDbEJBtt2rPZOa5pxRglcHCqC1h3+YhQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHdFlEk2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHdFlEk2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB67BC116C6
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775959653;
	bh=K9pEpcwaj57sOWEORQWO9+nSmBIuN/AWxu7hHLICPyw=;
	h=To:Subject:From:Date:From;
	b=mHdFlEk2h94kiYUx7pZZeLYEkW6y30OIKs2MVu9E0/4q1uh6ed/idrLLqtAQwwZWg
	 TmAMbdclcaN1tz7cjFsiYoIcTZbl0RrHw7AUvpc78A+FTZ5RV0TRnJJoOHOM2kslcz
	 vVeiA0x5eCoqs7XaWD2ukKvH07okz0KH17zKOHDjMexROKD3qnigPWIwsxDLr9oR5C
	 jAG6XkyrBhlkM2OTOMj17O5CBgio3BZLf+ZsPwWuNWkReQtJ65AZJbDeMM21A/XTrw
	 bIt5aV5HWAU0gzhCloA66uutIqwV7v/byRIRim8witGprtOukOt5veM9Q8iAnPnTqi
	 prol8RfGAYFQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9667F3ED67
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177595965368.20344.9324268337572611499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bece0a03251096a398d580b0aa578634ff2649d87ef0166d82da1005d45cf937
Date: Sun, 12 Apr 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775959653
