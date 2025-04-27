Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCED10E0
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745739595; cv=none; b=jU69fCexst9PSj9jXPfqeHnaRTVD+BbNffsrq3WXR3SNkZn0TyQ2ZiwEsKrYuJQfy+uc3dE/M6oN3SPmtGnWU9d2dfq+pGRY+D25jQLXAMNV89WsPFO68slZiCjsjbpFB4U7ppXLYWv5TjKv1CMP6dBhLT8oQe3uw5oE4gRW5Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745739595; c=relaxed/simple;
	bh=w5PZOZQkr2SaDQj10YCes2yGtyrxm6MFNLdtVA11omU=;
	h=To:Subject:From:Message-Id:Date; b=tTcxsJ68ocvDp+Rp3BUrP2FjmR6IhRSQPsvwQQQhGsdmHdlvh5dtBdKulVNixiAvvCw8/zvaYzWBR2PWYMA5VXChNnlT00ZkWbFgxTzGYHedy4XyzhxZEvml9QuzaZB0khEHzC3exZNf9eEeV08Pb0f8PQxm5c5SA0qWSl5L2Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDJA4KU6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDJA4KU6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31F7C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745739593;
	bh=w5PZOZQkr2SaDQj10YCes2yGtyrxm6MFNLdtVA11omU=;
	h=To:Subject:From:Date:From;
	b=NDJA4KU6FU29fmkM7EaY/YlZRDCHX3ldI8SZOLUTCJqKP+s9DYQLicffiwir6UYoE
	 MqQpG2jn3P0THfvfm3fuudWvGKwnWYpvtCY24kxIk0HhwFDng7U7whyWJUK6nrLnFz
	 VD9WcVES+TePgvAwpaLkkkAhNqqZlTObvpWcJW/YaA3f7wAFi4dQeM5/Llu3ywhPeU
	 8KWz2sJ3BUdp2ds3ZwXCuuKqr/VQoXEl7MZ3S5C8MgOZzIctw4InCuqujpbVBEe9Of
	 Mg0lO/sIcel85tbLfrMlXdlw6IE/f9pTHyDqbazXTR57+AHwEBCTZVq4BAPdefDcYG
	 lAliUBrz7yE6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95976C369D5
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174573959358.4903.3120481969856453487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29ccd071d8bb2e177e997f2de0348fe3b6bdf91aa88066e94a9dc2c252722e5b
Date: Sun, 27 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745739593
