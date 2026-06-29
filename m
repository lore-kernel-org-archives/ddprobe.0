Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C86E13635E
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 00:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782694714; cv=none; b=PLu8ql4f3VM6HP3zNWbKOMg41EGCpfpzfDgSs5uYHOUxfoGZdd5e8xhFCqpFSqYQgr1kDy/Hz1rKc7+bVIeSk0Xvqabeir1SCNFDhCxDaeqJ9MebkuGecBDM3UvopMciPOkMzLAcU6RkEAWSGxEmC5PdssAwBfU1y9TBsXD3A6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782694714; c=relaxed/simple;
	bh=hM/eqPlSeeT1NZaddSUdosjJOz0NM25VzNzatSSL5XM=;
	h=To:Subject:From:Message-Id:Date; b=Syy4ZklhMXqEOisupUyWPjTMpfo1rAeS1s6xJjPozIU2I/gA+BbU4RtQsftHk+YUIHbHpHp6h6kmTYnq+xSzfEfi4/In3PU8UH9LZgXkOdZ85LmxdPxoB24CXdu9BlxOw5azTp6le6kfT2tLmuxYu3ddkImfRjuMzO+VpNdvJz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQ5Id+hc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQ5Id+hc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE75C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782694713;
	bh=hM/eqPlSeeT1NZaddSUdosjJOz0NM25VzNzatSSL5XM=;
	h=To:Subject:From:Date:From;
	b=fQ5Id+hceu6vU35HUeGuJCn34QUmAhsmOaMZyWNVosR5YYL19O1MpKXE1V/9m0M4I
	 AKYgQQMSS7zRUN85RKx4msYcwaSekyYspuy8oaedKXcBmpGpD3r1TxIeffa+kbQkWJ
	 lNAfwIwZ1/ssDGZE+xG6Ye1MBns8yjW9ZMaIrhAR2O19N4Y/L02HoLYWQmD0IAxCXN
	 hzPcwPmkMTWhABBCFYRk7Wz+Popsxt+XxmAL+A9CFXgqEmgR6Qxw1jjjb61+g70Ez8
	 aE9OaWehXui86dRhU8aOsAf2rswfs/78Qo8j724zkLmL8C/PK9vImpGGl/Z8XuC3Wi
	 SLAPZtWSKCs6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD031C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178269471368.20264.6990970034472529322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5f012c433c79fcd603403863e93227efeb082e5533fb5afc3372ee95a9512be
Date: Mon, 29 Jun 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782694713
