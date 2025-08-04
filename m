Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F71202C48
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754319594; cv=none; b=slFhbxIx/N5i85t6ccP5Ve82QTc1+jhD2c5O+vLttuzmpa3JY9XL6Rp9qNElrGknZVYtMWNjpzZCjKdql7JGl1g76KXudjmAgEvdDc+OghL+MO0yIPo1ARzjBVBMOKqlUP/Sp00nzMU/8+XkA11oRg69GWxJpVRLrChtGaONST4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754319594; c=relaxed/simple;
	bh=gkDzmxvY8MQS+0UK8cXITcVbhk+xZmPZnmX9XqElN4g=;
	h=To:Subject:From:Message-Id:Date; b=VPNgEw821ZwrMJVFzTcMwHH8mb0YrkrikgNvrOLTp3mSJpwjOH13UZR8KNWml9M54QIPP130MAdN/+zLpHuO/TdIbWC92abDqAs5KFprDbfYI7xpSMZCht3iIM7CTV+LgYsXofBE6YPms//+bZIw2YNn7LlHLQL0qJ0CfG5I79Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsU9pswY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsU9pswY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1298C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754319593;
	bh=gkDzmxvY8MQS+0UK8cXITcVbhk+xZmPZnmX9XqElN4g=;
	h=To:Subject:From:Date:From;
	b=rsU9pswY0iITPgDhZwbYBl4LUPO/InCzZexDdV/P0E5Heaw0oExnW4pS0tmq6eqnY
	 c1cn7havZgmmDiKG+ioTyvh2GpOBu9x4Pep90Ibimoz15dk8hPRWIDWGqsMRkNpkXc
	 b2ZnYAHaRKmuoqGWrKC3vSzvb6f+GJbCKOsSG/Ilmarg1rztnUy7czzNVkGT9vHwm+
	 fgUsE2AVaGJJ7Bz7aC+Ck3mrqixUpmmouFPlbBx/qlnnXf3wpE53QQYHCrMALHon1e
	 tDfR6WEseCnJToFAXZiCOEmrcKVWj0TPiQt9t1LBDYrBOK4og1LYbQ0kc6RtJvSr1f
	 ND13jMVBZB3TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F318C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175431959357.11289.15131062151034488834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f6e53da6a4d248b370fc644cc6700645fb080e4328a1f1bf9c2ed78b8370f8
Date: Mon, 04 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754319593
