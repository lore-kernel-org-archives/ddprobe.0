Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25041214A6A
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753684794; cv=none; b=rBNq2rjiIq9Xg5YqRrqbtwyqAC0l6TrxzfO9goLeOIf7m7GoSzZ/LCRfjOx/r8j5NCfuYG6Mft2xjzKu7FhCFtWYWFAzv2B6xRz2YW3hWf0bqy6XEfe4IZGJ6wsvIZhGy8HUC6bqZfeQqPzmTJU+nawma5jcSOvhvK1w4C9GX8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753684794; c=relaxed/simple;
	bh=kfKDsFtqs+Vjxe9S6JvS4CBHRuHYdgxpXiILYLfz3zY=;
	h=To:Subject:From:Message-Id:Date; b=q/HRYYqGM0yQY1L4uXM63XGLxkDSA0rBCKgb73jabWYss0N5Q50VnO9JMUb4ufReejIL8Pms0A7uQI6gy4jcFEJz2a96C3zeLD/KAb1rexEdbrEwIvCyGNI1Onv4j7HnqiDpL3+k0Fk5AYlMcKkagFO3ENF3XzT/hKCfu00jo/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQosWFZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQosWFZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E32C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753684793;
	bh=kfKDsFtqs+Vjxe9S6JvS4CBHRuHYdgxpXiILYLfz3zY=;
	h=To:Subject:From:Date:From;
	b=IQosWFZ+k+xwrPjkB2KIKx0oBu71Hh7KXUrZ/gDZR0Hq4jgUT4uBM/8yphd7HiWRe
	 dTg6/D3PlZkVTpJHv3dgjyE2ZhEjkLAv+0KRy8wMy24jcxCZRloOHSBZQ5vVipwKqJ
	 HiDOjPj3zLYc/IqKQJVh5DUCTXt5qvo1oA47fgTonJR/vjllxZdkYHmdCdTv6lKy2x
	 4aQ3Q3GJIkDcScdZL3Ls+spKE/Y9VtJJguEyOn2RhH+iGXF70vj6q4bRhO0TCGDnDH
	 CFcyeOzvo5DO4rcFoSx5iGXTpMFVOc52UQIWZT0tQYitwZRW1XI+CA35P3RJKg0wqm
	 hAEvExE60LbRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F13FC83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175368479357.13885.9929044188476501150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 521a4aa85027f51e5894b5876eac8897a5732dca2140dd77ea0c81615b511c3c
Date: Mon, 28 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753684793
