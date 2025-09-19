Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BC02E7162
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758269994; cv=none; b=EWtABNj8cVeyugCmto/OJFjjBMJijzVKy0Rtx0nwUTiW63wqXdZI4nfN+YO88X+X9QWlo9WPuv2CjI3MfMJoiy3U8YnBw/jjS06Pq0IGr+0aA4+D2haDqdGAVyNSNfskkWxKXJGYQQL+8NNZbnUIcJj13QNQcE7zbUfm0EMX46I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758269994; c=relaxed/simple;
	bh=ly5zB3h0I2vlq0wdyH4q6a24N7nlXuFaK6nC/fBihQI=;
	h=To:Subject:From:Message-Id:Date; b=aL1CLBJyszCCw2UfMLKirY2oyM+fX7ltyBazbxa3vfLNgRWvQAqAhFOpWrNhL1/uRsEfD/qjLmtHGZnOOlKejABmKFufQyCwbEbWHgxcrcMy0GUt46Oi+itTKLTnIQVOkc3R2qyu7gnT+lf+J8W1yermOyc8ZiYqKZTiqgvG8ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pqbtv/H+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pqbtv/H+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8702C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758269993;
	bh=ly5zB3h0I2vlq0wdyH4q6a24N7nlXuFaK6nC/fBihQI=;
	h=To:Subject:From:Date:From;
	b=Pqbtv/H+Ni7WN0D66mUTs4kuv3fpYZ+TR0UfC2FVgyV/l2s3kWKXTqCj8wdr3gqh9
	 QM8rLTnMTE8DL0F9L64ZoMuinsu1I/uNDHhPuvpfCQDjdzFdTFgld6Iirt96NuuTzT
	 DVVNExsNWpmikaCZBPBZ/VekAvjg4KZF2CIYdOpeOWKP+KwAX00Jt1WNWGc9D7pbV0
	 jJMx5k+zFlEhWdmWIq5+eLijt/14OcXzflYha7PLTFEOqr25y5mFMz0zCjmqD7sOgO
	 F6/+E4y9prSyUaVTbPrlOyqKwYJJa6tq90WnI5x8CvJnaeg4w4uRhzLM2pe3bBykII
	 ZHd8cA2uKvsfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C76CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175826999360.9526.14421668896692281694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0c0fe45e8cdaef3bc48b1a630d87e71847dd9a224c4db9476cdae02c8ccf3a8
Date: Fri, 19 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758269993
