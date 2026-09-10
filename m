Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14242361DB5
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789003834; cv=none; b=Lpw7XCxt/DnQEQCtbM/kqXlir0qmaZvUsNbemyp7I4DQAfX5YBoDu5lscRhk6ULrKETkXxOPcW7g6h3pR8BkljErVCr7PE8AAzY+HMlNr2vEt9CE0K2EokLP6IUqmYQozCwylLVjAL1yQMDsDPmcfdgz6+dXyeKlFJMFu4XAD4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789003834; c=relaxed/simple;
	bh=3cixDR3msgcZhxN7k5bz3XMcW4DozMrsY2Jsj1mQzUk=;
	h=To:Subject:From:Message-Id:Date; b=k/gvxkvfzpMYuWEecnaBXDr/UaogYhCc3KlflOoqzB+q3hJnlzuSknNfNOkTNs/8eeOaLgc+xkKM1ZfuMe9LMb1fukSIMSDyZ4GKk70YMK/lMT7jZn81/R6FguWoYzOcVdj3bEUwEdrpvrXESYirFNiMUGWnIsqmEd8osgsjBzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/KAp0bi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/KAp0bi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A60C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789003833;
	bh=3cixDR3msgcZhxN7k5bz3XMcW4DozMrsY2Jsj1mQzUk=;
	h=To:Subject:From:Date:From;
	b=m/KAp0bivnkQw2YA5rBD5EBdUUyuH5htJMaY3R4D+1UXpLHEah4tUHPipXZ2c+BR6
	 VUbNq7hMrlII5j5Aw8sE+XvuVLJBThE8IXbPwnhFKy3hRHcrhtIpF5C3ZDBzgPNzfe
	 7YLdMM8BZuwDyb7xjmN9v2UtzaRkvG08NUaeY52n0h0wJIGPiUOUfbfz47DEqBm/N+
	 2zEDWXohB9Rp0K3gsblNDfp+EjCbylaMBqNYU2T6sssCc3TwRqHFr+K81GdXmLlPNd
	 2XwkbkJTHOry2Lm3f2vwhSckYDQ4RJEXsLkZlsEGslEUq7hJNxytMCaIERcwBICIPV
	 B4b3F05iazelw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13E0C79FB6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178900383368.10767.17142783730643403959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8106fc7229bab90995b5f19fcf93d95bba196f66af9606179b9735b7e1299192
Date: Thu, 10 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789003833
