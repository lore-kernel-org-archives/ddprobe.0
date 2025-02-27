Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4314C1E8325
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 05:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740635334; cv=none; b=o3CYw8CGc2JFsYoQtnRwgFAxmV6T0DJ2EMLDSEFSz8xwyInyM2nhvjfjVUsoH4kWhh8pylK+O4/8xx7mQDaauX4KD4ZOh5Y0k2LGHUTGrVuqblGj8IuNJyFX+GZ3Hsx5gc6rsnCW8Vt9MmGCmG9rT7I6f7vPaV/5uv6dGxYPZg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740635334; c=relaxed/simple;
	bh=nhe55LLU4ITlgmuSYlBAISDaCC0rSBNBOTAOx1CN63o=;
	h=To:Subject:From:Message-Id:Date; b=irDBI2YzcWhzNgyIRTg1qMYFArG1uIw7V/GQzFXtUJEShw017SD3EoEqa09AQ8lSI7++GUIwu1Yl9KcFPW423oNc1tDd/CaSK3ytbhyjoueAmcfY10j0J48E6A2QTyuBrnImSNm7Un0T1CGnsWw18HyHF72gkAzyv/WXvPhJgpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuSdE8eh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuSdE8eh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D62C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 05:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740635333;
	bh=nhe55LLU4ITlgmuSYlBAISDaCC0rSBNBOTAOx1CN63o=;
	h=To:Subject:From:Date:From;
	b=BuSdE8ehnnmXIG/AhKuCuUXrftBWxqfPCcEYqonYKjNQw0YjTaxz+ECSvLeEgsIC8
	 i5IsdCJ2F6cGfkYrGodfJvAqBUrrG0K/LYgkizaMjHse5mgI8olbWHvWPkRmYpn2JF
	 9oRjYGUtRj7m1fI4mK/1AjBFRvIJXUdNFBNE44zpmHINl9OcGmfEdbbP76NxBy9YkO
	 +w5t826Sie7tBEygRS7IdKyyhpi3cOB3tXr+dq53HMFUNL3Quvoor44cz7LOqbR5ur
	 KC0qKNih35ue+JptiiJNSv8bpnSmMjaQHz9TotU4P0atT/bFFzxyC3stWuHJc2agMz
	 8PeuIIq25W6QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994D7C021BE
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 05:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174063533362.19806.2151330611364400580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d5a5e91d4cc72410de24c1635166c426a069acad87401e3932e2723fbe1e2c
Date: Thu, 27 Feb 2025 05:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740635333
