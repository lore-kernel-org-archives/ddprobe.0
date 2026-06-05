Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6354071F3
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 20:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780690474; cv=none; b=rgKdVH5daSAAYEy3Ftkudpkv7CTR4Dj/kCVVqspH4zOq1fG48PT6rC+6sCXwy+iiBnaBFQ2sGiiuBMshP8p2z3qpe5ZvuB0C9QGJrkdEGN8KhQNopac+5e+A817D5xNMrxRW6MWa7yiiVf757PPAV52BPrXQXEqpAt5ivua1hA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780690474; c=relaxed/simple;
	bh=H/T38lqRq5zovXi0U8TGgRWBzuK7nFytaJt1bQmwBMk=;
	h=To:Subject:From:Message-Id:Date; b=r+YvLOeSZscLLfvg1ntQLJZ4XgCNvBeP/HGB+DN+JdvxpFZPxjIwQiM4y1ttDzOv5JGiVNdx+GDuIm7hivph3VbvRmYE2M0HafkxEkn4/UpvF0e2BUZzAd5aD4/Qh5RMkR0vP+uJqpOFwO3EMTF+V94Qt1QxFVJisVht9wkh6sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4qwU/KI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4qwU/KI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBE6C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 20:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780690473;
	bh=H/T38lqRq5zovXi0U8TGgRWBzuK7nFytaJt1bQmwBMk=;
	h=To:Subject:From:Date:From;
	b=N4qwU/KIQYj/be+tXFIFnyoZtA+LKEPtKmoyka7ZB3sbhz1wg0GdQnA8/y3PLfgbQ
	 Ngvm5KQA/EPYhfgDYkOq9ZBw/K3isoQ1SOp3uvm+rtPfekpyMgeHTZ5zN8lPsrc6KU
	 x92c9s0q0z2kcHgE86cl08XDgRN5FH5Mk/syMsTzURDVTyv2wo8Vyyvexln1lHL1Hv
	 +aRfKXeb9JQMtXcAHVaO/AC914zwCQSTgJBsvJEeGZElu+sWHIOfJ7jXB6IXrRrWHA
	 TCPZnaaZ/xn2C5cU4XQStt+k5cKwsisMq06cynQcQaM34YJ8smrMcg+b5CvS6VsK2J
	 3ywX1sKwKGQiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A79CD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 20:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178069047371.3146.14528536479507113529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a3ba2bc62b637c8a023e8c08640f00bcbe69159e1ddd799e529f5c07d834680
Date: Fri, 05 Jun 2026 20:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780690473
