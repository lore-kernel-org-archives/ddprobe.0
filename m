Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F2A12B89
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 20:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717272323; cv=none; b=YZQ/VTy5PxIP2iJOuzt060ztCJ7Zjm6dbgEV6tha9gCEHIittdl2N9qdoAWBB2sEy5ZzQxn2Efos6NL18xFu4/MIg5gHUrCn6XzHLKNpHMOxNJnAWlMKfl7u1xANEos7N0Q20dC5SCF3CW3yxCMzwgKZzA9/u8O6IviWjwlnl7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717272323; c=relaxed/simple;
	bh=aVwlEpJdURH8DB3+vJG1gq7RHkLXcKTWhv/gAPCwx7s=;
	h=To:Subject:From:Message-Id:Date; b=gw3GWwYBdK+MXVm8gl2qlpRDgguxpwQ0ZBds0DZcE4NAf/zn6zTvoooP5z5QCOJXfUhcGl75pJ9QhRt8vUOWqjcCrYElFv1J6K6AgGHdKtr7zUCaVLITvjkhXKdBJCxEhVCBTZQ5lwQ5oidZlFQdZm2xi5ASppMDYMNxl/MGMOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxHM/R3c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxHM/R3c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF52AC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 20:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717272322;
	bh=aVwlEpJdURH8DB3+vJG1gq7RHkLXcKTWhv/gAPCwx7s=;
	h=To:Subject:From:Date:From;
	b=PxHM/R3cch1mr8MrpPMUKgpShjVTtGmHl0DAIvxq95m6/9rPbgjSryylyps3CBg+n
	 OAiLmzko+GnnZBMCRoVMWlU+VPE5QiP5yAMZcG28ga9L90EqyHMF9NfsDxWhtsxVAy
	 s6eeUQVWXyAWO1jztk4AUIJO3roGalhSbk1OV5bovARWrv3NJa2HGQyD6m0vaGn7wF
	 EJ/JQbi9ehbRID7A2sdRES135jNcOVf+DD/l3DAhK/kqi58WcK+Xk7fKZ02JF1Hrrl
	 DN5tdgiQ8dMs8ZwmYL7NLO4KJzDRO+I02Bzni1gO7GBkqXO0mJTNdnyNurfp8mbS44
	 MVSWAlejhEylA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC5F3C27C44
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 20:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171727232276.28232.10118695208353217002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd97f1c76d00a7366e9311773922eadb640aa54ff8d0d2872f0e0419356d0bcf
Date: Sat, 01 Jun 2024 20:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717272322
