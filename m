Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BEA13B7AE
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 01:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783300714; cv=none; b=uNfrwf2LOXjhJ1pqscJJHjdvk7NksKKvEvFGh8uzlUXCUfzEhu3oKcHqe+rhmzqKLGKt58nKH/c/s39R99RryUhJkioxaozvqj7e8eaQ/H/1O4xvuv+spGDE8+QM6K0Iqo7hhvSoitNoZL7t3HFBIMf56ReBWHLjKjVnAPguJas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783300714; c=relaxed/simple;
	bh=PjDdTWeIwDT0/guI1uZWa2jGaLm8EQVgJW4NrsdiR9A=;
	h=To:Subject:From:Message-Id:Date; b=hFOWJA9sc952OuyfLNxi2rj+huH5+dvtqKX1d6qKWVAYoqtpPXgkgseLZX6tL29Dn7m66Eyi7SRwk3FK6c2cVkNzZoCG6Ssln+jR98Mr1NJziyzAI8Yo6qp+x7agiAC/pH0qgpJYygBhuEyFH6ZyTW6ZtU86I0/1M7pR+bsiZr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdnnwUML; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdnnwUML"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF647C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 01:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783300713;
	bh=PjDdTWeIwDT0/guI1uZWa2jGaLm8EQVgJW4NrsdiR9A=;
	h=To:Subject:From:Date:From;
	b=HdnnwUMLNNOVMeuMMhVsOBhvCuUxqjxNDTDZU0xRRA7GUMIHE06WxnX1ry/0Mk35I
	 0aYdjyvF7BIsyscd9MgNZmfAMY+/qRbvNEu98kIY6JOJSqaySqj4PVi4mvyskk2qSL
	 4KYeKUAzmMkj1PwyeNYM+LLnjysziMqjOOiHMxMdEDWZBtxlyWvGdV32KGYD4NmOnJ
	 5T/DdCwYPOHn1LXvfmIoVirCSbzPAVg5+Q0g8PcElRx/Orgh9x6YATc5tghb9nXOXj
	 Rg42zvHJtYqy2MyrGlU37fe63VB9QG5wuBc48tMOIBg7MQ4TWk9+3iaiV+tWpR/L5I
	 ewmOhltS/rzAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB755C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 01:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178330071368.14531.5491217703951151413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 105dddccbdddbefaeac5a5423cd0ee93b560449e966c7ec2989e0725cc27b9c5
Date: Mon, 06 Jul 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783300713
