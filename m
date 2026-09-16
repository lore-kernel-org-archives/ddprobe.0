Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEBB73812DB
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 12:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789560636; cv=none; b=NDx/0nM36rAW/ipc7PqLpchT9ik6HNbX21+f5Ynqyj2yAmgJ2OiJvk87Pwyw6KD79ENHcksU6rxIp/CACYiWeRfFRpYISri2mXnk7TkcrIwF4Wzgw5XmOE/AUl6ffJ++aOm5FtUpswLmSJ0AvNvKTkej4/91LztFiGps3PMfMmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789560636; c=relaxed/simple;
	bh=nM3PT+/kiAq6+7gbcglRYWCaRIstr/iqTYU2HLYPRAk=;
	h=To:Subject:From:Message-Id:Date; b=NRsUAh8dxpdAIr1VLp6klT2mRCeJxvH/CkhYgu1EsgA9a9TAikbqaXH+N4vGRwmfnkf91vpci3K8M5vyK1aUbuno9ww0yKn569aHjDo7kPESXq3CZwwIiARCn7HO6U/yVguL90eRevQ2ycTTpotUxphaU42ZXapVQ1xJ8e0jEc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pm3Np1XK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pm3Np1XK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC28C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789560633;
	bh=nM3PT+/kiAq6+7gbcglRYWCaRIstr/iqTYU2HLYPRAk=;
	h=To:Subject:From:Date:From;
	b=pm3Np1XKuxUSbQrCUC5KUr+PwVpHmpKdYFBQq/W6qoLrEppArCh4rw7Ry0IVa9moz
	 2JR4hFj8T9uPwVcoM8KjxucCqQZsBcu57FSCYQb+Uu5fQ8rWiUOa69WeSdc1y+SpeF
	 +xNWCq9Yc5OxUfMp6NzEESZ/satEKETyoDqsCUmMy+RlppI6jk8yktWiElc3+cBGLQ
	 XGuzUNF1Omw6nw0A7FTBYbSjS/YmzNSTDw2xL+iTAUIusnDn9yYH/mtAxQwzD9c6IW
	 P4l33gT81q/rNLE5K6DOT4BU3hPLCQyK+OyD6eQYkOriVDi/VBTo/i53V3pYJLDK4z
	 xt/oaxQwh6PGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98BEC88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178956063368.8961.16345738514949477968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cd83b24cbe7ef1c63cd648b6414cfbdd043884e5e92ef6a551a35a00b9f0361
Date: Wed, 16 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789560633
