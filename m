Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3544A19E97B
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 14:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779026434; cv=none; b=ScXV3uyWRlIOauUhr3FkI72MTNSVVTNrGKuYyPBqyXhgCSZ1R1SLzJM2eNtpcVmVOosvkIhazg3ab4n7TrD0o9Oz7vIrgvIJf/zXUzW7GB71ojg2a2Rx34aEkxLyvHB2gch02g8qmTZXRvpK9owmNABOqyBX1kTrE7mSojp7AcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779026434; c=relaxed/simple;
	bh=9NFCmLcCNxFJz7N3/NcQc30Bk5lKDbd0Diei67MdEkg=;
	h=To:Subject:From:Message-Id:Date; b=rzSRa0RTwvEH00ebrjA6Me+DYnwmL60Yiq0TfQtGFEesWlyic7iDzqoCVldsOnNrEg66E6nJ8YFMgezQRVwg72HdNbe8Qo+xC3ja8j7LtLMqVbefOt5uvoGTc5+QNdBZ2ttT9PwF+Q9kHNxcThP2jt7JfW7n+eFB+ej3z8VqiR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWKIY87F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWKIY87F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFFFC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779026433;
	bh=9NFCmLcCNxFJz7N3/NcQc30Bk5lKDbd0Diei67MdEkg=;
	h=To:Subject:From:Date:From;
	b=UWKIY87F45U+W78sYXr91nI04LfAgoTOS5B4TJ/B4NLOQNnZyKDfRXTadMUlOS4JH
	 JMQxJw2U5w2KUmSTM9ZmjfA51JTdMA65WI7Q66XBFXxRGDT2id7qW/USPFlXHlkp9q
	 3tVFWXk7Ec/Y0ES6BFySIu9iCc0qxilSLxKrH+Ua0e7CyHEGxVFV20aSGFZ9FiFCsq
	 Wz2jBRtnIOIXaVcrl6G/UUIKoimY7id8ZgJ3wNecmjTqwyD0RZC0TS+QXvQJB9Taop
	 GypPAzGdPcm5gJTNdg30GTIwPEDjnEhNujSgsUtnlFe62IdJ8uYQk4x31ZVvFgENgX
	 SnYQxKdVBGnbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1D5CD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177902643369.10776.14992977303047504180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec5ebda6e70b18ec567a5b687e35c4a33e13ea82aea7cc9733d21eea8b66ee9
Date: Sun, 17 May 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779026433
