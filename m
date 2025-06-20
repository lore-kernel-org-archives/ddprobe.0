Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1652325DB1E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750413594; cv=none; b=AUHk9X+LCmIQcRvm+MWRrnNtofOLgcFC5hnsglNP66u7uWNJPO8g248Z9NLz4RcJFgwe1LG+/sIxgBRgblWz9/5Vjw1XMzibr+S06MED9IbzuuFsjOQZ7KUuVxMjQb8M310GY2oELw7lwMMbBGB4tZ4FDCjRcIz/2R9/SzWzTio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750413594; c=relaxed/simple;
	bh=3DYHlzdvW9ZMGZRKi1wHLGS51tRX5iTNDYZB8Sv/rtg=;
	h=To:Subject:From:Message-Id:Date; b=Xe2va8gQOLu2Zgdp0ht93q4mexg5hmSTcYfdzG2D14FRU65ChqOoqaKrPn+9k/qvfiN64iLPlqZYhDA7TP+NJvIzSWRAlXG8RCw37XL+1vDZ/XCH0LJ3bzJehStGqI/3RRLSqbC5FJ7yulSRz7l8AnWU0W+ui6PBvrY85NGTeBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7pItx2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7pItx2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC7FC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750413593;
	bh=3DYHlzdvW9ZMGZRKi1wHLGS51tRX5iTNDYZB8Sv/rtg=;
	h=To:Subject:From:Date:From;
	b=S7pItx2+2kbJeQo2ZsRqrQCeI4PzvGCVg/A8r7wsFsnryCAaEHa/EyHXV2SzFOw17
	 Wp/XgnhxIHQZur8rki3lwgHMpqQMUsoaLSrj5Bzy4+uHHoGnYsjow4GsAwCe73cmFu
	 3OaBj5cevDloXF1n0tB6JEXHymgg2cAMVh/lVH6b6QmLnTSMCPeod50a93TX7sDW35
	 W3rvx1GDpul9ZCOskM+rjQjmCcoJeablSKeO88WfPak/04ct84xeHarrQRvL0aA2wC
	 IC8V2H1LPwrfNaDybDJbz6KAtOyaKXa7/h/W6zq4a9zYUmI8xZzjU2oJ31sUanSKLO
	 3lCfZtFRgggMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F250C71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175041359357.11847.9278929891765011019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f5f36ad20f795f562c35a31224745d5cfb14adddc93c422d4cd113d99a2c6c7
Date: Fri, 20 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750413593
