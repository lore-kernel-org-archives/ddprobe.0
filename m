Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F7E481D1
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732956954; cv=none; b=eX+dBLs0U4zOdBNmNgNq1K+qVeArGgFKVI53BR+ALKy0Sxj6K45UgWPWoGhJK3geuHuYWiVOeC4TR7hKjYSFI5m3TmEeB0KZbqQYcdYSy5M0Ln4xJYODkcpgwihHIIRfvnQwxEHTNlvLgaTHdE9u+JIg278Pg6K20zGP6eKxrUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732956954; c=relaxed/simple;
	bh=Y6fGDvq6CzUe8KFObNkd+PND3R6lEJJLSnWR2c5TL0U=;
	h=To:Subject:From:Message-Id:Date; b=amzV7brPFkzOvDEQP5oCv+QSstvILApEhNl1uPwkym83gHo6gI2U0hvI4HigZyEH9e19+q/u7ykBqsv6DAqxzUdc5yEJYauqMazb3NUEniASDvl7ks4JK1jAm09hZM8btGLvl1pL+TpTlEDwOzLFzQtgXBzUUy/F0D6hWaHvxhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yd78ubs+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yd78ubs+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD855C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732956953;
	bh=Y6fGDvq6CzUe8KFObNkd+PND3R6lEJJLSnWR2c5TL0U=;
	h=To:Subject:From:Date:From;
	b=Yd78ubs+mb0RZSei0gHsqLJgMktd8lqhfoU515qzWKgWseORTyyh3S8E5hZ/YSh7b
	 PRwTiKj9Fc5Fsk865bD07KXF1ol6cxz9Q5DtqJjtZdZp8hZXLC2UQhoIr94NoJ9+Wr
	 C6DTDektdEbucenYAai6JH8vKYQw8S3XCb9AF6Uz4M4ZARfTXEe0yjtyQt8wQPQXrh
	 U0LexqdT8CQKInAUZVI0DkBog/Q6QUz/pV0xfcOpiMIlESFxaVZQRL2be6Me/vOIFQ
	 SVuXxZk9X12FCXFkM0TPAd1rL1jVG/qGpp6xr5/E7wajVKFIIuSo7M/vjfbBwr9N8T
	 oc6LQYYXjZAYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958DDD735FB
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173295695359.10189.17010410740570069939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86901b3151d0a4991665638c8726584108b7235ee98b81305ba7bbb9e0fcab1f
Date: Sat, 30 Nov 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732956953
