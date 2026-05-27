Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494F73F86F5
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 11:32:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779881559; cv=none; b=TOvvS54UcxvH39KJx7w6rjeTXOErV+1m/mi+TrNNA2LFR0M6gKqZ+EMT1lu7ldSybYp/HlONu0yJ6jLUh6hpX+wwE7zvdbuH8ZxNMWTcSbjZMw/kuNZo3gNpur8/vX4IhII8K1L5Ix0pqUkcohPKaW8rO9DEcJDKRL9pEfPLjuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779881559; c=relaxed/simple;
	bh=tMeCpuayqIR92EwqGKv+7dl/iWd72Oi+Wq3zaFWfvt0=;
	h=To:Subject:From:Message-Id:Date; b=qNc4UFw9Lm7PwwoEiHcQTwAdVDjsbEZ4xPpM551HBN0Gm4z9OU9yI5Yb0zErP4knRbKXf3E7xepq0iz+f1ZJn2EhjToYFavAaEgPsUkhYgwuXWGPtfOaN55tqbIs5bjsIGiDdt0uj1VNW5EYU6FLH/f4Mta9w8UwLixSySSv8zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaMxgQEh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaMxgQEh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C64D5C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 11:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779881553;
	bh=tMeCpuayqIR92EwqGKv+7dl/iWd72Oi+Wq3zaFWfvt0=;
	h=To:Subject:From:Date:From;
	b=aaMxgQEhpnv1JpmiVrtdF1QDfrxdxLAFHReLblgK89kxRH0zT4w0Mpbygr178dGWc
	 9orHbApr1XFiJ6zHXx1fWRC+UUYTCwsMaZmCqqIddkkQwms1WpdM8yGQWbubMBUefO
	 0WZafxjpngd+6CmygxjQtopNrm+5wVVw8heHp4taPSsoD2Gv3xuS5VNk4UNtvTFnIo
	 pTMZ3YiUNLktygEEJKCEVpUXEeJr8ynmqQb6lWzKMtQU8QdidGLnPedzIm9TOrLgEW
	 VxuMi9/wueKki+/tuiCODH6PO8OVrd2A5YS+x35WdQvbIH6t3Fo0tmWun9AwbtaVyB
	 ir0lRnChi2AsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBEBCD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 11:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177988155368.17393.192467515704471955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5815c7e5932e3d4aac94518072bb630ddeba82dccc81788eb954836a324d9f2
Date: Wed, 27 May 2026 11:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779881553
