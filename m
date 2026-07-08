Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342C93F54C5
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 12:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783512514; cv=none; b=rHEUZmSDcu5dT2YIS46ezJDqaepl5r0StgaUW6bxJVl4Ae0J9rFES9RycCDjnbgksKRhO43xM3k6tso1J+fF8sTpFI+v8iNpNWdPmqGtHSncT+skMAgjqouIH3wMI1Vpzt0+YyRiW03YAqszEE9Ncs1cN1bNBaG6PjoXldgR9yM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783512514; c=relaxed/simple;
	bh=u4UZ/0VFwbBmNOPk62DkE7jTPGKRkS0rxCd4CI/0m+s=;
	h=To:Subject:From:Message-Id:Date; b=obEVMCpg7bCL/B9InwFcflxjTIqmt5H3HWF93tNgzdRZg3NQas3wbfASw1fheuPYSCo73kyIV2B265IkYty3887smzKXYj7Pux5wYvuMejmqreRvl1ifFs6NFwnP1PcurkdwqfNkYEjaupBUfEdYyaB91vEVv+oRVGTlcsQOhJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBvox78P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBvox78P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3B0DC2BCC9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783512513;
	bh=u4UZ/0VFwbBmNOPk62DkE7jTPGKRkS0rxCd4CI/0m+s=;
	h=To:Subject:From:Date:From;
	b=qBvox78PM8oORP+GmpUxJElTe16g3kh1g0YmS/y1PnDktGVZUL9DQJK/a38wlUryK
	 UPxk5kcKluinJk0ZVxRmYuIycxrBs6cmRyav399XYKamxadCOS1h46Bd3KW9D1rsyV
	 ktjfRUDRjK9n0A4wQRWD3z/a2bVMwf+CoeBGP3a21+4DDiKZleb2dNpcO3oc6giaMP
	 mIvSMBmYRKiWRxIgjH/ULu1h6Luzc9aiwXz+NHrQYmhASkLmogwWuqE12VMNEg9ElG
	 dRgw5eFkah834xluQWHawBhRtRdFm4g866/vGTQiQyVMJTTqy6fPo9wKDmQu6IbmJy
	 i9pTjWXN0zXwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB2D6C43602
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 12:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178351251371.29647.5908402434160836916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67bbb6be799a4c39c33de1020f228347c6cacffa901fc05744c3d43ea7048612
Date: Wed, 08 Jul 2026 12:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783512513
