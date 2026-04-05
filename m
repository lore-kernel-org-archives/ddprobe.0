Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385AC3446CB
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 02:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775357134; cv=none; b=KFse/WIwoDAmlqkM0PTq7UuSq3+5oAeffU9V0xdcVttH3qxXPgT6cs2NL7keOK0qoo/ObL3j6TKad7Vu5NjwlV5dQ7TtcTnx2Kp7TRW0kdjC/7O2qHsCrvCsYHciLIHY/oqeyWrZGSO2q10IlKwqvaaHNZ6x23K4PGY8WIBS/hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775357134; c=relaxed/simple;
	bh=z6sRUSXyt9oqaXlZQhSPjoqW+i7b4vIgk2BzByJy75g=;
	h=To:Subject:From:Message-Id:Date; b=EAzuU+nF/anaH1VU45cviZfkzcM0sWQ2uMSA7RltAI9msB7SsMDAZPqt2OCB/xz56vQzQST3J9zuzPPiyO8yD3poOSocd+scjplO9sT348ngvvat+A7Mp+LV4T7NhVTTThthzKrlSlI4fOC016084jqkNzOGQYdO0qQTavt3BwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5OLs/Ng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5OLs/Ng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6788C19421
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 02:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775357133;
	bh=z6sRUSXyt9oqaXlZQhSPjoqW+i7b4vIgk2BzByJy75g=;
	h=To:Subject:From:Date:From;
	b=k5OLs/NgG0Gp21SVi1uLD+OaRdVi/dWZfwC+QtrfhnX0MWFSzRQmWIFtZcxI1vvP8
	 pUXksnNSGAf7Q/7OOe+2afwHqki7ahGD8AbgeDocNbiaqFSqDwH91O/VLJcZePLmhT
	 qIn0DxsrZ1lo2RW47QtphGTKsJC0eQxfLGTcI5cQTENeu5B4fWzQMzABWuftGw9dMz
	 bjmxtDp2s+qE5+KGoMq/7ZG79XciRr2yWC2LMsZ3fe9PuQjVCR16GrZIn9LVmz9Ho1
	 AkTGUsccGoNkN2TpDK9Mq72V+Ec0oWdLErCYMds4XkObUZYtTbGB8uS+t5poWbpZGf
	 9VaQdP0KjIcLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14C4E64001
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 02:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177535713368.486.17880341455851195363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a22f07119966f09e9d1c6c16f35f99c9c41ed94e5ac836320020b105d7653822
Date: Sun, 05 Apr 2026 02:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775357133
