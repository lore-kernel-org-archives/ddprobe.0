Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374E7231A21
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 01:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775179534; cv=none; b=ArgXC1rx23WvIpHo14LNGhg6ykEmuCZhg5Pr85m7evoQP7I7DAEOtYlo5eMJhGmE5t9+9rmjeaHX7dTHsoWolu4RyBV8jUcZxkFg33Pt8Fh6SMPXcWu9TiDH4MU5mHsViAUOyqpbOLJ7++LnOQl7NdWM8uljVM0WNT0uYhBxUKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775179534; c=relaxed/simple;
	bh=+F4qW3JHh0BzPhLaZhjQaejquabotsYcDV1FHeLis3U=;
	h=To:Subject:From:Message-Id:Date; b=Md/ACGNUhqEplg+BjDT4COJ8k1ipfPa+vzi2Lk+Zl7E+BQBmXv7VRPGzU2vcArD3jwrLj3O9uLE4/v2bcU0YXWylUClKNz0+E9/gzwWaIsum+HwndjY3J1aQfrWbWRhHixmR5E1N3EQzDzAnxQxaVuHjZZch6il3xTcpnfuZgkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WivhzX1o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WivhzX1o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A4CC116C6
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 01:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775179533;
	bh=+F4qW3JHh0BzPhLaZhjQaejquabotsYcDV1FHeLis3U=;
	h=To:Subject:From:Date:From;
	b=WivhzX1oW0y4o9m8k+xp1ahl2lm3s22nOsi3mw6usY0Ijy9Tyl1kVBS5YT0jWTJid
	 l/tAHoun0rV7CC3UJwPiXjWUlNGRf+JClfV/ww1sOVWBX6mTnHCYdoV5zfzW1BhVHG
	 XTZOgc52yP90+xtt2VKhIqoJcgG5r6YJ9FRxZO/T0yAtXWTKRlxujREH1lfhAVwijR
	 NkSZKRGCPCs1OP3/6X9LnHSjGl8ShBRWa0k/jYgZdji2VmLyES86rPwihXWp9yReJN
	 +5gTORqY703AqOkJkgMHWVQeUGfevIJJz3EYAwSl6WbHVFYnyhsgdbFY8BEnHJhepF
	 eLUUpbn4OiaaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC25CD6AAFA
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 01:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177517953369.25674.4351543597571015748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e794a29d65a9a9e925a2409b18f83f68e9b4169aa3925b3f9b79312cf6a89d0
Date: Fri, 03 Apr 2026 01:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775179533
