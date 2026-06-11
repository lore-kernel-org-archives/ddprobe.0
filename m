Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B63B13959D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 07:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781162194; cv=none; b=XQZdjxr0+/ECqpm8qY9zgB5mLfB3NoTkRi8fkA2T+8YXlDhyeGO089BZN0+aFjY6xaqGh/voDdY6DBA6r0Y2F3dyVQfVazcnIFPicdCNxiwKvxSpdIwVuSaxIaOHs6csTDBbTqtADXx5d3RefJ+iCKLaJENlmOx6+8ch3DS7YP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781162194; c=relaxed/simple;
	bh=gQ8DSu438wZdrxmk+gt1N/MTpzRlzu+wFlstxR19GcA=;
	h=To:Subject:From:Message-Id:Date; b=EkMgrg5tiJSM61tVHZ/gvBZAnr2jVdwJH0KfKfQBbZ6tfKnabyBxG6wSJ/ZGdWgDQYInAZTkTmDxK+KUu1D62aSMq9EjFrjGJN9NzaDR8nK6mJdm7nlCYlB0KeKXkg6muuKshXY5YV5vbfQpxIr9XI1NVOj1NrV54xWiSYXOZ7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7YjAb8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7YjAb8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB257C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 07:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781162193;
	bh=gQ8DSu438wZdrxmk+gt1N/MTpzRlzu+wFlstxR19GcA=;
	h=To:Subject:From:Date:From;
	b=h7YjAb8jU3LRVA0DMabHfPjBh7y4FbflX0K4B64G7Otbgv7TUbcECA1wbBke4/M+d
	 x6kJO4leVxm5dwwJSvaZIH20lVqpRuR01FYtL/7NpMo0NRMZ//m8s55pl6fDsW2FxG
	 g25LpfsrRBVM0dL1+M31McAyd/qe0MRpLEKSY6bNRHjJKBTQWV1bucjEJ6HogoLl68
	 pduHkQkPIF5WmbOAfUmrAuWfm7WIYH/oT9lGQg34H0CxaqlwWIfb1eMk4ONyh0bgv5
	 K+3lOPGYmqQXg07nF+bQk5HLdV+Kw+wcWBq4OoWdRH0HxLwUYvHyVZIIJ+bUXq/tle
	 1sU6PO0lUfWpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE808CD98CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 07:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178116219369.16822.10691301002063154430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bb78dbdae18de1c4310ba5ec548853a6db5ec2dc00b01fa17739122ebc170ae
Date: Thu, 11 Jun 2026 07:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781162193
