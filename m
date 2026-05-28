Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D931925BC
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 08:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779956554; cv=none; b=QouUc4y5MFht6AsLdiWbEnaEgqdk7MF0CNX7zvqgzGcIjAy7LV2eh5wK0n3VIcBBEnOKuYF/TNeaAhGj1NRjnWeVEyJqwOZ4OhIgguwCABSwLphqfukQ4XN4lYqflDBoUfkSZdG7IfgIx1HumrznVTSmyRnyEZTkAJbrzJsSSqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779956554; c=relaxed/simple;
	bh=i9P74rGI7PG/vCEnmE5Aiy3d/S+G1DN5hiUf5TcK/QE=;
	h=To:Subject:From:Message-Id:Date; b=JPMulWZFOKr1zwP/zBMd6N0XojV0uQvyKDp1yR1bcsdzLFeRR1ZsoaqYwPRU+1+J8ekPkumJmxJLHeDqeaqcBblKYo21vB/RoUwONk7kd+K/2C5v1UANT6mlDD0zYpPCPRUfCwhUtGiQFOTtCM7nLFqiaLLhPu5XtOKofn4p+PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHe7p/n8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHe7p/n8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE36C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 08:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779956553;
	bh=i9P74rGI7PG/vCEnmE5Aiy3d/S+G1DN5hiUf5TcK/QE=;
	h=To:Subject:From:Date:From;
	b=gHe7p/n8ln8MOf/C28Bfhs+q1Dv1s3qpZXxIaF5dhu3BwIzuLYl4q6BIgpyU/3a7S
	 rxfAVgDClizmKP+j4cK0WTLBU1IlwtjaugOf5PJ/c+g69G8FSDkeGFRCIwAou9MN3M
	 iUi3h50qie4Z5583ZwP8A4TS2Pa1FJbxAv8i77zl4PwX7Wr6eEy8hxjjq2ojsBGePc
	 VV8jXrO2t379pjcshZkoHpbdtTZQT0dLgNcaqCKUIf3CzPt7aqGOZ7E3NimClgl1g5
	 S5uLTqJ/XGO5u0DCSQWmsd7ZqGMxDWNG0iboUI3D/4lDMtYj71u7zyTV4mPkcp3bIm
	 5T8cqhHrb4GCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7345CD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 08:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177995655367.14283.17092252677863848847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2c90eb3e8d58919b71edccd77711082a6033ec80b1f2a65a31064a69263a468
Date: Thu, 28 May 2026 08:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779956553
