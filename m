Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6021EDDCD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743040794; cv=none; b=LM2GFUKhw6f44gfsXeSazPM9v0yTTFSmkuHHz929P3opEu7yNoP0fefd5UedQZII8HnUopfJ2h0imcHBaEUGEP2mEF3dOoDnd94T0O9w/5QKJLzpyOfhuhhnGhrO4a1JBp/UQBDG9vMDvuTWBx6jpk9/oat8rvfVMFSmM/jwt38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743040794; c=relaxed/simple;
	bh=/SNnoWn5jAEVa1yn495AFZdu5JDtKmKi2ChqdtsDcJM=;
	h=To:Subject:From:Message-Id:Date; b=hMyMbWTaFBXLSKg0QBTLBZHZCZZLACZ3QSoVLpx5kvZyxtqY0LcYXyZfmre2hPTZt6jDho/LuVGCuqta+AByowTbF1PDOYWE6tDyfmcpnY2myYN8S6QRyGgzdYYFD9jFk+dGBN3fuOsnXa5G1b9L+l85586MUgSSEJRHqlNXnWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/jxDC6D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/jxDC6D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C281EC4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743040793;
	bh=/SNnoWn5jAEVa1yn495AFZdu5JDtKmKi2ChqdtsDcJM=;
	h=To:Subject:From:Date:From;
	b=q/jxDC6D6+ATD5NeLHPZs7nn8rCkLZDvoU+CHrefQrKwNAABp8kex0DTStqktbsER
	 jaYLrnAjtUKm0qZZNjF5GY1qkuuyfKpx2n0QdqSuIfHJigYV56FeTFdlXQUqkEicI3
	 FL5L4Cw7VRnUHMI4IQbv3TpdOOcD595ZF6daRDIXVUhyQkbonh9gXF2oqeJLsHppgH
	 8jXs9e0DQTqB9oqT/GYZpF8/L/d7xqkwDEf0JibAvhFqnT21CXZ1m0tU4QEaSdX8XZ
	 M5WNKoRZJk+Co8dDwrpfbWy0ZpqxckWDW1ZVueH5X/YGIXodnoS2fxEzbdaM57W2jy
	 rr/Pre6CFf8nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1CBC36008
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174304079369.23981.10576227954980069382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 193295675dbbebdc7eccb480304e1f9d064b56256ec2dc955249556d7559ee2d
Date: Thu, 27 Mar 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743040793
