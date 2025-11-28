Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE98770FE
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 14:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764340974; cv=none; b=noRKO7LxiOcGHP+dNmtYojG4LTWHCBCnmuheT3fFRwacX+SvqzpeSvTaWgVe3RkuSyLZGg0TDQ9lsfaP8ogx81DhZJ0qGVw2hePTn5iShyqYE0aeZAvYMzv7/5d/qC4h0srjlUzqsczWkpznNaf9BqFTYxhRDSYq0mSVBuGT8sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764340974; c=relaxed/simple;
	bh=u4czx7jA78BQPErF+Ipjzl1Mc7ITz6dKYjCI8yxDt44=;
	h=To:Subject:From:Message-Id:Date; b=NKKuUAscqAvoZGla4XhdxKI1QGCoEwlD0YwQDeymf0Zvk3YJfhyui5Y3SZcTuXK0tn0H1a3vhXpUDm7DEwvu3zBa3VS5HNuCPMHTq+eUSanaQxCvjgLMjgRWMY78d+iemRTu2ojQVngZsAGNCzpe+MMwd/VjGHRv1YM618catxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+YWNepQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+YWNepQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37D1C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 14:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764340973;
	bh=u4czx7jA78BQPErF+Ipjzl1Mc7ITz6dKYjCI8yxDt44=;
	h=To:Subject:From:Date:From;
	b=K+YWNepQ+oZd1WbwE7BsPHp7nz+p2E2Mk8YMxJoOKUF63H9mdybvsQ2T62DgkzEeh
	 aRy0PXvCaoGM1Cq6eaWL8xPk0tuCNFXu3KydlZcdlpFZS4H2zB8Rs1ogk7WreIV6Zd
	 AZkYujyt/SE2gqppFk9WgtlQvXKre+t98FwGjOL39yv+85WkeMvSLPjb7R4An5vCgv
	 9H2RD3R5EkHlLTIe5QauYuzOyX13ODAAbpz9cB/3Gsw3fWZHA+yXaxbNDQmYjkq2ft
	 oaPA2qlWdKX4W0zSBHANeLxJozGc53Zp/7guG2BvtfXfPkshvP1TmYo4c/LtBUgeet
	 5uRzWjEXFV94g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926F4CFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 14:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176434097359.2034.3751889820164373738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edf26da4b739060232d7bbc34f1213436b688d77f3fb0eff27f19e5f00371f71
Date: Fri, 28 Nov 2025 14:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764340973
