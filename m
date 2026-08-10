Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A422342CBA
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786389634; cv=none; b=JlwCh8VwJRTmvCGWKpKqkV/MGX13B4PIRUcZo7RgbAj9AMkirYVvUTB1zTk6rSHJdp77bc2UIZdUniREKRCe+n6AV0PYRfwpUirdidAelKatIh/QPxqoIulimYX1gxwESpIYomv8evbU9s9Kvpf9PqMxxbFkgiveOgZ5D5jPpsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786389634; c=relaxed/simple;
	bh=25pNZBn1n3bSNHoMDZgRj6Mh+aNwrj6pHlWTHDDtsLE=;
	h=To:Subject:From:Message-Id:Date; b=dnymhHGlSfqVSDk8H318Du8IFF++UlcgkS8R7M/+Zfx5Sn2V3iDU0BKWzcqpiGxLp2g7b7Jdjbg6bcMzAbmolP8gSYfavUd8Z2VnEjDS5wl6LX5Yh9BCj5OfQEqpCfNBLMlSuX9PmC3g9U51l6QAAY/Ql+bzlLrwx6YpQxrfZW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dtoJPQzN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dtoJPQzN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE19C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786389633;
	bh=25pNZBn1n3bSNHoMDZgRj6Mh+aNwrj6pHlWTHDDtsLE=;
	h=To:Subject:From:Date:From;
	b=dtoJPQzN9IyaZQ2ZEHoAwa8mmtvuTqWZK1cq7WQXgqOmYDeTktzKKBS3EJ9KyFisk
	 xZYiPXl78/GjJqXtigaWi4Jrsd3M0isxfontpIweIpUT4La80l1PYNsG9zoZOqC73R
	 +oMnWn88V3qAFtV8EsN6y+n3SXaad/vPbv27bRFNWnnVvR5KX7SkChc1OuLSXJOSf/
	 y2idXjOM2mTQ/YuDxKL/0YSDqWrV+ejcFHv+93i1UY1isZh8TcObInyKFvBe04FS6K
	 jyD5eLnaBuZc2Q5OOV1M/3o/a8ElT3QGjRslYVFroeA44uJrIaiNRY9axk7y0iHrOU
	 4hkcap1lHssLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6B1AC5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178638963373.17756.6238859166148742759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de490661d1441bf472b7b19ae0c5321aac2d9af817a55d9c213272a734e95706
Date: Mon, 10 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786389633
