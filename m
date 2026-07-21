Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A253D3BED76
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 08:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784623714; cv=none; b=oAfWylX+2tUIGBuAi9+wwTWqEsvEQQuxMBWzmkK/BLOm3dJwXKvm3Bd4gCHbsBOTVHQ+kueDkwhZuK6ncnmL+hSjZWF0GuxJWul9IcmGgE2WnWL6o3BI/8yaYexH7ENS3ndELTOBNJ1G3T2ekzOD5+5WvPkINacOl85pgI9M7bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784623714; c=relaxed/simple;
	bh=IQ+vq0f9aFoGuDTBdOuU456gIHnp5obwAt88rkxlr9Y=;
	h=To:Subject:From:Message-Id:Date; b=Qpkkp5a4W2J7Z/1NTOzh/FfJfXfx783kr1ZrnwoplA+lFFHoBA2mMXgdgM4aCE8BBW4EE8MZmf/XkyzGViWAQQ9Vy7tXZLCdZzecxikRIGIyYLCdCCr9Flj2FDZ9vDd2tMN74Ys+CfR0qMebGzcSuyVUU42F5Z3g2Zf6dlKXcU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qA8c+Vav; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qA8c+Vav"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 26E02C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 08:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784623714;
	bh=IQ+vq0f9aFoGuDTBdOuU456gIHnp5obwAt88rkxlr9Y=;
	h=To:Subject:From:Date:From;
	b=qA8c+Vav1oglyiokr12yjAWQ/2QgJOt3N+IOytoqj+xBZA2ufJRtgTCdFUaG/V6DD
	 InfZzMTryJzEBN6K7jAUqeOKEDH973fczqDl2pYJ/prjpkgPIbnkDu7rfiCuyRsrh4
	 RcUQoNdWGc3XMAdLgGZR1j7uCA81Oz4TYZDwP67iyqDgkb+Rr4u0v0yEXmUkqx1Om/
	 kU9DieJQigDYSSMUUBQYv0gvfgexX9iXwWNVl/cor7IV4aor1JCzQjQGJSTXgz+dQU
	 l3sOWecMWbVFMuYd46EfwEUJoIbCWwRqDx/W8jjI0+6kNClqjeKYrgoJk36mGWm+W3
	 IVmmYR/3CNfpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C56C5C44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 08:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178462371379.9975.4076695249953506815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d959175305a5dfa26152105d45518f1869b20d2594bb2d28e2f969db26a4597
Date: Tue, 21 Jul 2026 08:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784623713
