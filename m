Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112428C1B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705475897; cv=none; b=IBS0yVYrw2ix988v858EHEmrp1owYodppBP9kYDyiEM6LnBKdozA91F/7XGomZJUtfitaV5zVdxKMZy9So8fqccQH993fV04TEs7dsEOac1v0zf51GC1NzRdRDZfYDOOM1f47sw+1a0Z7ISuKLwQ2Hv5wCDnjhvD8bQUA8SZksk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705475897; c=relaxed/simple;
	bh=lk64ihmMweY0GQFwrNjXDtQzSH8+FYgwduSkAi3qpHA=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=W2jCFCnedjkuRunOztHHuHrEChcYNipvLVjGp56hwkahIwZXpEeIFMaly3z6ZgkuFkwBNu7sAhGnHTbJGLHmrXPpBbvQ6nPwzaO/+XWF2v9vtUdt5TjnAjO5h1qf8ZzdPtlxXF8lHt4knKV4Afar38AHWSVTxTe/wq26qZ1gjPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZ9rOiIU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZ9rOiIU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8437EC433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705475896;
	bh=lk64ihmMweY0GQFwrNjXDtQzSH8+FYgwduSkAi3qpHA=;
	h=To:Subject:From:Date:From;
	b=kZ9rOiIUrdYth8p6S4ENt7v1YDQQyEE33ptsAOERdii+BPNE6tFTJCEMxNDKZxRtI
	 KyBffaOtiiFM1KvLHTMkf9if+oZiAYt3wpT7w29wXpOB06GSo8W9Zy3Ge9gfefKCl9
	 oExe0yT9X5hKea/Q8YWiJbFtZ1CLEEOBzYnkOiIwD7QPnkjJRuz3nqyXszoefOIJnc
	 YNGSEgem1wX9NJ8kMduqPKrunIRv6CqM1WLamov3HKaujEPMcWgz1faiLzUU8WyBNH
	 DDtCD3HLgdTgtI/6+6ru9rtCWV/pbK0V7fHVePou92ClcPO27I3wsMSsnTXY8okQ4D
	 kyJebxP/6NXyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6441AC47422
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170547589639.3537.1471904251407814316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58475698f83ee222509b3b063443562b5db6469270952d574fa56300672e6069
Date: Wed, 17 Jan 2024 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705475896
