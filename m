Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B1C219ED
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750728594; cv=none; b=ekJCwKu+nvRDZ/r/yW1p3UoDNo+833Mprm5R0JaRgOZcwm2YsBN9iyccYbSEnaEdRGXmPDtSO0sSnuwxtj4HRM22I1SalVDRlbdoSgjfHsGwnssFG5SaCK3zUlf5y+287bOuMSgI7xpyGUMzYyA7UhSxo7VmuBDeMV0tcKzgVxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750728594; c=relaxed/simple;
	bh=Ip+/tTX/hsW+kIlI0mvLYcu8JaYI4RvQb5XtfhFBF4Y=;
	h=To:Subject:From:Message-Id:Date; b=uQIOxggrlQlgwBiwGd7KEcvfWy1MDWoRui4em3M6nySr0JcnHTdH/R5EUmcurz8LP0gjxI9wx8Lw6QYNaQpuEZ1Ol7i4RVD0tCKSYpq1NTJuLhT5m1oNF1PO4NujNZXNJeQysImt7Zr40UJpO8HCy0DmPn8b6tI3zXq/hSn0o6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjBZr8Xi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjBZr8Xi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AF4C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750728593;
	bh=Ip+/tTX/hsW+kIlI0mvLYcu8JaYI4RvQb5XtfhFBF4Y=;
	h=To:Subject:From:Date:From;
	b=XjBZr8Xit+0XD+/0qdin3m+UgqLmPKwSXu1VSl18IpNFLLxov0Eo7XKCqPU7QQ+MO
	 WVAbGrHq2NRtYTJ6JfVDnEiBKD95+Jdql3s8+RSzKdNEI2OW+rFjMrvTrRog/l3cEE
	 McM1LKGHDpT08wfd9QYXcXgV4Ms/MrkN2Dq3DsyDTwTMD3+3L15NVFfbEkK2BqQmem
	 tI545Lx9qVfKoA3uVH9+TAi9U7sCv4YSby5ovGHJ1qDf5v60Ytn/bchTYjaJt2MnGL
	 t/UmUVa6luIq4Z1GJYRoRW40qaKF83kaqAC4tdpgC7T50l+Xzjsjw3XRqJUJwb7WbQ
	 Z36ftlJYVv6vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92543C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175072859357.10540.1754130831025561998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f93f48bad187649ad10f5d4f9ffe5dff2afec5508881155c873f62c87a6af3a4
Date: Tue, 24 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750728593
