Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7C335C68D
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789234834; cv=none; b=kXoJPp4274st1WlcgP2i9aJad/xEGdh+E/evEHhvoxPlFmXt3u2Q+GeXf0dueUEJUtBxPWPmiwQhfLSVFY0tpxXWdRLdf9P59FF+uX3egCNUEM9O2sjqXdURtqdMXizMqQXoV0jsqjTsSRx0b7FiwgNv28RMab6K0iXGuOKRyAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789234834; c=relaxed/simple;
	bh=7rKzYoHommlX1qB8REn3VAM4BT2pzJF+dLxueGzA3Xs=;
	h=To:Subject:From:Message-Id:Date; b=aIH5nsWCt3lF+rysTQBOt0KQd3Lg4VvyaD/fd+7tIiQm+g/r+/N/cq1DR31gPUQKVvT5QCvih3E8CosK4HVaafkKIbcyfvZxqinqzs+KsElZM72hmQ9hZ+ui9hURxq+lLcfU1a6pH6TUkOzkmD73EQbSoSEzFqder0nspHeTkWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WeEWNMBm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WeEWNMBm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0C3C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789234833;
	bh=7rKzYoHommlX1qB8REn3VAM4BT2pzJF+dLxueGzA3Xs=;
	h=To:Subject:From:Date:From;
	b=WeEWNMBmeS10b8Ar5qTKi5QqmPv0mDWEZYB9tvEgFKyljs8dOgdnIELonEdwjbplS
	 J+Fa6liZtTxnrLJJlSGzqav0g8wOr4QOzLIW08hhQdivOD3I+hkP5hEE8KLdrie9Px
	 PBaKQcgDQJImXRM+DlYnIL2XgEB8kjrCJETFAmvJBvBh/lXLV3uOXgCUVbYZ5Azre9
	 Ke+TDKCwjXwRz2c2md9ryi90sWohc8VrJhndWng/25M3D0u2aDNMfy/aRTaCdZ4AJV
	 FvQ1e3BNTqchYielglLhzgF6SoBMDtw0QPDeINVgU0hSQWyDGXg8/G4WGHTTg+Wd1Z
	 MFzV/NIm+bp1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97B6C88E59
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178923483368.28896.15134041822486092791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1f114808e85ce897db9548ae14dddee2e88662e77d584988599baf288f1fb5d
Date: Sat, 12 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789234833
