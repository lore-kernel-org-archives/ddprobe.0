Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A8822758F
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757071194; cv=none; b=Z/aHWc0oljEAF7BwIMREGnEohksGUMPPFgomPwCzhrWJ2knHYZbXJdFPgqY7gYfQg7sMxqpSuZEBBmz2/V2hV7ufuuf2oRnvC+h35MqQMNmXVee0+yifkpmTECfEAKq0jhvg3ZXCngRogEnnHjHi/aWEEqgcnHaF+U/nPdjAar8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757071194; c=relaxed/simple;
	bh=KrvBjsuEwyCGBRuY5HDyLw5Xggus3eRsenNTCXUHr0Y=;
	h=To:Subject:From:Message-Id:Date; b=Zd0zqbTQ+xjzrR9lRxcemYRLTCeTCnLLdy7LrekDbG24HmorhWBIQ9HEIOpbu4YQl6r+C3ErNPgP8UieDkdWW9Dde2bSvE+KED8Yw3hxzL9vRs5QLoI5PP3iZjqQ2MG1qPYm9RD2Xp2O6cL7/T29lbkzD0T/qqVZPdHjATaQnVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uNuCpCas; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uNuCpCas"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ADDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757071193;
	bh=KrvBjsuEwyCGBRuY5HDyLw5Xggus3eRsenNTCXUHr0Y=;
	h=To:Subject:From:Date:From;
	b=uNuCpCasxeDQf/Nvo4hrOu97C1LACZDQsUKlTI6+fnBOr6W0xaF0rTJopZe+0RZ6i
	 Lh/NgbL/cjdDb5A/zKLJG/gVoaW6SFUHh5ymYp1+MNUNmTz5L5EhJ96oxb7pr2A1PH
	 e3C1SggUR8S+DRhe/W1ZerxFeIvu0ykIM/KF+BEvI4IwFewtzIGyyRI8jEMhQH5SgV
	 Qnqw6/LjtnlTw93+4/rhtBPKzggaPiypwS4Jjju+u7VaY5FBUOD3wL7NlI+BlOQBW2
	 qE5bI5l5sZEnMZ81X9bLGx+NUJTZtQnw0HthmRTtUryR/jGAVBKDYfgnfCMpvJj1dg
	 UsFWg7rcnwoWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F73ACA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175707119357.19629.8962892653265093807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86d9b6a12af37983513baea6c594a84122cc0290f55ee76596fa5ea7b183695f
Date: Fri, 05 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757071193
