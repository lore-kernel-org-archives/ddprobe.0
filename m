Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F4C21E091
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 03:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765508574; cv=none; b=rMClBw/FJ6fV9Dte8YN/YLmS0Ftk+IljnD8qUv2wVw4+qSfP2rAld0QzpZWhzisix4yUrRL1WfhNALGWK5+Al9gzsG4D4ds8GxpBtqY4pzf8xpQQ6OYoViM/Y/hOum51poSGaP32n8VAX9T0NdWaKsF1tD9lt5lyeBhMOW6ianw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765508574; c=relaxed/simple;
	bh=8OHHfx5J0lTCOt+gEWErrzKFeLYLFwjfYCXdGqiqehw=;
	h=To:Subject:From:Message-Id:Date; b=RxiVks+MDokbn7RtOm8nA+Sgh1EexzBv5m0DN/azaSDeeBtS7FcjWcQliOh/PUZYGJjlj/pJRuGqMOzo8P2C+hhbWwjVchOvh3W1s1u6bIhBN9hXw0u4zSlsHV2KrA4NQg7m/yTblAE2v+rKRtGMHJ8IYhGfriQBOJDS3RTmRM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egVzLdsW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egVzLdsW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6486C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 03:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765508573;
	bh=8OHHfx5J0lTCOt+gEWErrzKFeLYLFwjfYCXdGqiqehw=;
	h=To:Subject:From:Date:From;
	b=egVzLdsWRk5NGz1zCFTGhGpteFIavSNpHDf+0+cTeIWfIs5/67CGkqOw88FMQbw/G
	 Eio6MjMCamdVJnbol4JIz24UOsWO33Gk4LmwR0Chi+uLoKBiIMc8HjttvrQ2YeIb86
	 672Ixd5QGYnvYvMVDRdFd/YN7ZSmKQcAvLtnOQayXCywIdwq/0N/tCps/dmIvk8ePs
	 Z9V6LxYEZvpEZePCsyPgFr959ZQ8swouPkyl7Xd1/sZKEXQrrkUxrpjqAdvbUfCqf6
	 l/wLT3Bxi678XEa492etnLwQ8Lhvm23/he539aarzofhyujn3CD3pWWbM3GPBJ5Ytf
	 cnG5A3v30qJGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A130ED43350
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 03:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176550857363.30520.5899756914412246320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a638aff640c456676f54194e9b33c700a524ab87eaca971654314d002954f25b
Date: Fri, 12 Dec 2025 03:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765508573
