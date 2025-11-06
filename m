Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F22D1299A90
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762447794; cv=none; b=uJF+/rlbpYAO35rQc6tFqj6J/QSHlrc9InxPekFPPl1D0+hkgxeJ+Px+yc+6rnr7CjfFGcerSHJN9jVdYL1VKiftVn5lup/r2aZmpf5ggBM+/wIUQS248AD58ESTVr5sszaJzJdvrxw5qK+tGVCBXZd5CJTG6eI0y9r3B2X+6sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762447794; c=relaxed/simple;
	bh=EFhQPjZvfHx2zgsVCezypEDh1B6I8XivDfDyp2wq/BI=;
	h=To:Subject:From:Message-Id:Date; b=nhM8id4VEWFOTB+NyA3Vz2aOJGoWrfEDRNimtttJqyJUft5boW7leUifs1vCnqgNWBs7N1YiD63UH4pG6qn+T+ExvG/HB/LA8Frh8Ik893KyoOxhY1E8b8LSk7F+L+eybddYt1+MEv1kfC7thgfYio4eH0xzyVuThaygu0bpv5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdWg3o6D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdWg3o6D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10C1C116C6
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762447793;
	bh=EFhQPjZvfHx2zgsVCezypEDh1B6I8XivDfDyp2wq/BI=;
	h=To:Subject:From:Date:From;
	b=PdWg3o6DBrAeChSxXbH8Iv2isflG58wTYV3hkz+mjFyDmuZYJM5fjokCiqYUsqC1D
	 gv4VAp+DrGqb72ZiSWA6kGRCBvyUOGXCpF/YXzAXT0nWzsTrSXolAOQF0iX7Fl/ISj
	 6x+nmMykj2W4U6xORLXEXlNimtG4D2A7izXEeX5M++agqZY245lVRDPBFfWMulne5I
	 3oiwNGA/t5RGbX76Dtm07s2F8y4EPGtEyRNNhrHUGulRXkFshO/tG9NoXI/ODMRO2x
	 /rTm2TojH3+ERXgud7Cr39uav1uetKq+09J/PqJcX3d3F3P3q8bEG8onMn9bGUle2H
	 R4rTwhHX1hchQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FADCCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176244779358.9802.431306846099663162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0d609c1017f8ad4ec7d17af64293e11b9eb5d0cb062366bf1c39f5ef41779b1
Date: Thu, 06 Nov 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762447793
