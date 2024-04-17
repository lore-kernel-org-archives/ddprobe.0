Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571494084E
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 21:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713388163; cv=none; b=fUYg9UlnoA4KZL5+KcJ0/f3GeE18KlmRFqjg5pU7KfNVHaZ1vfxbUdEaWzfC9ey4KQdrc2vM8u1Z4VVSr4nsoKhND7dHnrD6NQg2lR3/mBs3XJB5/cDYM7qM5A4ICrGv2v4/Miou0xXkR8CYzUfeKjDghv24kWPdPIaNbFbzj2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713388163; c=relaxed/simple;
	bh=3DznO71+Bw6xw7Prxur5wtnN0nI6+EITtMeChf9g+LY=;
	h=To:Subject:From:Message-Id:Date; b=pPSmSSeihmKxpr6/EUQN5iDSdiI/xmOcZpuSfmyZ6j/BfmQPb8r10KtpfuI/vWIxQmNoe9OH6IPEDTHlWhy6GRmOBWagYECQVXpmV2RuSpUvaLtgjMdGEytaPo5agG/+XlnTxd/CvmsLOvuiOAwwhW9nLeleO5GoNRmWmPx6rro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPctdR9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPctdR9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD0D7C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 21:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713388162;
	bh=3DznO71+Bw6xw7Prxur5wtnN0nI6+EITtMeChf9g+LY=;
	h=To:Subject:From:Date:From;
	b=NPctdR9k7NFLcWusA/H2aFK77jdCwtYnK6ggJkE0Prl3tqsCIVWqoOv/SxS2X3vVs
	 V+4cadwQ9vvwq9LAVvUUhvouL7JxJieQegt3b3gr+p8HYu24FDPbGpXIDB6byfe+Mk
	 9NgorprDNVnFrSEfycsTCj4FV/AbB2ny1pNJt6IqY1gmIoguwMfcWpt7q+4aBj9GPM
	 OCC2yhGtf9s8TK3k7IrUL4dved0ORnZloBp7Pg/qA9Clm/2GbLjgGLVx9BDsWIe65U
	 4JdO/EhBVbbvCopkMLG0qe6GN6aPq3TdAfn660M2s2xEJaspcyb7bXm4eWqLcW46Ce
	 g1jpWrG0if+Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2BD5C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 21:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171338816278.26935.7843927107547021121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daca2f8c609b2087ff63072a0c62820e5d3ffb74cd542fe84d1bbda578642260
Date: Wed, 17 Apr 2024 21:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713388162
