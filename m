Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161FC45C0B
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756831794; cv=none; b=Ja2jpHIsBgqXUcUj0KK1G5IqFj4no5odHtVzKQYhmzIaxjzs3pmbgVRQWXiTSqOCtF/eQVa/JX6By6HZssofIcb35IVu4ODpHTzrod6JC0tIWPHKSw1LuMFR1nHbJRqWI2+PZ0iUe2AiiIfhd4LVwaTx+Za7EhEsKvFT2DqqdZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756831794; c=relaxed/simple;
	bh=DYpU1gyNO+9mX5SoBqXB2v3rA69y7odExcsHVh6Yrpw=;
	h=To:Subject:From:Message-Id:Date; b=EjbyWmk3X3zTILiuMzeY+xr7W3vZfzujUosk7Za8npKvngCDvANy1Tv9QgTV7O66wynp56Om8rWlKgQ87WzAKmgLhhIYiuoQJSx+tuWeGTpAdL9r1FtSqLhYzNat6vDFGgcaaPkuvBi92H+jFO/sNGT0RzzW5SEGGcIde9RUtD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YETScdu9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YETScdu9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23E5C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756831793;
	bh=DYpU1gyNO+9mX5SoBqXB2v3rA69y7odExcsHVh6Yrpw=;
	h=To:Subject:From:Date:From;
	b=YETScdu9Q6M0Il0YRyvTxGBGl2z/dyA/igxIq0b1jNTvoH/COg0QRSLlLcgM5rV77
	 VlfgYqoJbp7aAbsKkBHZKNmiG7+1BK3Y3uWR8SmuHiL13kcTsRPz0hZYUbCcUG7ajx
	 wbStcDXKj4cz874wd70WI9M3OHEcwHNhTENyDKBrFApTvrBCg0PzORim2pGP+XFUdk
	 ErPHsGcX+Vt3jeGwnd98g2XcJZwh43TUJLTrVb2n25TuMzFX40zjL8GQUG/Td28HHp
	 c7FQ/XzFqqh7ZcGvEsay3KvAmb7LFpAdpYnF+guTxpYpWpl9pBMb4pR2jMQ9aZarTi
	 LSYNaMrnd+1FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F916CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175683179357.4525.15913354214829845227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dc764eeacb2b521bb8c810152061febbedf2ec3ed552d424cccb5c3fc715cb4
Date: Tue, 02 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756831793
