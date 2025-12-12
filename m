Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7C129617D
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 20:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765569774; cv=none; b=U3FzzySLbcNbIxfr59asDarxZQqYTMP+bPR0LsLvTYIAcUYxZuXkM4ALFBQhJA1z/qxsEpbFPrYQ4k+Smj5gJJ8LDgHGgrg43Ka45uWvssEVshnWlxtiIxNOGkBJTILk9RN5arWSL1te96KBOmww9mA8rBcf0XXcLVssWAq9Lk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765569774; c=relaxed/simple;
	bh=stCkhyjmvbcfOh9e3C6jOy11yAqp05VAWFUm9e3ivL8=;
	h=To:Subject:From:Message-Id:Date; b=QrY8rLYvAH1kIf3FhAmWrAIxs7TaIqKcpC3sdcCh827wmHqqUhdo3ZjAoFpPOkw6vx1hVipSx8DgL7o4z57iZQ5c3Y4U+pS3PuA+OVwmkZ/8UNQd5hFxkB8hpvV1zGANT6veQo8KDFbvfyrhPLaimZytsDVpovLnLPXKsXCDAU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuuB+6yU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuuB+6yU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3678C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 20:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765569773;
	bh=stCkhyjmvbcfOh9e3C6jOy11yAqp05VAWFUm9e3ivL8=;
	h=To:Subject:From:Date:From;
	b=NuuB+6yUSxARr6s8R7YlF7HwUsUZnBnjl5LrZajoStV45ov5dN4bWP+UjCrb2rz3i
	 bpJJcWlHUwCl4Qkq8oUaMbsmgvEYeN0N9FisnjahXQkw7bKsiy5tcPwpXwJPysePQI
	 62Uv6HAkzh00mK0jaGvEHVjshh61nqzaTWaJ8ypWXXS3IBzgBW66dqCoVPLs/uNaYU
	 81A0oICwY8Al4pC0TU7qY3J79Xs1CBDwnAsLCL3TpqY1BVwAqnzg6qULRv51z8ILHL
	 Tl6+DpFWaYo4aMFi2kBZH3OMH68HdOb/Oxx+TyvMK/e4Ql4QlDJk+jYJg09pyja1zl
	 KDdiYLVk23I4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D64D59D8C
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 20:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176556977359.13666.5703753022998228017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d64b4c22ac546ae31b25b2575dfe949116d9f24e202b04bd0dbb8d680a6a8018
Date: Fri, 12 Dec 2025 20:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765569773
