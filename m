Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADFCED531
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790557234; cv=none; b=jnSOQ6DVkzxs3HNfZenOThYQdI4EmvgeBzZb+XuoG9XfMAebOZYgAYM4VTzKFBce3fAyGHjy06iK4Us6oqzX6ITjTva2Ax9Z96Ez/dD5oKeNDrwvNHKGYEp4RQnf+Wn06v5phdndZfCHdOWKpD6PJNU1/NuyvC7CAmdVHis6OVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790557234; c=relaxed/simple;
	bh=7/SIucB3QbFLGmDJK6ocZ7P3G/0pJFUm5br2X1sKxIg=;
	h=To:Subject:From:Message-Id:Date; b=sLv5EcEr31yG5M/b2zZH6+iVxOGV4fAsUaAkLy3jnci7FaqzGPt1fNv87IDKOLgPgCJprkt1pc5FjG0h5Dl78E81CkmIPx63lhU+8BUDflfsLX/SIW2Zmn6bU3+dmdaS9lxMRWJ1JcLGZT882laEoGr9heBrwLrlDe3AecA68Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LE1uSZZj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LE1uSZZj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5166C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790557233;
	bh=7/SIucB3QbFLGmDJK6ocZ7P3G/0pJFUm5br2X1sKxIg=;
	h=To:Subject:From:Date:From;
	b=LE1uSZZjj1KF+F+/OyuYbUAHr0Tmr+08Ft3Wl6Aeti5MPtj/Tz/i8rCmtFz1tO435
	 GwtNzxjGFdL0hHcv7EILe4CrWPt9cOg852rpTzuEC5d7YAbs1WYBPTBRTmwEzXb3Rg
	 fka65xvjik1DoHwUs67mRpQkb2yeyR7dE3KfDW56KxDdWtKqgcTeqcKRz2xGlbZE3U
	 6K959y0twYoIMCBs1LnrH3F7JuYyaWF11//fSkwRBKI5jNq4NBRHtIVZcb+pEjMput
	 e0gRtl15Bl9TX30tppgkjeB7nQp2TGYXaT+PwmDjY5cXql7woiNJ1AU36mnmMemf13
	 NUew6GhR6qYLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CA8C9830E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179055723374.21975.10118576811225227169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cdf1dcac4d247c9b34732f9a128f5a5ab362e62445ef0b73f410473c67a4757
Date: Mon, 28 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790557233
