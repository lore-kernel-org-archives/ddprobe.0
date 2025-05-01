Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3174E38385
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746140994; cv=none; b=IFUzD7XvdfXcy8vdhLCDw+Wx+NKfYb4BwE5HIOpdKy8gt0KYoWEnetaUhzhr7hbyrDNRgBu1Qqt8HlHQSejIbstLEFFoP+ITQ8HVEPLZgXrXPkWsrVw+iqVLPfho9w96aJ95NGd0A5CL3n6Ylg/69BBlk8xnO9a7iMl4xubQw4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746140994; c=relaxed/simple;
	bh=aVFAaMHkHJAYzSUiSE9Ccc7XsQxXV0Ow9G2fSUohNsI=;
	h=To:Subject:From:Message-Id:Date; b=lERKFPCSHSkkKJf5R39h0bayjB6FvaPj5XZTYokN5uNTd1NK30y+hgwE9rkinNQB8oAeJq6AvzPDAoKfkxEdvfurSUnSy+sAovWvjZnztZbtTJOvsPukMB+DhnfOafKk6j5z9gEPCH24TsRd0SnIxyf73CksIFtKRT1WISb3Sv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONQovrRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONQovrRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB9EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746140993;
	bh=aVFAaMHkHJAYzSUiSE9Ccc7XsQxXV0Ow9G2fSUohNsI=;
	h=To:Subject:From:Date:From;
	b=ONQovrRlleqIqDtB8Oxkvp2Tpq2fi0krqTdjm/A6hiIUiwy1eSFs3ooNClxo3D5fM
	 MR+UBzb2qurX7h7Ky4mxZLZM7PSve3BOCAvNiyN4KA74dVC7inylH4EtkBKeYOU3h3
	 D7B/PYTcZCE+3AiFE+uidorx9Q0lhXURTn+ikzcAHmk5ziLAjm5NZleKTE2EYGJgko
	 RU4q+vFBusZpKY8fakNK8wQHt5oNm8+TjLwjdj8pQRHE5lZYz3iMGXlsF7MHvKcvQE
	 etNgATQQJh5mSRLVZh2DtQ/Wfp5m2ngCsuoFHl/ahzWWTD25RAkJJi/JQBkXqIrBCW
	 YVomP28RDkA+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC2FC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174614099357.4422.6863013214907034546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a7f7dddf09bbebe0021bb370740b2eb4186a235cd9046ba46d09bf1f7960a14
Date: Thu, 01 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746140993
