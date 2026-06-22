Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C7A39446D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 08:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782115594; cv=none; b=uvgpjUpi+Z7FvkIp20adTRVqNNgc92hN1u+Vx+WJaxoLcBzX/8s6gvucOOCLHW8pF7TkFN6Xc58dR83Kn8zbcUYkgkJo/vzgtDOYwdee9V0ZWMjd3S3YUGi9MfHNh5nTTHYKLoVWQ+UblAlbD/5s+D1goHhDu99meVxM9VT9DyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782115594; c=relaxed/simple;
	bh=HwnTJ5+HvvG5z45+xHokef6sRsjRWWpPYo2RLMwfKCI=;
	h=To:Subject:From:Message-Id:Date; b=j7ROLD6MCJdGJd+syLHzOlq59QMkwDkcd6Bk8cn6nX90Hx7fuSSbgpa6gAhbTqqfq2wwUE2qjU1LKDH2cPFNgB6X4gFIGN6ZQZy/s3h2OHMdUEaeJ1yd/M6IWdXjQr/gnWOnZez4idl7Rec/jm5L30lB7IXJo3mGkGoYqlwWlvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RUwHwKuB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RUwHwKuB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9CD0C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 08:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782115593;
	bh=HwnTJ5+HvvG5z45+xHokef6sRsjRWWpPYo2RLMwfKCI=;
	h=To:Subject:From:Date:From;
	b=RUwHwKuBVqShFt+pNpW/oqi2xkBsgJYwMxd7P/3uW6l4yhsyf2vuazGvluJhwYs+i
	 XBFwoWHJoX3hqdlG53tnk2Nc+opPcWlMCRIuykEHx/7Xoh1uphqOnYfQOFc26xUtiy
	 kNs5DO0OG4c+6rQe6Tfd2zoCYmMc2g+WZJlObg1aCt31UGxDL4rE9TjTa9yoYMpz0U
	 JF/LgFQBdKHVlSSFKzL7QYmAPBfJIHbh1z+9hY4XESvSglCRzu8QuDKy6WjFv76jQa
	 TuQy9UntUvlQOXGvlzvAJTrCXIgXch69Mv/xbJF3cu31YIsWaaAQrUvGMDGu6wH2Hz
	 khqtZssZ0AsYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8159CDB46B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 08:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178211559373.7023.3122238360826275275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c04cfa840223b57663da17ae1a67f7d0e6090b6aa3e6d830b56ff34c8797d70
Date: Mon, 22 Jun 2026 08:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782115593
