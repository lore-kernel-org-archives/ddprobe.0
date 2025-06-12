Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D467220F50
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749714594; cv=none; b=NPpgtwDfaO7iHmp4C1eju9NbC92JgQUVHCLej4hxjVvYF2MVvrvI52rNosHeewegMP/nilPfSRUA41t24Zmv9MOlDHOEn2ymoVloqB0+p7nKmlys7lUTrrKyOnGLdywrLqh3L1ueDligDR7EuWfSD3G0FP0S0ZG5ugKjN5/Dtek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749714594; c=relaxed/simple;
	bh=JakDH9sQzaRZlpr8JNIwYfoR/Dy+3uA2hqhaPzsfKDY=;
	h=To:Subject:From:Message-Id:Date; b=KAKZmOSc1kN5Xois60B7OXwELI+tOZnK6g4S75LN93e4sekHE1lZndJ0zWZb4oe4OcRQIVcchW0R4k7yf9vXaYudi8vcngx8xFkT9r+/AKMpgnHovJQh9u4/fkH2dWak9xPmoVab7vZq2tJa7AbkSJmKsXmzgI+KbQbyswBRUgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6I0AdEC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6I0AdEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A168BC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749714593;
	bh=JakDH9sQzaRZlpr8JNIwYfoR/Dy+3uA2hqhaPzsfKDY=;
	h=To:Subject:From:Date:From;
	b=D6I0AdECSLiOj3TQmnFUYGo+YY2h0OFgc5GEU0NZrXlVwT9BS8n2N/MtDrfZpcvM/
	 sFc1oaLagGw+cU872hCOJY1ay/DZYPddvP9JwMGEyhbODVgt5wOiY4oZULFG0bGQXo
	 qegZNghGuvZ4dGS39TBOjVdafTsyVAw+F4Wng5oOe5JCtag/lspFkkdBjX1O7ZILgb
	 2ECy+hZD0U3m3PiZ7ZrDqs6Ehw5i4WZB/xKyXu0yfct9MqGrnQgAp5gvpTjjzEsTNs
	 lOb6TWw87Bv4azyxgFEUjkTBE9n7Qk3GDYh5soYeG3C8MVh0h2A6MPWF6t8Fp8lQlM
	 2a7OkXbA81eQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4D4C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174971459357.5495.16586489709834732387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59de07a3b237fe5cce973e3e3a8ff621065c65e05116ea8b19496e28e8bbcb3b
Date: Thu, 12 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749714593
