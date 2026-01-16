Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F092339861
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768580034; cv=none; b=ILNBx+ite8LbLF/MoYLuz80i3HF1Y60vWsAquaaosUsbrO6Obzt1zgWr+T6hZE5rcoetbeWIvGyDNaC3VZ9YXJvldxcYdSsH9gA1uVP9Zq1HR1C0Ki4xbtpVe3Q9P72tyo2LlliQFQTqwdZRyNWaw/vZ6202L7PzKqEW+lpFeNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768580034; c=relaxed/simple;
	bh=6mycYILgxrqW7Yzxto/PrOsCx/ZgI+7CYe9m6dlD9fw=;
	h=To:Subject:From:Message-Id:Date; b=kbXe8N5aP7Kto7GbS/fatBssTig19u9ud3Ud6ck+o0/YOJJatYdJoVWzTWU9+SQo1sKwPoIqZJ4rwwXJ3IuqSeAES5HSiAkkVB/Z4qKiL/JEnd38nmOK3DbZraT3eiZy9humZOKY/M8Qgomkkv4qXcFtSwfOFneMI5kssj52HRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCQrIma5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCQrIma5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15C1C19423
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768580033;
	bh=6mycYILgxrqW7Yzxto/PrOsCx/ZgI+7CYe9m6dlD9fw=;
	h=To:Subject:From:Date:From;
	b=hCQrIma5/FcEzKdCL8RAub+yyZJe1UFbzwZHIwkhxfAC79imBp8wZiljiPkPT6pJX
	 AxC8huwd2Omxk1XMbOa/0yaAtkD7G9QX2iGe6EYfGf91HZUfRbZL8MS3KMU86UDCam
	 SnmYsOLcZv1UM7ikHWeFsQkvcs5H1vBCwyr1QSVWq0Gwok46EM4lR6my69NeKPMw+p
	 DfJnwrHgI1M5M6WoH5G5Pz42xAq2fy2hqTT5fpgszgOL4+RQN6b4HcsokUb5eC0aNK
	 kcxLR7b3PK7LhKEnY6zh6ekoEOVZLgfdY0mEs6kWgdyOOue/X2WLzKwf/oRqvNFqDr
	 R09UTYBeFM3mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F81C982D1
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176858003358.16827.1322712505048846129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9886f62741689d3629a5fb2624a364c1c54fad3e4d2da1c49c7df198a5fdfb1
Date: Fri, 16 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768580033
