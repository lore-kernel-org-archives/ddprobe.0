Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D88ED27E
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733562354; cv=none; b=Cl6Tzk/gWnCIJBy25Jg2s8F/BH2VYcqQhqCzBrNe1awn73oHh3vrKhKLrKrsMxSOoKWT3NduwEdV7r/mcvSjAMRtIjI5CQRSEC5vhdlwmxYIuFmbSPcIk1k3fOlSzZFqI8eXcjYJr21VrWh3UN89RC+KtR1RMkUvzCQZx0HvveY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733562354; c=relaxed/simple;
	bh=SUU82lCPkAEjmU/VoOy21ovOyJ8M/Q9AbIAqQXxTApQ=;
	h=To:Subject:From:Message-Id:Date; b=s5pm5w50H0AKPV7k2+NG+Dpvwv3c5RlXwYK5WQ3ahj2UZy7ZvPowatQ2+K7f7Rhny04733uEiLb+3RrPZoE2KozPqoKzWHiZMbpT0v8ZNoZNFBLfzWwRIo8a9FHgY0I2NCYn6gcct4f6WC9YxdNzh3MWxolHgeSlyiAypTB7JwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSMwTL4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSMwTL4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8772C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733562353;
	bh=SUU82lCPkAEjmU/VoOy21ovOyJ8M/Q9AbIAqQXxTApQ=;
	h=To:Subject:From:Date:From;
	b=TSMwTL4ND2LIviD2HDyQ76LonikdSvsEqX6uSl88MQ9jttZ1OvVMbNX+GdHbN1BJ6
	 YNeWn2V6a4xI5tdzAwX8xyTzCT+5mFbuza/i0Bq7MkUC8SKmUwGFg8zpCTQX+A2IZ/
	 Df5wg6t4CCNlwGwchOs2FR3Ko8GnArB/YsG/V9PzsH5870QcuB1g5986we3FDjguBm
	 J6Zb6KhE8OGhln68lTcoRQg7YHh3SGKZA5s85qil24Fssi3eMAHKiW1qXbQb1CcWK8
	 0h1VlhVTIcEaVdyi6JDby6Ixwe+6GdyRxfJpSSEUhwN+WLMiB312D5Yohs5C9mqXix
	 dqxB/wpD5o36g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1278E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173356235361.7652.3755190511238947206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b02309fdd160ed1d1cbfd4e7e50f427b5e931434631785623b9427fc086a14e5
Date: Sat, 07 Dec 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733562353
