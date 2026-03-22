Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3F3FBA45
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774210494; cv=none; b=UmwglklEVWFsGedVzU+HEti1oUUdnvO1A8oweXlHbsRweuKNDH34GuDoCkg40/ikj7Opesuz7CwbGsdU5lh5qYFqiosVwPMF7qSg48YtBEaCiCIWAzBoA/r8f4IYptWpgxxEgCHedaFXP/7vQ5Y0YNWfCte9IYvkFc2GNcPiIRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774210494; c=relaxed/simple;
	bh=3GTVQJUDA3cL4VDGdpBcKuA/RYy7p/tRDVaV6v599bY=;
	h=To:Subject:From:Message-Id:Date; b=S7Eo8Xh5ZYOG4joy/0NxXC2S/wW5xW99+xYAg8q7EZsQHgeVDNxaa8Rdkj4eNi61wED/k4EXnxPs1omrYKSpSMfugwsTRqtJFc3/n6HSjYJxbImMZ7IsG27ZrAHcG77SARL/jtDgQyo4TlwcCcJlqYm/4kfWDjVLAOXxC7v4XPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MW5IR0pF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MW5IR0pF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F244C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774210493;
	bh=3GTVQJUDA3cL4VDGdpBcKuA/RYy7p/tRDVaV6v599bY=;
	h=To:Subject:From:Date:From;
	b=MW5IR0pFR4YBy/AF3r4qTqMHAk+tjUAptTfOEHik8mkubWZYahs7ufJ9BtX2QvzEP
	 Rz+6+yk8tpYDOwdQS9ApnkDDVFsgTGFN9mrxpiVCeHOa1frqZON6XjWa+e07spD1lm
	 QnTksnXNcnA3ltTJFmDbUiRVnHMRue42RKLO1rORQaUCUCJt/BabYyk3KfrLEVPajT
	 02GPvGMgBmdfX7BC0tDwx17SiX6J+rw2C23/z/B2w17tMaproMkqu0njnUsygJDHJr
	 2Tqz4+igYT8rDJdMQTFZItCzCG5Y/iBW5hfP1YPh0PfHmBCTnnxK/GYC7QbZY/R+LC
	 xsiilzc0qCtUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903A4D58CA1
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177421049358.369.3658842985978904364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b44ecd58158342fc1e172f20362a45c5923bdf34bba02c54abefe78692feeda
Date: Sun, 22 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774210493
