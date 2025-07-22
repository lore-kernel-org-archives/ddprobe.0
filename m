Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC2F422CBE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753192793; cv=none; b=F0maw3wt/P3vJW3vStZBmfAgeO3W22+wSnpajFQWT720VRsiWKAchR0YjAuPNouCRE1Mc9/IckcTEF27tOT7kHsce3Ljiia8gDfHNuWscgQIOrShKK3R8RJ6ckvRAViEekcGZSh3GFwmvpkHMsIqDp5WGrg7L5+3QpX370wn+1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753192793; c=relaxed/simple;
	bh=dO/jT5Q6xZPVT7WEdKbQJm32PUT4805E0QbZ+7dAG14=;
	h=To:Subject:From:Message-Id:Date; b=D1caKhEJ/eWQaXJ7CuUUZqGBRK+8a7R2MrTwTVLGsslTLvPrNM6hEWxAaFazUcv3o27dZKGJP5AYUkCSHgRTLc4ksqiy0wFPyW6dt/qvfJj8OyJx/Sy8B9cmJh2D4Z0zHCV2KRY/eGoPmwgjjX5RU6PznvJRSPSWbPUFfQYx76o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GD874cKS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GD874cKS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCC2C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753192793;
	bh=dO/jT5Q6xZPVT7WEdKbQJm32PUT4805E0QbZ+7dAG14=;
	h=To:Subject:From:Date:From;
	b=GD874cKS+AlIo0dNGSQB1ChX6jk2V5Stuc/sufF55rJftqB6zjXcD4qJc2xytffzb
	 76ajKF8DaFUu5f6byG3V+ZmGPBXeKlpd5jp32IFYndLYn9yqprHFaWSXnJcA0GG+uk
	 8Xitbrn+4zipLVkao44gp3e761sopoPsIDV8MkKg5o6gjM8jEP9viI/lpTxnqfEhMp
	 8XzqMK5f1eSyJUJHR6Zi4CBjxVftczFwPJhhjbdGV7IZ8xCzW6XXUzQtsaHJPCOSxw
	 R4Y28mAzQzS8dykXK5EINxVqmGpBif3KA8JDaSHCtizpQjV/YFyiGPFBPnD2lvjmfr
	 Kb0Ov19v8zfWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BBBC83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175319279358.7329.1280929205472984435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9189d8b86a67d98a18769674b4ec5813938334bd05e2af2257f152d922e798a
Date: Tue, 22 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753192793
