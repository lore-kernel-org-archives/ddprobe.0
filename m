Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291A532E72F
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777006654; cv=none; b=MA3BERZ9LTtBnOOdK9hYJg9QIllYtEVaoMxaikwqeQ5ky5epawmZ0Bi/Y/hm6L6hKpBtQEu4eOVmvHkhiYY+dKvQzPo0nqmlhqW3QTQ9gO3YPWSDkzWFaHihXAAw1HDkUQCaDAzwiC0AWUGTy9MkfT183UdrHcOqSaw1pYSVmgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777006654; c=relaxed/simple;
	bh=d36sKA4XzV1ITyQiJilsFhvU+2DbpBLf9F11d1nIN8A=;
	h=To:Subject:From:Message-Id:Date; b=OH4BkuyO7Yt1YMD5R5flfzkBafq2KHpiR6G4TXY5etpR2WvemB9Uq3G7Dcj4tfNAbqyIBo7if+VIIz+aqlLVrpUMCaDNoKriCNnMglQxGMhPX8BeHorprIuwUCJksXGAhdt0Soohq6BRvZu3lF6K2jyZPub0OTlr5YLc8/beSdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvtk8h9w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvtk8h9w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C064BC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777006653;
	bh=d36sKA4XzV1ITyQiJilsFhvU+2DbpBLf9F11d1nIN8A=;
	h=To:Subject:From:Date:From;
	b=pvtk8h9wC9tsRH926yvf97FApKN4khp2oRcWnGpxElmF8EeIiUkaXjgNbJXJL/nld
	 MiLBYVwzD3BlFBR9gghIY1Sh1EjoM1jaEDCI3mOjzOL+D38fwrhXaXFvpynNRqjVFx
	 9C14UkRQ3+laJ/nYhBkidh3pAcdav6j17jVTneNsg6KxZ75Y3EmssYXP1li+h57FSD
	 uq+psR8Ja8fCg5t0KgGur5AVEinIJkbTUxRlacK+SIq+pqbYp7Cv+Ks6oUg6ZFtwUk
	 GQ6eAuGZ0fgJcS0g3nH21tgtUEx+tmOFYEBOCvruLJD+Biza/MATmOZBKFTPnqncoz
	 +LxJi04u0g2Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0DCFB44A4
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177700665368.12891.7387602273174648980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 497c835ad60a6ea9ddd06b00ea7cebb1b008d2afff4fbd060c863dbaa449a541
Date: Fri, 24 Apr 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777006653
