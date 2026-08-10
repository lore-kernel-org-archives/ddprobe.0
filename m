Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C6D940099D
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786374034; cv=none; b=fNjkTdPL9yTRMRtlumxicPZdQz2hT4y9FCN5lCqSaqOCHoEqUK9ndMwgrsOqA8UfgJJwAgD1nFpWMw2ZG0BjWdcY0D6PYLF7AFwRqG1IIViNWjMEPX0snFbdec3iCtYuqvDoe3lgB0K5/UdG705IzFxB19E5Y6cO07/dl+KfUgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786374034; c=relaxed/simple;
	bh=grjhyRWLAmGowVK1uKql3GZ3Iauu5Rl9SrAyheFukU8=;
	h=To:Subject:From:Message-Id:Date; b=LhF0z/j+cvwSCa0S6knWdgh9j/MBjmuadtFruaQQn+MKvpm9tOfw+amT2Ev3ozQZxu/y16MUj3TCA57XFBgj6cXxoNT0Lj6xtJo5Os52iPKKb+pMHUefR//GA92Ae9eWKC0BtzZkujYfnI4wy2hjlMWPDvkhB/ArWvYy3EtKYoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mP/1td0c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mP/1td0c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4103C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786374033;
	bh=grjhyRWLAmGowVK1uKql3GZ3Iauu5Rl9SrAyheFukU8=;
	h=To:Subject:From:Date:From;
	b=mP/1td0cky2algm4A2HZIT28ikq+R+1J2buk1ryXdnJ5U4uIwwq17ugMN34rOYHVf
	 3Qa1BJzZJH2FrtUNC+17rF1vwSq9SjhXqjykpoNcKkoG6V76GUw76oK8eXmyOSHDzw
	 1NhB6WuQ1Tpp3NQpFLRC3Hd8Ug8Rd7xlrqBeFWv+/Litir6pp41PgZmJ+X8PBPcJET
	 lKd5jtK5fu8vXMepuYS3uHt7q3w/fjYHDj0VxJ7iB2NeeFKE2ciZGu+IzFhK7/johK
	 jXCeWajrdoKgHxQhUKOFpyLWM8tq6lTlOuxvedBKSgvMMBrjFUxBTjxGaIDvk7NbWz
	 L1NQ77/jLZLvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9A0C5AE49
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178637403369.9867.4398160759668227126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 367649a5cfe9978fd68e4ed6cd56e98c151302ffe16ec1d40f9c36b01caa4213
Date: Mon, 10 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786374033
