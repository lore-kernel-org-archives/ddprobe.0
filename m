Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407AA4965C
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 15:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718378303; cv=none; b=qaCChXlmNXESTEZgpEKEho5vmAXoReLWHlkE6MpGd5/iQ3kGYHeXJj4TEVVdp0swKLsc07MWa/2iYDpS9cNrM+TBv4u6/xK9zAo1MV9ToMKraWnqGTI/BRGx9TLVqJxbhrJnXpJg0gUCL51ooCDiGNqanhIkT+aQc1J8ObdpWnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718378303; c=relaxed/simple;
	bh=4OctYonM0cA3fzfUcZa0mJLyawFIif5+hiNuYKZJ0T0=;
	h=To:Subject:From:Message-Id:Date; b=k9V4lem5e4BwASjogVywJLJ0Big+OCpf5zkUp3wEo1IXOI/g0+Kj9sYA0x2kWtp4f5H4dcG5c9YJOPWC2BuFqDAu5i8AV2S2mAeENMtJzOwSCpW6RDxpCPA8AYbt7fbAOnmXiuu92vmQL+JZDvnPHVL/uMEJQJkD1i8HO7Gvhxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=na9nevbH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="na9nevbH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58C7C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 15:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718378302;
	bh=4OctYonM0cA3fzfUcZa0mJLyawFIif5+hiNuYKZJ0T0=;
	h=To:Subject:From:Date:From;
	b=na9nevbHBRUlA7eztAQv4XmAoLAAMpcJflcabHkJ1dmpZ59TwFNR+maUh1JWV9CSa
	 fWO6ocb99ZbPMda2Vh5aTvcGutjmZ0MqpTjoxTNptOwNqWBLig+TfHAz+A4or/ldTg
	 RQeOHi5jCM2nzUfEyIBZiN613q8RIRBGcpNZenUpwYu5P69xzl5yDhbeDCkPtN6eHk
	 ekBxqdJOWmQ+0pPSQRfy7lXaEziTJ2HSChY5t1rz4vRAvOCU968RaDKdRRql5/1qcn
	 zHTqt+WvWk2lQSrNH0W9mbX125wo0T4Ouvb2MYhkgb7FHIl38q6Bt7aZHiePZehoPU
	 ax5nqB45f7g0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7757C27C77
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 15:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171837830280.10583.3033918262931089656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a874148883520f3cc7165d8678277dc3bd277f966166c0a6dcfd8ff875d4fcaa
Date: Fri, 14 Jun 2024 15:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718378302
