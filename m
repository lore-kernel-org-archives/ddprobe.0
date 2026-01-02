Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3669D233721
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767367434; cv=none; b=YwmNJgewRFtC/D/64cM9gZezFbAve/2/eNAbtBbPe7i3UduyzygPC0b4oGaISAAYrftg1jxbRBwK61Uwuev2w+iHZtkqWqvTw9+L1y6owDaaiN9NORj9Ip/JpdzzWJ0iUL+0o/JTKazB0/lJZroYjjv+RH+mAiOIfYPYxTo0yFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767367434; c=relaxed/simple;
	bh=bBPzXHte9S9P+xF7QCJefhF0lrC+5putCJSimmv8WJE=;
	h=To:Subject:From:Message-Id:Date; b=E4WEDr/z+Lj9pTSv+sGket8OglEiYraKoRRM+Q+vYvB3Qhk0aIlkNAzYUu9e2UfKy+5czpBKnNBddj7Jt9S4LdYWm52oWkkcnyWLNNgzfZRjeqatyegF/QQhA9PQz1nzOKrwWYrmX6BvAcpLlTp0vG3MMYvQBUwht6BY23r3CUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SxBEc+Sp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SxBEc+Sp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC52C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767367433;
	bh=bBPzXHte9S9P+xF7QCJefhF0lrC+5putCJSimmv8WJE=;
	h=To:Subject:From:Date:From;
	b=SxBEc+SpwSRD44H8ryi1HF52Sl8clbWxiijK4z7LYUx1OvJj9W0cVlrQT1721TYf+
	 oENkugsxVQ9631HxFCqdsgxW0tJbip4sjKkXDMYa0Hma+qpN1N0Ri/i0NLM7EtYqOU
	 gpcuLq2hIFqdIS3iwZm8xYrnh4pZA+8WSqHcuvEvT76WbPZNCPvvH0QUU/16lT7ygb
	 Bt8/5NwtTnU2KhfVMkEWEfvaBcQLCtYHbfVzPpjFLukshDhRkQi4CsI3Klac9Dwqak
	 sfJwwvTqwPn/JDxIi87dGqL+c9H/529Q/Q/QEZVBDzT/Qj9lmgHyg2N9huAoO3Is4M
	 mn5d78A8KCdaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F570FA374B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176736743357.28776.5573185709923427505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb846bf8e8b52f3a2937e1fc69b1bcaaa2423fc34f6cd1424bcf16eee3b5e971
Date: Fri, 02 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767367433
