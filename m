Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE8B23392C
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789690234; cv=none; b=UfBz1nB9PIq0vVY5EI6KUlGXPpTRJFAtvBVrnMqgEq9HY22rl6HJqW1eOrK+DlxLaOAv0yaNhMNUVsfyFahl8fELRnPNC/8CfHq4J44qr3sgteUyozejjtR9hfiJyyK7QOFIqWloi22HxEafqN9COcdF6ZAhspzxqe5p/jEGVTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789690234; c=relaxed/simple;
	bh=lgPGXc10si7+se8+yjBmrvtU3L+2u3cR/B654BR0Ov4=;
	h=To:Subject:From:Message-Id:Date; b=uzEZS1nLkX2hXOo/zaDvh9r2GqiiZyDw/dC3TzxaQ80a9ZQGQZnoqUOrukyT3oazWdDFduQsZ8JvrzLq1rhlGr1wX1gvDpjZabbjRV3vA4fjEjyK2EkGQBRBnwZPizn0HiLtlM5FpOgP+pWsLC0bZ4A1L2IVrIrxFYpFm5on7eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GszoHcHz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GszoHcHz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C1FC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789690233;
	bh=lgPGXc10si7+se8+yjBmrvtU3L+2u3cR/B654BR0Ov4=;
	h=To:Subject:From:Date:From;
	b=GszoHcHz0m1sfcoI0m1gy1OI3IJ7dZv+Ey+RsHDUuTPTVpCzy9RZIzo9VEG+ZDVKC
	 Q2wDl6c2P2ujbv6VtVNxefYw5Q4MRqaA8H0fl0SObjKt8AesqvXLfsm+JOQzVbHMpt
	 7WW/5usDl66gIJREfklDAZR5jDAbT5jzSU24xHp5OKy0imzHJoUMb5NbfxBPl7JJ80
	 oqC9LCRwk13jDVoO4ba3IQkScFd8XWgPwxj3c3Wr/qhSsLL6sQLEXlmxV6jUJnKkUu
	 P/bDX2MJ0kgY/RIWPUQ7Bo0HIIAvSzESEs1WC3INRE2EPEc5iRR1MmiGzPECPeEWJj
	 jTV4/pD0sFKxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4ECC982D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178969023369.2172.6179724520241275860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbeecf48acebb365eacca6a3c35854bab281a1c01039c1ebd1123ee6c38d5922
Date: Fri, 18 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789690233
