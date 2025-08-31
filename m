Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183CB18E25
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756661394; cv=none; b=Hbmy//tT/mZ9zCpsjdCMpGF1BDEdTMlgKqYigabWdaJZknFPoPSr6oDKmKKmb6Lq9EwPgjrV2Fz82exs30d/UDj8BpxSPLTbwKBnj4CP7C3O21XqFWn+wD4Szyjo6bqW1S8VmXEkTZYPHmaU2UXi9anfWlWn+xF69uIVCeO1I28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756661394; c=relaxed/simple;
	bh=Cqo7m/qKG3k882BsP2HCY22rTfZCkAyQ9B1akY3gwMo=;
	h=To:Subject:From:Message-Id:Date; b=DLhFFyQoHEBJJPxr7XjEus1QwP/x1GTPHuQudpDoEkfn5N1oR4YJMw1mPf3MmaQIswB6sgkfCTpNdezgYiIi1pLzQVljMVWA4MHM9QjN6Kz7ljkDcdDDCUItEmAfiBqrEA6mzzAKmwZp5dzx81wB0SH+e6j9UslZ5Q9lLdoPU6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCTC5U7i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCTC5U7i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EB9C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756661393;
	bh=Cqo7m/qKG3k882BsP2HCY22rTfZCkAyQ9B1akY3gwMo=;
	h=To:Subject:From:Date:From;
	b=UCTC5U7icL3g3ASZFmmfekkzDa49aY5hwJEWvW04640BMlvslVGWchmJXXiIv48k1
	 eaovT+1t4BHoNZe92px2KCeuDORntV9A4sKAarS9TAr8C75BD9aZp7RdLtsOdnzUvM
	 hqItdhuan9KyDP4Vhgn2wLS1ZsJ3PyohopVdmXSbFeR+YfswNtzkRmZaDrFDgMvm8j
	 u+7sftz8NtAz2abgZeR7R1yOjQsjxTCAdiJnTBXHo7052m2j6MJpWfr90OoaHYmYtf
	 DSSELIU6u9joAZupUhwgwblih7LQLN7Q4oUcbWHqTQMRJLO6vSAYH6xobhK1QVH2YW
	 vYpZ9/bbO9FRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91940CA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175666139357.11453.17991453374871800061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85f57ea25e29a25bb2a306ede5bc3f81fa0fa94a35fc5f53789c1df9378e6df4
Date: Sun, 31 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756661393
