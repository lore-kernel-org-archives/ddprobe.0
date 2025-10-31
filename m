Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4568C2E4254
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761925794; cv=none; b=qnlbVDCVQDWjTr9corULEvz9JmIgatGSruSzvsPip/oD1mSt6KvyUEconkhovyjQnb3t+uC7uPwa75HP2BehH8h75vDdoK5IfT3EQp1hqGY2AQ3aDYHX2UQEYoaK3+lg9uKlfDdPcRud3XBHwqQ0FKVnoTRY4XVGmIC9bLHvu6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761925794; c=relaxed/simple;
	bh=vAZkVdUmKBei696V1nqW9LW3FaQlpO8rrig0gGIMQIc=;
	h=To:Subject:From:Message-Id:Date; b=g8nezQDj/omQaT6QFImKsY7ivJFewmkyeE4dBu1TxdSX3hCrT+SL9esTkwHOHblwH8HVWCpktnhdhUjBtp6Nd0DRIBg3nsUWFI9z+d0gpHvHNXBnZLZclqSSU+gNh+GCAgPPEuWyFn2U2bJPj9JKsWIMGx+T6feaH0W/qUsUW/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6HeppTe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6HeppTe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEF8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761925793;
	bh=vAZkVdUmKBei696V1nqW9LW3FaQlpO8rrig0gGIMQIc=;
	h=To:Subject:From:Date:From;
	b=i6HeppTezBs9aX7j2kX/QoytruDAeKTTckJ8fNItv/bN91bgHG8aflR58NIXuY2+f
	 AeQ0/3JdKrVt8pAxpjFXKiDb7gzUbA1HGGiyvAuHnrYOexMfbNYrjY1vzV6ZdfMr5Z
	 P6flqHLZcBfDD1OzhtIN7GDWonSD+EVEcpZ7KmTsQNOKeCt/jMDBvmHGEaqHkOy/NZ
	 3StXg9ahAXfOqGSvbHMifY6t0WOkEYyysBsQpQjgY7kiHSab4DtGH1uGqhwf6eLBE3
	 0NgthvmrWtMYo0c/ztz+eYrIuNt3QG1SBoVbbWYc4kmWqYVNSGr+y7ObSWYwrtyZ7O
	 d8F2BOkrFqwtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDE8CCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176192579367.5928.17351299523194412276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0a038a68dd96f7103a1d7e580539e9dd6b60067f3b6c46a7e1a09de20d94cd1
Date: Fri, 31 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761925793
