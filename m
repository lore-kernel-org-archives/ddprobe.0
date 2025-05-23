Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F56191F6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748000994; cv=none; b=qxG7msomUesXe0HiK1kE0UoNthlQsU0YrwwGxNEB1825A5Aeyjyf6XVxi8o/gsFNhv+NQN3kKD2c2e8nPbGwgwJYxIgbszuE6qlXUsFnoySHL5gFTGaIqzwhX5fLe/EVYyqeEfSnjFDmOOPopCQlKCVNUNnnponjy839iAx54eE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748000994; c=relaxed/simple;
	bh=vVflEYDt8SccVIpGfFDAbge7tRz0u0j4hnaJkJjR3u4=;
	h=To:Subject:From:Message-Id:Date; b=SC7P9tIfLe9h/3T6SNZfoOMFKtYD+mLxCv0Ze0fkAsVkacs5Yzwe0dyW+TER+s6C8zbKX2rkxSGb1NLZNhPWW8gTeo3HW3dBQTDHuoLg2e/ZdR0hZx7+4ByIL8aBoqNCpbiPm0bUcU+4mV5jNNX854yvtFDqt1JnlvmVmxBPRqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D99GbwgQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D99GbwgQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A380DC4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748000993;
	bh=vVflEYDt8SccVIpGfFDAbge7tRz0u0j4hnaJkJjR3u4=;
	h=To:Subject:From:Date:From;
	b=D99GbwgQXVhCiljzubIJnhtueX1NdioV3wSBaYmpHKPLFIIDL1EpyKTtThaFuo++w
	 vU4CRZzMc7B/BS1h0fm3zYAfs2ogT1MJn8cj28yhtI79PMS2JZvbvFLo+EkZtKdQMc
	 QORZV7snQ5gfm3mrMs9ud9KCzmhn1/7FKwMSCMSEmh9io9+x9OJJo+yMgcuRUsngsF
	 iPPIuZmiKgooG7+8v04X7AV3rPF6KcWE56ZCyl2RbjwYrULVKAhgM/BnhonO9xcZ6i
	 yPVI1hMEgV+3q2kq2jt4/E7l7hfPo6GrRsFuuyb9BTV5DXb27WlW490YzZTs7CJVNN
	 1uzceiq/0ox6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBB5C3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174800099357.24328.15877998610628451548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 636342781f6385145d57208e089b0a08d690031471da367bca1178b62b410def
Date: Fri, 23 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748000993
