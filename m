Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9F4281525
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 12:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782131194; cv=none; b=uz333gaijcSpDdKyqc7Y/pv3okIlDZU+wZW290XEXCzBhGsT8m52Lam39j4ISkmDd3IlJ7fKPP8Vlt5JUfrt5I9opOfbnMQksz7lc7oB+q02UGryNBhIbIZVougyv5ZCXw2spYHfrMZXYMtwksYbE1KebCXmKUhvsdfZQ89h2pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782131194; c=relaxed/simple;
	bh=RkpUBc+ioi+HOUhYbyzh0n4l//A9/PsTyUj04yBmPGU=;
	h=To:Subject:From:Message-Id:Date; b=XVJpTTbEoFu3GNZfuYys3pLkM1ombOWEcIQ/RKh9n3iPQnAPFJ0/M+M405LaP6d9Gbz979qfGu1t0OZ4fQRrj/Kw8PjCAJsbTbmGgOvKAnrks6cuqF2X8WktAHMb6zqvlBpzsgZyCOxUvollCo1/pku9NGYxS53CYbrmQgbuO/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukVaIaFi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukVaIaFi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5959C2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 12:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782131193;
	bh=RkpUBc+ioi+HOUhYbyzh0n4l//A9/PsTyUj04yBmPGU=;
	h=To:Subject:From:Date:From;
	b=ukVaIaFitF/bzQZx6/jHJQacRNkN/LOyfz7eMdkUe9UJZzDU0ILBIFFRWEVPcKoHJ
	 BFUj4YExFChA+0DQOFdVKHoGt3zxHvXudbgKzTqMrpVpSZfhkUJLBQdq64FSke4YQk
	 PGJLhKUgseFyOF1Ea0lmV8SSAypmWdbwcXcnn9KgPN2igcAu32RBKedPcgKB9V16na
	 SgWvOSfQqV3KYmLer98Ba0G/0Ehup1ulWsQOYIPo+MTHYoNo58DcobgqEulerjK0RL
	 Oo3gqGngzGVjXzrPSC6o6KZkHVAer0d+ogJv0LgXjlZ/pNhNZgPxvGeNvFSEv1Eoml
	 5hSnISpglXUUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3298CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 12:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178213119372.10620.15855453120849727583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc69d6200da60b92380d00c7229bb446ff88c0d0f3f32f4adcdd48fd3579ae58
Date: Mon, 22 Jun 2026 12:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782131193
