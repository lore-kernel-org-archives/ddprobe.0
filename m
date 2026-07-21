Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64DCF3909A9
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 18:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784657914; cv=none; b=sgKRCcGKS8tI1M0Ne0JlDOaEv9VKSzzM6IEFZVlBhwXGw3USkh/2038I9X9Pb54wx8ylbT63h2ELHVFbUlPFL7WV2RI2VLM6q0sZIRuDFMUl71WzozQxdwP+JBg7KgU7KQ3jypxfh67FZyis+/NjW+HHry+Uk/PPjWF3O/yAtUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784657914; c=relaxed/simple;
	bh=Z3d0aShvIeVkonGDyf4GFUS659iOYIq38aDnnl6+Wxs=;
	h=To:Subject:From:Message-Id:Date; b=eJbETB+RroXMg5D74Xyvw/jJkRZm67iyEeTL9t8BB4EL+81WUMoEXTq9kqr4xgQ57e/a7D1/OA4jttlFQJdZozfWHHUOvYn8IkljfwvmHhjKbjrBRjU5g690HsXrTpciT6XnHcJFrkwd8yoSzjjPvVKSXV3+Qeq6awFgd0E15wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbhqDSQG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbhqDSQG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6981C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 18:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784657913;
	bh=Z3d0aShvIeVkonGDyf4GFUS659iOYIq38aDnnl6+Wxs=;
	h=To:Subject:From:Date:From;
	b=PbhqDSQGYeVK3PvQeGwHTDT+2hHSdWo0FCXaPw63/OorPvTefGWVeO8M+a5FcnWSN
	 kO4LcS/46MN/31vE9n+WrAxftB6sue57X0i0B8taGsLED8Bnz77fbkAADtngHufDFY
	 Tdy2Gw4T+L+5vAT8hoTLQo3y7InkRxOTOmynhR9Ml1KtaaJh42Ku1lcGhtEVEKCI+o
	 PX7DvXUnkkADMzRnxCS+tLtEhkoQq144PRD3YMUoI27w9gBrwXpOBD/ppkS3zCkW7t
	 pMi+4C3HmltmWgq5s2VFuMp3wOG8i5uglUW1c2syylTlN6lqT4xzfzx/dVx2UI5skL
	 UykVKMGzNbA2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7DBC4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 18:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178465791370.2697.10561639308204764846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51f07c75e8210196853e41dfb06eafcf8222650fa2ff78df6137dc9f3f7895bf
Date: Tue, 21 Jul 2026 18:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784657913
