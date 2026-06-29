Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B3103C3443
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 07:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782717514; cv=none; b=beFSu4ULUQwHwIqBh0ajKLUluRYRr2zzfOzFwt+48eg2nPCqpz5Lgep5bkMg/MmQqPhJfeokWFqhKumJ7uOBLI9xpnWMks0hbAcnQu8mFky6muG0oszMxukKcQWO2ATvq6V8nKd8HB2iglZavRAwMEPYgE5brYfR6+4NqFpyXgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782717514; c=relaxed/simple;
	bh=IWEneONZqG5yTz58p834J4WGFpglG8zCAPs2aL4aRXU=;
	h=To:Subject:From:Message-Id:Date; b=hTuEs6kPI3K5zErP/ThrQ/8l7mdzDbVq9at3kiyfwLayp9Ju+C7eKsU/B9XJZ7vKTCur5bVGiRk6LdB4Xlk3xqu3jyc3KhK6s1CXm41VQjLBJzEy409Tq9zacHkh+J6MuiOYorzTcMIUzNyAJ1NOynZItSVbjOtFlX441dGZ2Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBj6+DvH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBj6+DvH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9538C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 07:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782717513;
	bh=IWEneONZqG5yTz58p834J4WGFpglG8zCAPs2aL4aRXU=;
	h=To:Subject:From:Date:From;
	b=GBj6+DvHjV1MObvVKjp0FKrFqhvooPbzTuHohrT9Zbkx2/q9bSp9xC5opTqCwu15H
	 cbRfW6ddKtG2ffswoP2l5frFz548drKsEu9KvDaiKwaHJ/tFhqP26e3Xpoc2bZHjwr
	 16TJonmK2xUqwUcY6CzRcD/5OkIkszcJIZSj+Xm1jBfjGElbLQhGAoJo1cJwZCE9V9
	 9PYXB83KfP5ttlXBfFUPBkm6vKSH+7AWflRf6EZXHrVaDFRB/fhI5/R7iAKV6tc+gz
	 4mtUWxboS6V6L1Y0mdI1bDi/kga9rqavJFQVl3s3sCN0X5iD95WMXKxLwQwwqvVD+0
	 CiM97LkzueDwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD282C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 07:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178271751376.8254.11570229145814959204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70fa2c5213a214b0ffc0a559fb8889a5d6c768a8673e3810b8144af2a961d612
Date: Mon, 29 Jun 2026 07:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782717513
