Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B7F37C90A
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776115054; cv=none; b=guL2qcYtJ0DQKCWWfEuhAp7D7haNu+HrunV0vBwT9GhYnGbjipWAWALsNq9UBUbuCjewSntg9paXGR7DZZSgyYFajwk+tAqm8QNo0F66Hfb5g8bG54TCbPMBpxNdCUQW0TaCiIHLqidpBa+iOxuc9TIWjsx+4EIc14Q4D5KLO2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776115054; c=relaxed/simple;
	bh=U6qxw7slDx/HIgDgzYHYIW6ZwqIGxhfmjAzHDXM2WfA=;
	h=To:Subject:From:Message-Id:Date; b=tA+PQKd9thqmmCjEMQBW9wF4mPIjKrdfvVX6ScajOQc/o9rbVdwdRsNJ0CaplfpR5lgFO8oM0CdJR/MPYdxxdrMt2eSJ+dF1iIyJnHYtn2qxrEKNS0/3R7Uc6mi9VdO+AlKHXOxBqzYiTppr6f38H58uXK0ULVqRHpInsddY/Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rerq0KB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rerq0KB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBAECC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776115053;
	bh=U6qxw7slDx/HIgDgzYHYIW6ZwqIGxhfmjAzHDXM2WfA=;
	h=To:Subject:From:Date:From;
	b=rerq0KB+Pd45xrkTeTIhg82r5m4Jc/M3+GhsumtiMFMs+b/luBN8hWGQI3Kis7eYG
	 HWbPT7KAfEofZI+KG1kOFp6JM07ewo4xIjIgD6tAf/M90bDGZQyfT16zhyZPXD2Lzn
	 X8AXLC+Xfk97QmE5AviaF3WuPWlzISI0KBSDUlRIZq9WNDpLvBl3kUTivLBWjShqZz
	 UAxF8ODekCEZH3FCIW4kqq6h1WRlpYz9LIowlgRXau4I/LYG9qn6Ewnyb2+5ghaqqD
	 elGplAFfnFwXybr4EXE2J8avmGrNuHBEM6VkH/QUHOLSs9kZ8mEJON3ktF2AI70s0U
	 7ErCOEvGwYatw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BB2F531D5
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177611505368.1875.8622503436992993686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce722be8936d12a87a7905ab3e893f6fc4e832c0109e356a0720a2cb2bfe09d1
Date: Mon, 13 Apr 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776115053
