Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176633B5310
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789450834; cv=none; b=dlgrEJaWdWj/QPdT2u1sW8M0FkX1+hTw5x5tNj31p3u1jYE+sNMCy7X5gszLfyiET9YpTqMz/4w/+y9Tdcox6vUd5bYg4C9LhM88BDwfdpkWEGg2LEdn+bOwUoK/yD8RTmN4RQl2cvLBxdWrJSaDPZ1w4+O+W8rNIlkZ+2kvjH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789450834; c=relaxed/simple;
	bh=oI11dCyw2alxJJ1l04C5AGlH6abvrLxqCq5gKu6E/7o=;
	h=To:Subject:From:Message-Id:Date; b=QGCplPvR8YATiE1KXXWoccDWGYhR8lNT04oi/D1s3nZ1QaeiXCK35PNr9Mg2DK/j2UszyE7wGRUCXOGKCWABXZJFKC9QBtzYjGv2IVa13GhKTstKW2kIKmcUb+WTgKQw18UAPg4B/c47BZO24Lcnb/rDTETsEcL7i980n3tajzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9mDAIxd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9mDAIxd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41D9C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789450833;
	bh=oI11dCyw2alxJJ1l04C5AGlH6abvrLxqCq5gKu6E/7o=;
	h=To:Subject:From:Date:From;
	b=D9mDAIxdLL4V6Wi6BDh+A+4m3aS9y0CFWdIDydIfMO2fXRZdYLnS8aJ+0MNHxC2gU
	 Eedrph+ydDMJTFX2IHoIimqckkHqaZugQrvuOWQunTAOq2aD7MN8jy6jg9Ky3fq6Qy
	 3Ys4g/vHXp2JOBcWJ9Dp2sOlFjw/C6R134CGBH+wKrIQrD8Sv7NNeiZI+n2vBnsPdw
	 RD8ONXD2s6OLQcZmJnCxglGxP+s+lP8++okqLn+KCIi8/pLjXyi7jJ9P7P/ILw8keC
	 98wIWQW9aYP5MSQkdardfu2yxg3LaRy3nbKVDCt30cxKa+UVbm9L/no4+Nz0pKdTGl
	 Lb1R1oJa4SP+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD50C88E53
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178945083368.30258.3375415902828919350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a4d8d86efb26be702713aea0cd891d595dced76349f3a90e6243e33d29994c
Date: Tue, 15 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789450833
