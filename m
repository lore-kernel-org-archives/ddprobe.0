Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198361BD9C9
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751639994; cv=none; b=RomPolzqahHhvWq4JN5aYV6aNwZpXZJUrpRY4a89o2U8Y2yjmP4tV3B8pjvK9XZBfgH1q6vgToYx1KoT6TGaZSK5IeqgiCDU/vZ9KGUpspDXKugHUrZ3u7UT4JOJI16qE4MLBG333++URfVTaVUcnwxSfD4wGkJN0KiBp/EdKyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751639994; c=relaxed/simple;
	bh=kcjil1+TmeAsR6De6+L3ViqgBTtSbcBJ8fs/UeSTZis=;
	h=To:Subject:From:Message-Id:Date; b=JvYL6IXVmQwsORjFx4sGx4JI0HredxWpBp5UBhpZg2yOnuoc1kWjjczKKstxYHdvEUTtEdhU5zWCBtWK9dUTKbRUOCPCGYtL4tc/s5alzauiWoBVwufL4bIfeAPOY8kwYaptcrI+NL4q8V2nQ2gHWVKd1z/st3pwxAyTTcLVgSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SG4crCT2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SG4crCT2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCDFC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751639993;
	bh=kcjil1+TmeAsR6De6+L3ViqgBTtSbcBJ8fs/UeSTZis=;
	h=To:Subject:From:Date:From;
	b=SG4crCT28LK5Qbv+X4OrcDSD4W5nfMwx7PtYTn8JRZW03RWKfB401g1r7h/zJFs5N
	 hxWS8PryIQLL3HK1lX1Bu8noK2iEtr1oRJ4FDWs/PyXnPf9lg4d8BCD3x4iZui37+C
	 VSpcc4K9WjaomPzHQ6D+Q+cFYwamOHBd8a1a7J3DO48cBECMwyNT//0jVnVJRofh6x
	 4gnd9MdAGed/EbAbc5y7KeCEM+iYsQzIqopZJ4+i66IAptiA0+byb0/gk2zFutB8Lo
	 TDV8pJjLgEIhoY+eg8xXRs7pWTeVQuPxGXb3fXwTAdwLcOGLslEPdrrqa/7yygr7mj
	 kpC4G7Ph4R1eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB78C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175163999357.20118.4954520556393410811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33acb43cf99d4f3f958d2dc8b8543a160ae8692467231cb15086a8d345931fb4
Date: Fri, 04 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751639993
