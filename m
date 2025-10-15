Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A46302CA2
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760519994; cv=none; b=l76I5SBmSWnbXzIrhIbUqy56uyk4ZZ6N4MFUGLvDJBxgr8BvAsdBQa4Vxjvr7fUH0c79m+TSkyy3/oWsV+wLCFcSEyAddQ8OEtmh5p5jsnqLKe74MAVv9nSOM9NnSWc7gusoPxDdZDVoN9IafssPAciHKaCPvyevGEPRPNU5zYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760519994; c=relaxed/simple;
	bh=nSnDtewIqJQKzXkJPJCOmsbVTspCb6fnpzsueTqkGZQ=;
	h=To:Subject:From:Message-Id:Date; b=gz+suYqDyv7D8ucMNPcGcPrDS/lzxgAPZAevqKKAPCQIeUZxPl0ljkTKespDNYrEJu/iwZTORKf0nEIF9OjFJHz51gB9bon6Vq4tAMuYqgbqF9QF/dPn57bvcpuPmKaJuVsJi+Unf50nKIIPz6aouD+jt+Q01XREws06fSOE9pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nc95ip5E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nc95ip5E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7D4C4CEFE
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760519993;
	bh=nSnDtewIqJQKzXkJPJCOmsbVTspCb6fnpzsueTqkGZQ=;
	h=To:Subject:From:Date:From;
	b=nc95ip5ETH9VQ+YwCVUBxoVmnUCewTBsHBLarSokcV7JXqcgA5aXvtG/NjkfHkpjf
	 k7E4MVPGF0RBsPPWq2q4mEqwQDlsiYXU+Egk4DZNrmmQCrvOu5ldfcDytkAdTsjddg
	 Ur1W4I+MekH3WwowIIMUZ1xOQUpJacgAyr5v4x/QEDw+loxdMj1T/B+UWzKDBTKcNJ
	 I35051SqvdQWdJqRp0EgyQb43nw1Cm9vFqcY7l3d6TxM5xx63DtJ8WBBys80D5SfM0
	 P2P7mASH6Lo+a1OXNyWN6F6qJCk5+jBB+VL55xRXaX5IpMajvEKnAhILd4xqCRHLsS
	 LMzO4rzQ1G33Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96324CCD195
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176051999360.6942.14764847414407504745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e75f745773c0fbe9fb18a8d26282286f8eb0eaa79165e49896e1d56d2419a90
Date: Wed, 15 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760519993
