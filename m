Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D42B32D7FB
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768527834; cv=none; b=ukx9LmVLUO6GHtCJzljmLsw6q1PpBp7EmdbIxBtbHGW+PJapPr4vCNq5YBWVUWTgrwrALRdQfEAzFL0RaFOJn0I4rQyDtTGkSFuI+Mp8xkOMt2W7c77BID8s2ILR5fQwrKzrcTqqVONEwKkvboBtS8XGOEEBZa9B/4mDD8EnGG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768527834; c=relaxed/simple;
	bh=qt621UceVRW1xlCOYsSHbVTbywTVBXY9YYzROAlustI=;
	h=To:Subject:From:Message-Id:Date; b=PO7O4X5aNXQr60e3/T6XbI6/ISAsCLtHb+7Ann+rLFhNpHb0M6F7U9cOcu/qrbfiv1gV3ZchJqJPtIEj9lVy502rAMKZ98pB0AtR/WeTgY1GuDdXOhtKyn3SAoJD0xxMQTV+LIKPrDEPvzikvdtVdI0DlpO0+STRIbqS0Qp6PIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fj9xdTno; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fj9xdTno"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA0DC116D0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768527833;
	bh=qt621UceVRW1xlCOYsSHbVTbywTVBXY9YYzROAlustI=;
	h=To:Subject:From:Date:From;
	b=Fj9xdTnoWbJCM5WzPYCxhrO/ihC7rsXT0cbAnuBIjDau3UwxkP6YIWaOo2H3hG8Qm
	 jZAUWafrgrKjAc37CZuUD+DJu3deB0d/dW4ikb7Fui7n3V1ibfWRcCr+ZXlQJoxR/y
	 CCSDOHVq6p90klTslOMPG7q3UQvqX7hMqblBft6vd/fUzBCEyqr+phoaQErjZqug+y
	 UEEZbHaBIu9e+RYxcI9ORloX1m5K70wRMwp20agnhDFxTX26ZQcvCwqN1hZa7TIEnz
	 3XiGvwlWECMRX4yYEABGKKh+XcS3a9UO3lEph7LKvcknT8X9eUZrQK+w0tpVGlVKUR
	 LEgqiVVV1D4kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F093D4A5E6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176852783357.22376.17598676292697158473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 641eaeb5ee1f1e620f3aed63a2e794775b9d0bdc76e2241fafe857adddc6d100
Date: Fri, 16 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768527833
