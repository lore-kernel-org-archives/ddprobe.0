Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215EE78C9C
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782462454; cv=none; b=uycaF3c7yPBawJEm4ME+FTdJJ2OZ+qL4/2kaVuvy+RnO+XmBsWQlcgA/b61Oydf/ywwCXi9ddQvgDLfchJiNeL6RTX+XZtAFH4vHx8tzQZskvV34GlZJeI9BFG3IX8S3zRN/hm1AyVymjVRq6RYJE68ztxiB1I5xD3LwK9J7BAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782462454; c=relaxed/simple;
	bh=Z8n1IslqGvuMkNbYQXu1tB3Ydh9sfGnCN3Lc2jfllUM=;
	h=To:Subject:From:Message-Id:Date; b=E0C12Xh34iJQYi6hYBqGC5cVy5zJtmuOd4IgO45kVg+kePHnz+fTB2QEmPZrPTdL9u6MDyqVhT7aO/k8kbXT9N8RAxiF4UlN1yzhdPnjP8ZHKmn+91wMTLPnw0P250tmSRt/FgG7fcRY+NHBCUO3qMudbEOD1fBA52bjE8JcJ3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfUXzd0E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfUXzd0E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC69C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782462453;
	bh=Z8n1IslqGvuMkNbYQXu1tB3Ydh9sfGnCN3Lc2jfllUM=;
	h=To:Subject:From:Date:From;
	b=hfUXzd0E2S3f3e+U81CdS8jXoxGUw8f7yvDEuUaS6rcmpX86KNii+UuLVtYjQ7Gnx
	 wv2W2/YFdtolZhX7e7Jk+LjHR0Wy0nTnAXYHzGYyDWuPFXskz7oOYdOCffjyD93Rg4
	 V5T0Wjhx5n1U8w/rlTtJU+yBGwqguQtXbhwFU3QAOamRy1TTCCy8wAim7yC689tpG/
	 SI5Q5Kqo7s6JxhjtwuApP9jba4aLT8KOp5VTJ6zLLpUXb97lWv1n6Fj2mld9sbQMyg
	 B/t/FhE5u5hXI3rqFoRrEO91f3QTWjTkHwmybQU9vD+MEm1cUdUN9CR0w9l0jCK0hO
	 cyrzT6FrcdXMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD002CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178246245369.27301.14171424888221786538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cfe95b301b4a4f6a53af684a45c898cbbd0ad8eeaf554ef79c744d64af571eb
Date: Fri, 26 Jun 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782462453
