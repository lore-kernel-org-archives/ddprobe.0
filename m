Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC79623506A
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757441993; cv=none; b=O7JIalZ1ppVG14+4PZnsGFTJiIKSMkiPYyCDwt0AnNgP1exF1L6+oooUddVQ6GQkhwVnkRtzqOupVq0L9FPgDSbCvUJe6N/GW3GUlB52gK0Z8KiTE1SKrly13UE054oYV/+qKfFAsBsnOcKfNn1L6YMlhJZpUNUcA8O7UqFa+pM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757441993; c=relaxed/simple;
	bh=eJY4Efs661TBQvdld/wQNM8+tylOr8/OS8bmVgaXrfs=;
	h=To:Subject:From:Message-Id:Date; b=hWRvLtgBwKz34EXq6VfvMNA5GoUjIQVUClr8rdGL9pGE2m9bcP9yCuWy+lqVoScjs+6dQ7VHgmgdQgBlKVnWNDhdemdpufQfdvBRs+A/1H1l8X5JBrGJWnTDNMPwjDWMwUby7AZTAThuUK9DuT6cwaXvwBC/+AwxNkU11gearrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YfWcZRFg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfWcZRFg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E80FC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757441993;
	bh=eJY4Efs661TBQvdld/wQNM8+tylOr8/OS8bmVgaXrfs=;
	h=To:Subject:From:Date:From;
	b=YfWcZRFgkDac7R+FQ1JA9jeCGVE20uUtRbD6Zm426msuXZviK7M3x7a2+NpFgZF0Q
	 rPbuxOoWN1WjNDWy0l2rJ2Xf//HRVngAFsNk5GgvFWNG0TiOt0OzEYqwBKtTd9zh33
	 dgxBPU4gFNmogUzW7z/Q+cldH/837YlQaSNxk4SMrckWKmryKHPkWkBxi1O6K2bJES
	 NAMZ8l2HMmf+hW5mBKgwwx1V5GuQt9fRtsRiY+ezNCCi6XIEIUFXlUCCrSKeukwm9Q
	 e6+IX6ug3ERagmYnhONcbQeVhdC3ZaaB9eU768AJh3d9U/i53hhGWkFrNzxbWCogn1
	 NunScQ5I95lcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9031CCA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175744199358.31505.11384971016344745080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61a24986ff4ea1635fe79ca5a4d46f852fbccbfeed10d0e22bcdfdf1086bde6f
Date: Tue, 09 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757441993
