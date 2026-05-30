Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3879581AA8
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 20:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780173274; cv=none; b=P1XBmRARVqJKst63dXpdahMxV0bl+0I8yvF6bMcW9MZ8ekxtJwyfh6hI7/shMs7neTIuKyXRfwKALYN/uMbJX79U1rYjm8HdduwlQ5jmmJYw+qrmzUR8OkqnCL4UOF8KLG3GPlu3+zesdNpVJ+clndwKilpSZIcB0wchdiYj1ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780173274; c=relaxed/simple;
	bh=mFiq+6wQORHtSvuT2jSir4vrXkEuFJpnXoHZ3DVfFjc=;
	h=To:Subject:From:Message-Id:Date; b=G5/Eq1CiO04optnwWWG/5Vu3kF9ZicwOgIyYmrVa6YWGsqwPlOha80EP4ThaF+7NQ3bOdykdrL9svTZ4Ckw8zU7/UdzTGz3l+tG15Qb9ugaOhTcmVHaxGYZV8on1H5MJZDLnIMhdTdGd0i9oKGaOIGeb5AOivOYOLCsi6RqUW0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9ge2HxS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9ge2HxS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8133C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 20:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780173273;
	bh=mFiq+6wQORHtSvuT2jSir4vrXkEuFJpnXoHZ3DVfFjc=;
	h=To:Subject:From:Date:From;
	b=n9ge2HxSUJLSXWfTT57TNHE7P4PLQHw/Z1ltawh6gzD1gcooC4cQsAopQBt29DzB6
	 ODuxz8D84TEbLMFLRzotKHFkTGHwN/GVJAv8+J+3wrW0jc9xp3v35VYskZd7sGplZN
	 Z23k9dkOX4EhE7YcUY4QHqHohNKjEYdM7Rqb4wy7JZ7oZSlfhpBVXpFvDXbHUjB5DJ
	 brxfW6O8QRPc4crLoWI7JqlwT9990UGWitEomJY49R/pMht6nlE2H+xpECYsjdXpQ9
	 +VM7uLG4FbQcdeISvLmNr17PZVe1Kb8PPe1L/HCB8rLQKRAU/BveKIe+anVFb9fgZR
	 Q1W3YD94sAWnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD96ACD6E49
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 20:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178017327370.11788.14688674943972043154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20db4a95ea90c63589074eef09a890eeac81ce408235a3a4b69b5cc21dbb7cf3
Date: Sat, 30 May 2026 20:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780173273
