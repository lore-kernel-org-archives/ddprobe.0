Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBFA3BB57
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 01:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782004594; cv=none; b=cgsMDL/0pD3GG72ET3S8/qmGROHrOlrIbvDVwoWhGzs4YhBPofnCHIYVnSZqrbj86G7eqXhNqpdPuMgpygWwX5yOGm9oGoej29h2KxtykOB0KCFeVcIjHwLmaA4JJfU0a5lTCsgbBJPdkby2iujsdbT9V13w17AEVBx3yGY3O+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782004594; c=relaxed/simple;
	bh=QmAJ0kO6LxthEu3oklk9tKqexogZ2WvV/iez+Dbov5w=;
	h=To:Subject:From:Message-Id:Date; b=Qr4yFCg5TWVMckbahUD+iIIu5u8LJcfHr4a1A1FyS4k000Alg0H5t4mphGxHJmDZmFQ1GmkXoN8P49Ck64HqpEPlGz7FNKqEQL0Vq+qS781LHuhSGMxnlSbiseumRy16aJOdmOziixSGMV61wjDxUkhj09gETjyrXerT+Pm/qkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWrmjAvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWrmjAvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE3AFC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 01:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782004593;
	bh=QmAJ0kO6LxthEu3oklk9tKqexogZ2WvV/iez+Dbov5w=;
	h=To:Subject:From:Date:From;
	b=iWrmjAvFEoU7iPEPUMCY58N6O8/YivGCtPt3gfoGm5iLaDV4+0rkvgsYv6MaM9M/6
	 ruMTnLJ3u4M8Yr7jnQCsQ121QoKtR+ApMzQMgYUr/nHA68fM4aTr2LbN8q8pDtiRhV
	 NJIUVtcs6jpLCZ0LuDT8lIuSBRPuXj+y3+hrbQoHTVmcSmskuuJLinAFYriMTth9tt
	 AoVCqozMQoJlfDRBETFsutSJupbLKjnN7C9ZYrcigR7GR6A77tVLOPOBmBYH9Ci1GG
	 JM18Eulegn91YXc4i1c9+oA5cSDM2E1MSpanunfXHZLKrzSfUj1pdH+xFALmE5sN+q
	 GCv5RxRSNwTEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF02DCD4F26
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 01:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178200459371.9290.13816639210833952406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2080db84012238aeb91740c5366ef34d0f083769e5a22d947c407b5d28c96224
Date: Sun, 21 Jun 2026 01:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782004593
