Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F94218596
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766643234; cv=none; b=Ly9/gAcoKB3IeYwhBXixWEmyVatnVGfTMj2LQmn3VlHbHoWhAn8M1SlOtNubboBVmXQSyCTR/etk4s9a06c0Zz7gbn49EtLHw6un3dI0jA0NLqpg8PuSIHDehzBFyyQSp9wJM6RZRXI10/GjTUNhgaU9OYVXwMABPERXcjSfJUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766643234; c=relaxed/simple;
	bh=kGoK4CggPvNwIcK/yKH6yEM0bVoWBiJKCDGJdQ8JqNI=;
	h=To:Subject:From:Message-Id:Date; b=pQsP/hcSYMaLaTJgJh3Ozkl7FtSQLRXjSJLfA5d9XkbgVmKvrLRuz8LjYNvY5lfKfmkRJR0i2QE/VJkxloL7WzAqqWTf7jas3EEQUR5/tW/Q0DyujXwRUOF3ZOTOF5XjRBwrFtV7CaqhwyeDwgNqJpJK2IeWHAteqmz6IhXccAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPaDc8sa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPaDc8sa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AAAC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766643233;
	bh=kGoK4CggPvNwIcK/yKH6yEM0bVoWBiJKCDGJdQ8JqNI=;
	h=To:Subject:From:Date:From;
	b=sPaDc8saI/lmO4HD3gwpScm5ywyaRCoEZVn3tgYqfEot6AXMe7hQLoCQTb7awCRQ3
	 +1tKIcbns145/U3Oe+tcZC0Ffkt4jjOcDklZtpejxu8gSlrWPOqr5f8zqQpbWly2fg
	 kneELNR4s7Wx3AF3X16AHBewE8CI3/acdBfU2EFDYd0pfSZN+gNd/Z7bRyGC9TIZdg
	 rFK0pZLexclQdKhXTalpUI278F8Yr5BkKedKuru1OBofHrr0W21B/SmnadJuB2vbZ2
	 +1u1S4SwJ/ef9NvWNDcO5BjJs96kHzjPAYf9gDN/8UBQny7Y6mKdCqZ5KOktpoIY2+
	 4sYelR4d8w3/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F68AE784A6
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176664323357.27367.10952647214548545587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34ec0ea45c5855978c4ccf715f951a58c1f77b2b8b3a1298994ff4f6b7d7ff1f
Date: Thu, 25 Dec 2025 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766643233
