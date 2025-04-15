Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB8C27991F
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744705194; cv=none; b=YncEZ4jJDgiDa/ab7v2YXNfUmo5ovIaNgcWs/IF4p0ZLsfG+9jjGNjtq1/cEsg84+NYJfcFTk4l6WJ+mZzxC4Mgouh1QqCa5gcWrTPG3FImLH4KgozJWyX1JkRsAG9DGl8cyweBQWX7p1FbJF7EcnyiAkGjPgI3cUSB0WQtoxz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744705194; c=relaxed/simple;
	bh=6goJVDWopa3PFkiVGu9mZ4375L6Ae3a5oaNdFIJHROo=;
	h=To:Subject:From:Message-Id:Date; b=BzrMJZhR14gvOVEAte7ViCqh3fSG39waiYiNrAG/zIbpaBnKXkfOjAr8Bhs2MuOR9w/agpCnt1YTU6JtxTlgRj2v3o7E/A0HJg7eIzy/bL5545ArNcJnZ4Zex9Yz3uhWOEfHZ2GXZxoCJ5k42GJYuac4plKCnfZ5V0C+E4yMOb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IisKhK3w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IisKhK3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC565C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744705193;
	bh=6goJVDWopa3PFkiVGu9mZ4375L6Ae3a5oaNdFIJHROo=;
	h=To:Subject:From:Date:From;
	b=IisKhK3wDo2SdOweTo6k2vzMG7dnm4JgxpRr0yGx7mdstmuxHwnttw/yXlIQ8kZiA
	 PdQ7jUtf+aUaPXRNoY2xf/ol7iVRv8Oa06/5v3pdvI1a77D0t9NnECcZrq39Pdebhk
	 Cyddg9GcXa7dmbfVTr4067tX48IMpSnSlKbKWU+bkPY3zqafbVKz16pdy3tDfoSQ5w
	 /yCusIb8gO7xahc9ZwzA+CgLBhOs/JxeRM9tSZUWQklBWNJAUggMckmVkK1rRJHS+X
	 vVczC3jVxjosQtBKdD765nW2SLIHAcvUx4gFC42WdYB7lUwUkiIsSqrGc3vb/L/8Vc
	 cEvKHSsDEwVWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF7CC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174470519363.21587.5362373782462662829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 340fccd52ab641ef13c4cb7c69371172837d4f52ef049fde5ce0b34d43dbe5fc
Date: Tue, 15 Apr 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744705193
