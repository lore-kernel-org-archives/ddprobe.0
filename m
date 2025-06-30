Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F301FC1D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751276394; cv=none; b=Ihatm6Fev+QH3uH4TC+cEi4uZGkkgrW/UXC2a0nFb0O58jQl8meBW70M1KT/JmyEcr3PxwK5qynsT8XvfJ66GY1sGVJH+OAHoVxJKAmaz8gNmwl3YygdWvfM71sIlXLeyNmA//anRC41RXUgRySE12iUE1g9TZ9cFI/y3dzv/r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751276394; c=relaxed/simple;
	bh=LPYh5O8M0GjjeIDuA+lDILgJXJWqWeW64oGC1L4lP1s=;
	h=To:Subject:From:Message-Id:Date; b=un6dI7Fua4PfH4uUw0Bn3g1n+rYAwZa58H13hsoHvaExkflYi+YKl7IVBQiAnImozivpt5avAT5GAOzHeMSyrlpJ7AM4rSmaR2zLGH9UdnlR5JZnGs8y/UV39DEw0ziZAaqlLICjGC2Db8xEVu3gCPeMaWCGEccTImlKJvNCTFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZJnjxT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZJnjxT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCE1C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751276393;
	bh=LPYh5O8M0GjjeIDuA+lDILgJXJWqWeW64oGC1L4lP1s=;
	h=To:Subject:From:Date:From;
	b=AZJnjxT4/2w3CUxZOHMiW3x4j1BkGviSxW77M51rKZvzQnAHSru8so166LnIMy8Eh
	 qxv08JVIgxWJhZdFP7R2fkI+0phAPDkBgKK1e9N3aF4juQj3nmf1s9dF5JfMbONVij
	 X2NL1R0yYPGB7O+JLEsAUP5uB6WyXuUTHEGmlHwHNjXEAyOS7XNYwL4gRv+kSDHSld
	 CkDSXWaTUHQIchr46mv2d2tosIGDImfiN9rt++zDSY44thMnKQ1psNN7et1m+He/q9
	 R6RpSfff+0z2NlxqMFJEO0V7eXyhjA5ZMNupVAjm2yCIvQa8gvQlhXZUSRcQlOwdQV
	 PyivD6fH8NuWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F202C7EE39
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175127639357.16916.6336558572736992314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbc201c19eb010be280fd558167ab248e92d8e49f6d5dcbcafb7d68a314fa06e
Date: Mon, 30 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751276393
