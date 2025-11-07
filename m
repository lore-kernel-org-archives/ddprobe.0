Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B37430594F
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762511394; cv=none; b=iqgXLOscMotuAXctZRz+uCxZ+0WUT3TlRV1AE12LDK/KUWE77U6gblPCKavTQPh/SKe0VxA7S6PwRO9Flo6oIHJkwd28egPgEHLuOXq7K+YsxYfTDAiq1dlU9lXnnMriackSWzfjgkbxUwHAhQienn/ryeEz3Q0syPHsb7r/MPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762511394; c=relaxed/simple;
	bh=Bo9/fDoSBPN3k30ajkvV73p3FINCBuMG+SZeZkIO6jI=;
	h=To:Subject:From:Message-Id:Date; b=ZtFfoWb37kHQqkab6idIp5a2Tj/w5/LBkZGXVhioDhhYZRQfP4XU0i4BMjToEOw60aNWMBxPW7glGynaKNIiqcnk0RzeEGtbpaq14h3Vnk3xi4KrmVNrYsYFuQ1vkshxyS6NfzxhlRd/X/cAPcqkEejHZwgXAoPgOEqJ0BoghEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4OEw6wY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4OEw6wY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F995C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762511393;
	bh=Bo9/fDoSBPN3k30ajkvV73p3FINCBuMG+SZeZkIO6jI=;
	h=To:Subject:From:Date:From;
	b=T4OEw6wY9bae1hGGvg4gZZj71ofq+K+faQHyfTWuprStkycrnKYV+gkgqTMPHjSdu
	 jG5/Hq78aHzUsWbjX7ENjvon4jpaj6Reophud0t0ZniRs27kLx4GBtWzSymwXRTuT6
	 z4vumzH6w2RWArbNLZe4J5gNwkIjdQ432f8hNXyKqeLELoJBAb7X7onWDPhQwS+z5B
	 /TtLpRwPaNqFKdlZvsn5YgdgtiJLNCOS4EyW2pgFAEzq5g6BQNycgip9tbduH3Nd/J
	 6wJ5ZDWUS0UZKNwKhJdaW2tme+2n/ieO4AioWxpVILg2tBCzGQu33Fvm+65lQwg9Df
	 mUlh1CGwrV4ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C7FCCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176251139358.19440.3763979988796770593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d232547716f05dce07f272387df30f81efd0811a5791f866677bd3b99b74007
Date: Fri, 07 Nov 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762511393
