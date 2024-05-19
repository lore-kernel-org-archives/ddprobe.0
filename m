Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0DA618EB1
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 21:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716153743; cv=none; b=pa6TuddYoPYKKrz92Nm9LGXpCkWnaEHvEPMZN5UKnUbd19osIbsWrX8xUCXPdy7rg1IG13C3RxdAmTym1sJGqqOIsK1vm0lPF9sFuCB225EOYBxcX7NFOJWeyIxbq2hOQ4uRDvbDF8ZfxG02twQcOG4RIS+f71FN2hFS0S5MeBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716153743; c=relaxed/simple;
	bh=D5T/vnVO1o89Cvhij7+DlTrtuntOCkKCzX2QyHMtvqs=;
	h=To:Subject:From:Message-Id:Date; b=V8CQuZEgSzjPUvjuGPzzze2ZPI27wJrHynxhcTlWCnumPZp9VyzFb6tZgBO/mrnd5OXk1EK51CkxoDXMnhpkNGz3xisL6W/cbnefGg1kDlNrWUNvaFA1QN5oeRdge1uz66Rh84MJhfzaG7jMTeE13NZfPf0A9JcF+lCl8C30O/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMfGI/cq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMfGI/cq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA2DC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 21:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716153742;
	bh=D5T/vnVO1o89Cvhij7+DlTrtuntOCkKCzX2QyHMtvqs=;
	h=To:Subject:From:Date:From;
	b=KMfGI/cqRX+YyUsVnOlEvs2RMHnlvF7AlHND34Ty/2U3PPAVPB7sfU6LPmtyDtTmV
	 +1o9HSX3lOSbcG4xC9gfW7ZwKEAvg0WDFrSXJo+qbdlSQj27Pe/saEjS0vThIdlQ2b
	 dxBQS4qcjosTlPwiAEO3CQTun0EYL2sxGxNUt3WPJubqC5m2vvzLdq/mlYusfFtT1K
	 k/gOdMc69C6daEBKhVTMKKlh2V2YIFcTgM88O09QHli4Z9orPug7+kfGG//xNzH9TI
	 CO6zY+ao1DZuWmwf/9U2sxNjizMxVdprK5rKpttrIt/S+/gOpf6k2cMWZcfiAg9Een
	 98JiZhjCnI0Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C17BEC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 21:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171615374276.31201.16809997929550119812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9923abacc105e3e8a2691fed9a9fa201e81197cb593b9069d203a95ca3477d5d
Date: Sun, 19 May 2024 21:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716153742
