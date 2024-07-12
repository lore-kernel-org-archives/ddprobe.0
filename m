Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6736C17556C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 15:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720799963; cv=none; b=sgENrXuERoe0Gk+BD5qRzX5mqRRS7kh6EM2eqRsD0iBBXh9wZNY0vFieyYE4UnK9sSaCSQ/lROAIDam64MdFDQkXe3rEiq69UUuh4vZQW5FpmMuC3LpG0KGBFzBo2bDksz0JuuPp9nuFh8ClV7FxoZqPKh+7/C8feKdwVWSubXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720799963; c=relaxed/simple;
	bh=8G/KhtyhdeLw4f3LMIQo6ml5oCy4ILjwG48tbwXW/Qo=;
	h=To:Subject:From:Message-Id:Date; b=Gp9BHUWEEWm1IJW0tv9Bx2zn87BW6Aq1+AKdK4c7wqSnBz04hBcTG4jNyaQQaO05PG+7dXaDDTQld67VcuJI8vaQEy5RrX0e4UJhDUqTglXxIhQfEvkRAhI3qBi12L+62D4pIc/+X0dVbABJ76BQY7ksNWVCiNoUDwXLrn5aqCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NbGDzHf8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NbGDzHf8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEED6C4AF07
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 15:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720799962;
	bh=8G/KhtyhdeLw4f3LMIQo6ml5oCy4ILjwG48tbwXW/Qo=;
	h=To:Subject:From:Date:From;
	b=NbGDzHf8ixhIV5INPimfgivg+68XX00zHIF+AsKUbM6Wnop4vYrYH/n8IvZYdGe5B
	 Ft7Lx5ZViQxA+1ZsngxVUZk9IGNkK9oEIcYm1nvLq2zcmrIFTx5PsRseymO5Bq9c3T
	 3LRhef/hZEoI3hB/KSlep/bS/qHUZnFcrRRXrr2/anuXMxCj92gLAuX+7EwMAnoV2C
	 ww4XAMO0jWbuGNbjxs2qTjxwGNzHq8bJkSDRojbhNcDPwCVVxVyoVT28cI/isxYgr6
	 rEKyQPVVHeIDSlrtH5T20PnFf2si7Tq+WLt4+GCjXpCNwMzr+zCSRp4vI36nO85c/1
	 teSZ/5od/H8CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBA7FC3DA45
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 15:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172079996282.22231.1201374852644871201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a695568d129cda063c6cddc46cc4afe1db5111606c0d9c74a318f3bfbf20905
Date: Fri, 12 Jul 2024 15:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720799962
