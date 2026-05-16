Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA603A383B
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 11:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778929834; cv=none; b=rVo1xClK/x+ok5yFfzfTXDquLWBnHhrSsAz1h2fQo91H8w0FltrUuQfdd+GCxl0us3pZzlNyTShRA0A5FuO9hTdij62lmr6NrHaLfwFFEAUecfMjFWq3rYgaHii/G45MkWqSEjMWjhJpAZEdH2KD/IjxB2IMnmKvsxIfmU9Zt+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778929834; c=relaxed/simple;
	bh=qEM9MLn5HLuXvjzfIWv5UVlxWNATgljvwKDE5be0kUE=;
	h=To:Subject:From:Message-Id:Date; b=q3U9VCe+jUZtfu8ESbqLbmxG4rIjKl4LPm4JktCYm+PScoQxsw4qFVKxP4muR4h9/7vwhYFnfkk/Js4jrRBQoQLYVZQud70vdShkVwjung1tTK+qBoTjC7RskxkVdZD9AV/LU2SyLByp2sSB6W9E98lhtyqJhIecumD6nrOW+cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJdj+6EY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJdj+6EY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B84C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778929833;
	bh=qEM9MLn5HLuXvjzfIWv5UVlxWNATgljvwKDE5be0kUE=;
	h=To:Subject:From:Date:From;
	b=BJdj+6EYeJzYt3+D8ECPJE7CVfl70L6ePfet6BTb9u+ZgU4z0eMFoek85WM9Te/wW
	 pVPZSxEkbyzu+ajlBC5MwKHGM8tOvc5fBc2wXNCZFEfaEcLJ65SG661ILL99zp8w5m
	 sfbkm+PnAVGi6vwUuKbiicyBqXsOb+oKcnAtsTR2hBJmi/72NRpY8JD6sb4H+lRWe0
	 uikmCp6L7WOl26DRqHfJODUYe9tiFqB5BBKUhqMrPv2k10tL8hUby/ApTelUHyJ3pu
	 i1FFfIFjmsx2Fai9ie6+qSpmOi7ipNvyJdY/wWgEJkX6ghnxk4tCYUilqz/vdLt82/
	 KtUtvfee1NknA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B119DCD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177892983369.5264.7666013170624126274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ae6c75dd5ade3cd7f1040381b2e9d6797d1e2be8426ac93d04276aaa4ca6ab7
Date: Sat, 16 May 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778929833
