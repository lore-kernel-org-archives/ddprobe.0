Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF7F1D63FA
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735901754; cv=none; b=McN8DXUcYllZT4KUczb2XP9g5ZYywlnq8YzJp6pq2eg6Hl2bPS0QGTB8VenZYp+F8mKHy7L9zqe+IJ+j8YhN9LX/gadyPFoC7RlZ+U6/SMzZc/Y6kUBnOc+6nH+6cVsBvlzyGvYr4QZOcLclaTsVATBmJIHvGO8FTQ5D/+1r9aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735901754; c=relaxed/simple;
	bh=sKccKM3rIH+eZRunjqyZvNpvZcVOIIt+jqkKeCnETg0=;
	h=To:Subject:From:Message-Id:Date; b=B4MUBNNhBoVyKVowWi+I52z98mndomtX8tA1kDGnyvhFNSEntwjKUD5qEcmeBlaaeZU/tK1/KYW1j7ofgrvzEodlhieYwbFPqDAOUTcuWznuSk9ywSlnDJ3Fny283C4xPYA7FBFx7fbaYUuVaVF+jXWGi7QQSvZGRMb+d+sf5IM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aru+CAQA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aru+CAQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DAEC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735901753;
	bh=sKccKM3rIH+eZRunjqyZvNpvZcVOIIt+jqkKeCnETg0=;
	h=To:Subject:From:Date:From;
	b=Aru+CAQAPejknZ7zI5Cjyh+cen0idYd3gwpAeH5pQJGnZEcEjRR95Rd+QjGFWHkmK
	 bnq1001rD3KQENJmnl47U+YjpAxj5Dqu81K62AG4sdapAx2EF7OcVGw/ZeWv9TQN02
	 5CUCHKMyviVurpNJNzY/FLvTVfWaoOyKiE3Ro6H4Rj+ZOHEbgdso1CAKNvLG4pWuFD
	 g4uuM67E6Gj/pkJpQQmWoJWLZMpOQkAAX9qN1rtGIwH9pSFJ9amuyPf2z136wXs/SI
	 nYvs/pJi9+Q4Uf7h+m9hQGB/ZheXeuU8SLs5lMSBn+4WGvdHyK1Atdx37aW5HyLO3M
	 6MS9oAbmduT4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F5CE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173590175364.5009.5022922482099933311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7653d4d16b552d29b48ef00805aed28eddedc193199c43c3a4c979ffc7a9e5c4
Date: Fri, 03 Jan 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735901753
