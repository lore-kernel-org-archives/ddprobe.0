Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410BC3C1983
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 17:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781891794; cv=none; b=Memgg7xUOPyUIOjJcz/UPo4znDYCLNLL+Y2tniM1qsE6sy6wsjXZhiJONHW0Mkr4etLW1ls6ki123cA0IDji+5uWkFl2v7dR4fO1n2eVXunGUTQ4p6ETUchMA1HnfzxSkok9RmVdvs0coyIRj+NVXxWISlvgxaFYk/CDPhSu4HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781891794; c=relaxed/simple;
	bh=K5FLcPS8zkjUFIwmJrirNfO+B/LTkXipq+DBohDELlU=;
	h=To:Subject:From:Message-Id:Date; b=RU0Vhg90BE/YT5l7LCV0vcEsKq/6jrAsULFMNiT1Uid3EvWGwbq1+QSO/gXX5jV5/OukntgIz0isEwXh8Ci52cYGEoUqx7rHPlH2TosQ7sd5+K/2A18Qmk8C4itw5yx2plqADLnOhTTXgiAZ8FzB5hGBOfrES5plkxKA1mIrLcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NtZ7up0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NtZ7up0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C86A2C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 17:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781891793;
	bh=K5FLcPS8zkjUFIwmJrirNfO+B/LTkXipq+DBohDELlU=;
	h=To:Subject:From:Date:From;
	b=NtZ7up0DKUokchq6NFxZbOWncdCBAXdralI33LltqK+zDPbdzitR98qzVtI76RWDq
	 lRs7M2jBSXllPRNF0tb06LuoZtrZC3R8XUsWT9ZySnoBuNzKLRa/VcpQow35wzMNak
	 fp0CxIJwzOYiEv62gAJzJmCCkWqndbkrE2lpf1Rp2lt7n7ke1z/V6uoPSXazD7U6Mv
	 kNkeX/ENyc2zYK2hXr+dFFBCT4PWkL3Gc5oNLDa/kAad83e1+L5Q+QtuxT5fz0wgdp
	 nY0q1N1RYgnsnsyrCfENA6Rt3LHQd50eg4X0mAX0qYuGV05URrD1J5fS1NLwWscAMT
	 awRA41QINZ4MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA595CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 17:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178189179368.5871.1670746359758928055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf5779d312d9a60821af14bec04bb936838ed8dd494c844aaae4415f5ed895f2
Date: Fri, 19 Jun 2026 17:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781891793
