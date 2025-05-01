Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6EC23183C
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746083994; cv=none; b=QtHXu9gD3RuOKVwICDXnuBM7t1nIlLOwSlH5vdvzyaHM63MilFmKkisiwwWz5VepNunRwQwn34SA0D8bEu2F/QyrHbymn7E8/os4xPobOCyngGUsCQ7PPZSDOtzOyUB9qdCujoqb4SXwTVRBU9ULyXIYJ8MIHMA+dgpYZlqL43w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746083994; c=relaxed/simple;
	bh=QRX0FWhp2hjA9dfxqNe3EFBlG3t3yiqszf9CY+okN7E=;
	h=To:Subject:From:Message-Id:Date; b=TJxJV8H1YelFrkn7k5m14R6ZcH0KCt2GWuvZxqp1XVh9vaaQHS/rj7fmBRj/1tBuyDdoPlYTJzOfUH2g4NQTL+R4UmO0+yeZvD94HOyLyRjRTfYiO4rPvrbAyGXZaDaTkPQ9/TNDN7ZcbH+pVZFj6KaVaqrgHd6mOS+/lYkEhpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9bNKVma; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9bNKVma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7908C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746083993;
	bh=QRX0FWhp2hjA9dfxqNe3EFBlG3t3yiqszf9CY+okN7E=;
	h=To:Subject:From:Date:From;
	b=S9bNKVmazBaH8YUbdGpNtku/sJF0fe5mpMA0LvFRFC/WBSORCsGsqqg3eRMZzJ1eb
	 mXalz0646fcgTD2JNEFbyq5YTvpKW/MIDHZR9QabTrb/jEh/9JTvMJxx0ROyxu8IFg
	 1GTl+gn5LF1o4bDERBksxqj6n6xIc+VzaI9ayrxhRx93pzOk2m8xHwRowMZ7wf0ppq
	 1ufEBzdLMx0LafuU0CwTgHnAmNSbnikYvPD3onIuMPti/MpHex8z5gFSgCxRD/6XQy
	 +KJRf5/Gem/BS2saHES9Jzq3HKoMkJnYOosjqSy7OfwZ1QiQEc8JEoiy30/3IHLgqa
	 bsJxxT0sreDxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9665AC3ABA9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174608399358.16329.12091631127982887415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c91e00e6240fb63e3f7902e653440cae786f3bdb584e99cc02dea6069579d65d
Date: Thu, 01 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746083993
