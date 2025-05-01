Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4EC8635B
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746127194; cv=none; b=bmfHuKk4zMqMjh0r3EmwTYVLLUgfRyYQhgcwXCt08HCjfPXs1kQi8FWgnEq6ry9ElbUU5G8aUkH/IB6GFb3yg0wMscs909LEAOBBF6na9+ECQlXP3HVI+BKCzK3GFlyaNBco5jx1h2f6Zwg7oEPVsk0m7JYfDoZiUrg4ag9Uak4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746127194; c=relaxed/simple;
	bh=cPVvwrroyMgDdjd9Bf9seZ8vENI1VxOT6qAEt6pdZR0=;
	h=To:Subject:From:Message-Id:Date; b=Jasbiy3WQR/mJKafMRCdKvW3cm8jmplNrL61SLmNBAHsoqHL64srzzx97Z9SuDBLQ05paNzvqHeM8vxDb4rz60ECee+UJytg01T2325e7IRrslJk0ckjH/0wbKru0JjBweC4Tg2PtPbR4cLs0pjTJBCybXVtG+2gbtraGkbf4fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=StXDqVzU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="StXDqVzU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D8DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746127193;
	bh=cPVvwrroyMgDdjd9Bf9seZ8vENI1VxOT6qAEt6pdZR0=;
	h=To:Subject:From:Date:From;
	b=StXDqVzUQT1TnORBRPJ5acSKM3XWSYGL2MIOiMKmUUNWHLFtVKT7jWPTLwLiNtROn
	 0q+sHCyOiteas6pTTNxZmCqHQi+zpvJIz8smslqw+nYpiL1Gnz588FPm9nF06+hTU9
	 +lxUJxTkVp3cYG5D5dxiuhSnqOTjKgqmSpmvZYtxprSE2WjR8Z5NubXIUUfWVvc2zl
	 Z9KCjRAWCNv74ImZKhZt6WlgTVAXgzAjQcaf0hEYoRQR35S0FSY3FugoO1HKBnNo0F
	 toOxSlvDRZPPSSKMLRdVgd3usDpJySqli2emsoIvHCC//nfB341pXTagGC6XKxPAri
	 qzI6uMSuKD7KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EFEC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174612719357.14289.6200352989618374116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e509fe2d3bad53cb4167f055b2548d212a2406b307cfa8047ca83602e4c1b7
Date: Thu, 01 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746127193
