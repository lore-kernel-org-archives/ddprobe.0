Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550021DDC23
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738650955; cv=none; b=fFa9V3KZ3PkDubKGUh21VhixJHSLOwxD5VeY1spYg8Cs/vjKWHNd32iVt0MP8hXfEy41pUS/sGxMePugS9H2pBesUzeww639bT56IU7gO7nRgzv2/QQeFuH3sH4IUX2pXM4ZtWvBZswULltBT4EJejBwLi9voFJEg4abd9YFpy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738650955; c=relaxed/simple;
	bh=iL6Ro2xeRDVOaocZgEiFU3zNlSr0iOEiAvKdm3ZBDiw=;
	h=To:Subject:From:Message-Id:Date; b=vCZGXtGjRZJ1De1+0jYKEVUewJj4XwJVEOdJoiRShpXvVSb73GWrQLzBf1MXX3P3WxQ7Z4ctj+hLm0xKxHyrWmtlP+Amc1Q7ZiMP3TPwsLg+xZ1H/AuKjy4qp0DllQQDfpAzT8vckvfRA/0b68n+QsobPc3AlvOB+QCk4dsD6l4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pgi0MVQy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pgi0MVQy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EB0C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738650953;
	bh=iL6Ro2xeRDVOaocZgEiFU3zNlSr0iOEiAvKdm3ZBDiw=;
	h=To:Subject:From:Date:From;
	b=Pgi0MVQyKvU57tC5iewhkvh5GgGKc5AJfKRvS5ldyt/HET67Au3QBWQT83NYESRQz
	 lXTEtEMR7WIudSSTiDASA6ZM/H3dilSme69E7LXO8qiKCQT3pNZBRISdGBu80JkV6D
	 HtZVI2u2KPOPri1OABSr3ZIcvnXZL6e8iLQQ6sQ97k56vruKZxVudka0/AuZtw9O0B
	 /vdDcqO7y/zmaW5T/pLL8iaWECmiNHMdWtG9PGrXLxGGHlG7JaR0p1gc4uYb6u1WuI
	 FakMNjv9EbWl+gnkfwqx3UYpjAjOpquEzE8X4B/kMOFebvTCNlWafMBFaRTH+QogBE
	 4mh7QYp1n3qnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A224CC02193
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173865095365.15887.3841146146088961970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0243f84884b9896f732b35f9cd0485cfb6b21e00632e0b91f45c8c8350171cb0
Date: Tue, 04 Feb 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738650953
