Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEDD4A9D6C
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790962234; cv=none; b=ERgtlLcqglRNIGMeSPQGsg5YTtnsAsH/NZiFCqvXey4IY7tAecyb7MwXDeKG0s5jjTRGvPIulPH1vUFGXZJUbOym8oawLwM23o3W4eeoPWqBaHZK5/XTDRLFeUMIGliCn9Zt8wuSQ8vYZQ3wsUVgStbhsZLOL2j4cAZX16ynxk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790962234; c=relaxed/simple;
	bh=04LKFajnOydHCdG0bYBAIMtI3QYrSskUqOZnEkyf7Xc=;
	h=To:Subject:From:Message-Id:Date; b=JoBQ90JIZ5LtSjIIA2tsqcBhhcCwT9T3tzA6LFkPkAUG8nvm/frne9LcwWg6kVnDMhDYYbl4hCH2fh8n5aVLHAKqoq6/i0devlsH2VZQsk8aJU7/tGNS7TY6NHBmBbHarzVsTP8Hq/4hLFymVFzG/EjU6eTbBdXxyhOxYBqM6zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUF345H2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OUF345H2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA07C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790962233;
	bh=04LKFajnOydHCdG0bYBAIMtI3QYrSskUqOZnEkyf7Xc=;
	h=To:Subject:From:Date:From;
	b=OUF345H2kRb/RpXF3kh99UVh1B7L/J6FH+r9e7N/WjlLmz5HSN5TuS3jYggVd1Gw6
	 o17vhiIHx0Htt58NoY9K+VHz/tLVhKoCQnKTtiDJ14eHjBTE0KXznVVh7p6duHHiO9
	 /nWcFep3Ftu9uFXX3AmUuRxUIgAAehRAGpZN1PsvPUEjs5NLEphhxyoEh8M0zra2n9
	 VxMpGDAP8gHQdIvqIr6pIrpc89cCY8L2M/MmqTuwPcTAuRvPUgSrZw6GyYJGFbvoNS
	 /lIFKHR32iFTW0nL96LRMrHPF9VZHL2P3YaVu+GvCKMxRMrw3AL0mCRDm2PH62MC+c
	 HB3cAel90IclQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC90CA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179096223369.15362.5293194053272439405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ef903857f828d0c1aebcc7fc766819e0b8a6cd2e7e400fc5e07f80dacfb76de
Date: Fri, 02 Oct 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790962233
