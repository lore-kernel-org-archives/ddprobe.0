Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3996E20010A
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785571834; cv=none; b=hnIKTVnZ4B8fW3LzTe6Bw/QumP5DhMya6vhWIJKvb6HN/wgGhpHy/WLC3uSD/yxv37Vr1s5VwPoRqr7Pqht1iOPxQfnX7LqeP4/1xrGGqN6Re9x7qmzZBzJ9YBXA1QawBtl6rvKOHE87McPg4Degoy7deUQUlooH9kGPgysGWYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785571834; c=relaxed/simple;
	bh=jw+GlfyPd0KJ37d2yUODXku2S5AO1mYOWkKgV7wd1fY=;
	h=To:Subject:From:Message-Id:Date; b=eWN6W0KOOHaU/kSzC5Z7G5mnlSRI/+9E+MVY6kMOS5qnK0sfdk6q0vL5tmlM/PSQdmYYCpq51MNiTv5TbE2YecmbL2hwNL5Ye9lraOfkQTzqJGTX6MvA5klhQse81WgD/5plfIqYAXArrFLI/onsLo8ZWHZvDdDzaPHXZA2oh8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qu7n4IBD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qu7n4IBD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D917CC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785571833;
	bh=jw+GlfyPd0KJ37d2yUODXku2S5AO1mYOWkKgV7wd1fY=;
	h=To:Subject:From:Date:From;
	b=qu7n4IBDEFu5KRor93A2F63hUeM5NR/6RrTbXxYQDfxr4y939JZ+YcyWEqRfiFv4z
	 mQ7eqSMteHh6Qt1JFIb+Vw0e0+a4PapDEG8F3R1dJkzf7gxRsX1al/z7HHGN2hIwHj
	 tniZfbwkXcook5wmRKQeLYL6DgdGKyJ3J1HUHOVr4wNMj4xU7THCRAod1Wt77kE+Fy
	 KlJGy7bZcEeUYNJBlqpapjGtwBX7YD/jPoUbp99y+QnfDhjRobw9kpETkb6rPo42vk
	 ad3xYIfVBECnRJ0jNDEwl/M1VFFwKxHrMjhLd91+S5Q5tP4IcqcK767WlNEz4CC9ZK
	 O72qmoJh7DwCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B232EC5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178557183371.12315.15884168906021996011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92ed4287f043a69d41278aa65ae272b3ec86312ded5419cd87db128ffd3daacd
Date: Sat, 01 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785571833
