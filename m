Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5C44085C
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 10:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714215143; cv=none; b=VrRZxTTRpjrvuTfQQ3676g+HaPsrhbbYbgFCfWzBEtm9FiOE84LD27KAKKpP0puU2AWdYpvWBcaFeOn+dWbNQa042wfABQXvtcxuKVh6/ujTxut9HHpaPtRuMLC228FW1WXk5Yojqygw9AXQGx6CqFuoK8NVpSyceTER+Ctfqy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714215143; c=relaxed/simple;
	bh=6tG35e6JxGtYOGVrIB4Qn5wLZ+Dur+JXbKOn4MOYvDU=;
	h=To:Subject:From:Message-Id:Date; b=r5gXjU5i/2SyuHMohS8EgskzZ3aEJHpY/XGpC6PbxlPG1qtwncJux7TCLFvJgTSTl7e/vcuWiUqUeXOQfiQjggs5cpqQwbSrAZKlwb8WQlTAz9gluBNprsYNh9AzuxAKm47emetm2pjE9cx7Yb7Q8HfodX3nKN+51h0CjmdOL54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpQxvplu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpQxvplu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BDAC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 10:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714215142;
	bh=6tG35e6JxGtYOGVrIB4Qn5wLZ+Dur+JXbKOn4MOYvDU=;
	h=To:Subject:From:Date:From;
	b=gpQxvpluV0It/Pr2IPGEfYtmyQ7IQfybC5LPwaQT0rNuwv3sUWVVLVA8CZ96Nw7Wc
	 iqKjYO/JtUqP0XcZWjf6h87ieInOeejIRLSgS5I66Wlo0JSkT8T1eoZCJlylPVEKUW
	 KQ+FCtAUPxZmm4DPsG8cwezaTpkMqn8yN4XoZxXjRj4UaZ8autlLkcVkuxIociSOug
	 iSRnh9u75vdLfxQWSC0l76NNPcPsI+Kg4CPsi21sRMcMjHzJX3yYovEW3GrGdjqfeL
	 9SNDHD0l3WKHYnZ6qhY1cpgOh1Jj3CAuJK/xluQWKMA0MHeGB3jBh2VDXZYE9Drs7C
	 wflIsfjwkkaWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF170C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 10:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171421514275.17628.2074668054686858158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0cdd8773c22398834cceb8bab4c9fca832fd2a8df166fa962fb414270275ef9
Date: Sat, 27 Apr 2024 10:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714215142
