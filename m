Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B602C21FF
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785696634; cv=none; b=Sm7VrD34ZYEw2S0HuYwZ8imZ/Jknrw3kYuLax4ZEkBM02jY8EAW715vl5E/SVWS+aQYt1X1w/P+2y0oTizgi+JpaTgAaSoPOa7q7EWlkgnnC8+6s4duPjqpB6VStwIVjbqoWOlli8+L7GXLR0yw1ZFf1r9pWJG+dUDpcJAujX8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785696634; c=relaxed/simple;
	bh=J1RjdpFAXzfTnfxBeQKv/qXiuI7yq93/uB7JWTMUNpM=;
	h=To:Subject:From:Message-Id:Date; b=GxIi+Yzzw/NPhRsVLLw5zaDchA8Z997vQxWj1CGrasq6oVInka6ASLXUUkCttiFB5z/cCWXyrpxicEPo67xe8KpbqW6KdBNV8Uf8iJV18jolAc3j+YpSxdX4pTZPAXj3B6NFtZRyRCZXjKJZFiMwkKmP/Dheq1VjyXPSWvCtgrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwSlc9/O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwSlc9/O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D14C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785696633;
	bh=J1RjdpFAXzfTnfxBeQKv/qXiuI7yq93/uB7JWTMUNpM=;
	h=To:Subject:From:Date:From;
	b=SwSlc9/Ornz7Un+S6TLH0qC+tNpuXIS5p337NzU6vBZMVfcpXKhdesTvyyGy1ar4e
	 5DVyxHxiqtoGzqMhfPQeFHA/lr+a7UYfYrVBybAJHGIQkVfzf0tjpayfD6v0AbIwqp
	 k27FVVNOtPeIFkL3ZpSLNekBjKKabZAbkegb+VpVf0iG2+9LMD5z9XV4TKLCtDxbkE
	 zH398CmL0yI/iZGEZO7pqWEpegOJHP6a0fnOGW/gJcMSDkdHr6m+IUZmVk/8ykLrfh
	 6VOtCK+Wxyytd4BFoMczy6H2CttLvfSRujJdOxo1/jIst/w17vYcNmFfGtnNyakCAr
	 0kndwyAh/8vQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8588C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178569663368.8681.9475302210461928446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc179b43075715952838ff89ab0a171d7591f9243a3527df3e89ec3ecc752ab6
Date: Sun, 02 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785696633
