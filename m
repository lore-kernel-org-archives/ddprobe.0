Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478331B85D1
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743245994; cv=none; b=G9FBYOJAaaG9uT5X8aFQ9AAW7HyqUMvh8duYkwkJKesAtakL8hWUdaWnwcimXLWbBeOwb0rF/bxBe4i24rgAOpRs3pYoV2wlnZWgdlFw00/jmuDZ14jb4rN2d7tVu6TdPCwYkC0qDwWl3MBn1HsLyDTSh0bw0ysudvkIaVVQoGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743245994; c=relaxed/simple;
	bh=091P5WeLICsZkbCYPF39AZmy3P5pL3zrxZx5NjQvWlU=;
	h=To:Subject:From:Message-Id:Date; b=eGmUKj1DKlfwbdHjDGPXqI9uveZTyj8weaauF9aY5AA4KuMAUOT9XadlHs4QphlsW82pSbE5rYl6ysRJ9WK9jJsV+0McJbDdkkUEGc/00f2lifeYBDVnyhXkboLdX2qAJWuTtj3f4I89hTdS0/I4fbe1gwE4MgiHdyvPHV5fSY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDAQmz0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDAQmz0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3718C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743245993;
	bh=091P5WeLICsZkbCYPF39AZmy3P5pL3zrxZx5NjQvWlU=;
	h=To:Subject:From:Date:From;
	b=rDAQmz0pWN72pX91YtQKdCu07v6sqUqeKiyI6vcBcMyLLRPXXSoo+2g4gVYqwHyZY
	 OFXNOtqlZ4YlLmf64He+oWJkL0hk2wYBJbzTChBfa08uFevmqosqUqRONxmpQQ6HL+
	 +uxMQEaqI17kkcpQ1sTGCxqaJ5Skq1+/ULEAKvOXQJpett1ljOWHTuDAgFcpemYbGQ
	 pbbknC7iixDxYUUg+qCyWibY/2lIRwQk/4TxkXDtJJg8rKyGKlxhmiNSduKyM24SQQ
	 LgjpBYGurYwzZsKeWhqBTU9vE/xKyOwkGor08hV8+18Gwr654CiufZv9TGHnBIVclG
	 kimqGDsEbcblA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A20FC36011
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174324599360.30697.6871157788972859849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95a14f9fb107b0d980e4355b3542feda4a0f40c59daf2d8516f28963424af537
Date: Sat, 29 Mar 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743245993
