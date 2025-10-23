Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208EF314A70
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761225594; cv=none; b=nU5ESw3hCy/mWOzPhSivYTqzTjoMC9JfoDfqy7Rx+V4tvPPy6+RG2QRcklpGFQ7EQtB/fzSXsazxeoDm6h2qhPUD7+hCJTdQvnRwQnY0OjjJ1b3MY1Ek9LJlwRsT+4oj2CENO44w6MUYGgAKLjkkWmLU9tSj9hJqM4LTw/VKLr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761225594; c=relaxed/simple;
	bh=QntL+QtrRwIjY1U5aJapkbwN8WtJniQw9KJ5U/afAcM=;
	h=To:Subject:From:Message-Id:Date; b=bdf3Qca1wld45bRW5nhyov0EMU0O3XvaED+Su4lDq9M7YTmRd989pRanMWidbgN/qhf3CgugSQap4WYtpEathDbjpn9oB/Hn+/E8AVNt1FfiB8jPF8iyBVuj/rU2no0EHxXNvr8hQZbuaPjdBvopYhMmZ1WF8H7gLPC3z+YiRio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0lUsz4J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0lUsz4J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DD4C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761225593;
	bh=QntL+QtrRwIjY1U5aJapkbwN8WtJniQw9KJ5U/afAcM=;
	h=To:Subject:From:Date:From;
	b=P0lUsz4J+4r0rkQiHyTPh2BVgkWvzgRAWs68B0i/Dcv3zbKKD6pHPbtmzj6tcQWA6
	 O8Uf0ECNwxnM1LeyjLrNVGYGmi9lTlCo91BXKK2aEu4BmulWD4/2udTd9JOUjQnBAY
	 uobbaK7yJyWYZmHzfnN8QR/C65DlIaY/OM92q2Na+RrBlTyMzQm3nzspVT+VR6u52K
	 oheFkqiec4hYPwfoIaYUflfZ8Vktu7CTkw42x1SFS4bATtiTojBBsv72buffkNAJPV
	 Z7c9slU73X4uJ7GR4jT4gJ5kcsxo9H4StSLOgufoQit/tht7GtCzgYX6thyzuu/7Np
	 JDVhR+q9iIaSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A52CCD1BE
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176122559359.8388.7819128905489743241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c6f4170c778a68c47d7cf84b0fee7947d11328abd5c037803d217d983a35fa1
Date: Thu, 23 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761225593
