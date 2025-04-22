Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471B8190472
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745289594; cv=none; b=YAd72UNh1mCSkp8cA8bA9zxahjSS3OrZ4y2bOC+VXeYBeLc6Xfj8P8dq06hFQw8ys+5CNcFKhs/+SxLgaDKoxYAVAhrvoa9k9Bd23kP3MYT+Nvx7bGfh14oIyUUZ/ylxSF7Cw/MkJm1mwz1BnndXxPmsvruuFX98yck2yAn17pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745289594; c=relaxed/simple;
	bh=+sZj9kKJQK7aCOxota7yahujQtLRcOc/o3TG0RwvMVU=;
	h=To:Subject:From:Message-Id:Date; b=W3kMFxoy4TY+VcyqIgV6hO7N7AhQcIZbzAamlWIr3/qAypDqfGJvWITN07OiJ405CKgdZ7xVytL/0/NlgKY9gMe0f5WzAsQVyBT1Dws655Egjd5r8P7ifErK1N14Nk47mNbC19ZTPcgxl584Lwv6mVPfFmsRN03Qzw57mWZJ5oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+ipZkWq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+ipZkWq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04F3C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745289593;
	bh=+sZj9kKJQK7aCOxota7yahujQtLRcOc/o3TG0RwvMVU=;
	h=To:Subject:From:Date:From;
	b=h+ipZkWqx7HtPSTj+2eUPuiRjU+bhtTdJbF/WtFfaFA1hOSU576nW0rwvk5Mw4QKa
	 //wFP3eaNnfkC1QxIciT1EBynxFDfoFmMozV5TqtxmzpbYw+TYpufGYcqSXCgY/FGw
	 z7jtIUdeGTUrIWDSjWXGFalltu7apFoI1JRAeo9+3ovaypazzKzvC8SMEerB3l9jZP
	 3q7WJQ0vx6b7vl0PDcBoQ7xiywO5v4z3OaHL57/n+jsMlIie8trLwRNqpTuvhjou/k
	 u1MB7fyTPsRxyIflEIqIhnrJmeH03wD2ivqPp3na3XuXsnUjDFR+LW0Y3as4x+SGME
	 K9SAXcmGsKDJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F67C369D5
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174528959359.3591.1477850216663394075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e47ea50695c55ce3b1f4d5a5a2c24b66800684da7721cf12a4e131a8a0e95e49
Date: Tue, 22 Apr 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745289593
