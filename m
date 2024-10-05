Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F93415531A
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728149754; cv=none; b=HQ+rPEduTIGZvQeknxtLom9wYnUh7r62Fw9udxB/1vy0p7o4PP1ru+3Wn594/rotv2KnAGMr8NavFvW5tDo2IVoD/VOZWXvW+Fyay48zvN5AX4zVkqX3lykz2ZYuJ3eR9QUDheRSF5bEsSZ3Xc2DNm7vOm1BIT06OsT1RfItLYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728149754; c=relaxed/simple;
	bh=qrTdSTyD5+OXfypuesPxIpDzeoyNpKo+YxFr3GJiwHY=;
	h=To:Subject:From:Message-Id:Date; b=CWvZS711fMEWPyt9gNu6Uf2zBuxLgovbO88To1EyU3jygtBlNCB9JsNqFlwt47eT6WSdQP8uUmBXXmfXJ5JvudAflXq5S26ixCr6FlfRsRLnExz9Ba5fvW7sIZxNapuPyagKLkCulTnKCrU4xuasYHPiYqpC2gMhRaL4J8a/m6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGQhdgFg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGQhdgFg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88D0C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728149753;
	bh=qrTdSTyD5+OXfypuesPxIpDzeoyNpKo+YxFr3GJiwHY=;
	h=To:Subject:From:Date:From;
	b=cGQhdgFgmg7RH1/ytbH33wByvRYm2YcZQ51mN3VnQeIl4+nS3r9DDCkr8J6gFqlYY
	 A58LkaORRGaIAAjrVYhQdKgBj67OPWA/HoOkbZAKLO2BFCq5JDwte/E2eIIKn5qIz0
	 +xKCDTzEFkA2USB4+y/3Edcnob6CUhCdkL1fop3+ePEE2FYEb/LjsdLZkeDy4wR19v
	 vNArQNyeI5fxVW7QhKPXPiqaMWB55HOMOJei7XdZNfC/2VUXQORhjhRE2Y7EpRQXrY
	 XahzbACjU9i3Cah1P1SmVJvATPWQAl77E3rXAZwQh6T4AzpCjTuYRqpIY2SbX/A5BX
	 vshpdzCf6gtFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4E12CFB420
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172814975366.6967.435678856817656683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ed7441b54ee9439ae02d9cfaabb8315554dde36bddd7490db68661cadd7c470
Date: Sat, 05 Oct 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728149753
