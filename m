Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD3B1E1A3D
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767143634; cv=none; b=p6g77Twm4LCY3x0SFYxIPvZKjIzAlC3vInEZboLCNhRQRanfs1A0LSDn96UVIkGE6L4I5I6LbuRr4B9nzqOS0HLMzNAkj4umPeXeSjFFHMX2g2nOy4Nv8xJ/AuXctPUecaXhKn8tLDOXH1foSEbCoUs612wjiLGJGXUbqVAnvXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767143634; c=relaxed/simple;
	bh=T7B0CSm8BygMh6iRIyXWIWaGQoaNzl3Bnb17SnxDM0A=;
	h=To:Subject:From:Message-Id:Date; b=PHmZyjBHE29cPljvgiw76EBLDRHpp1ugA3Ve7lf3lub130pvHaDoVWeE1NJ2oWp0UAvvX3Cg70GCSfvgABWkLEOwj9aQmObZ/8FX3NKk2X80sTWGZsU6YlXhmcBPWREK7jQ1NoBXBCI0Lnj1cZVU8ylqrbd4UlmtoFltRj/eKVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwMSx3XS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwMSx3XS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EE0C116C6
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767143633;
	bh=T7B0CSm8BygMh6iRIyXWIWaGQoaNzl3Bnb17SnxDM0A=;
	h=To:Subject:From:Date:From;
	b=UwMSx3XSThBmZNJGlZOFe+l0dPttI8ijWyQA1I1cjjH9xLcjkGrPXSro3h7VS/Oq5
	 PyVJ8w7lwYd9dN0BkR63ITb0xrEL1ptyd6JNnCyV9TKRezfk1WZJNcOKZ7yML1bP5+
	 UFyhA88s+Jiko4kNDxo6ePQRcpcu+vfd3LgKxUbe7ZpZZA2UHYw8ack74cBwWwfV73
	 F5norUlLktskom8CbiM93pYUJPHcZQYPWTiEZ5JeUHNTcGVKaABNpYP3ehfsa1qLHi
	 hT9dUaCfRDbXng6wMt6ezjWRSEA+Lor7On+FTkF/GrWM43F889XbD2m5HCvmdqmwRp
	 YutEqLwFB7x1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944D6EE57C8
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176714363357.7421.2558192077197158568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b148b41b65bd0d1879d565ef5d004dd23aa954622825ee763be8fc69534ec2e
Date: Wed, 31 Dec 2025 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767143633
