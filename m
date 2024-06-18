Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69C54131E5D
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 10:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718707763; cv=none; b=VvL1yT++vpKSQ/eQb+OoB4YXBm4Tnbs/ufHfb4Q5/4ECvCYImQiCl/SmnWWuVFDTJ/Y+sPOUekOrtTmFEZVFmEzFcjd+9VRtTc9P9X/RriWkrEG5j1rzMwc3cLxLytVsxPo5lYuEL0iN0nP9Cktp7TBdVY6UWR4crSnG/oqIiCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718707763; c=relaxed/simple;
	bh=Pa4SJP+qLFoQboTYcSGSpWniyayPuLPACqNDJZ8luy4=;
	h=To:Subject:From:Message-Id:Date; b=KuB9zztaxupKdeuhTaUtcmWHdjFEQ5IJtrakh7X6sSbExUNMh/CqUTDrpPPRNMz36b4PPNF87o6PcPupitsoQr9S7vLB2+Jn8lHec8Y3t1AJ5JtMx4CW/uKU9a7t90A95eZyi0QShlD6qsKNc6hgEbLvUIa4F+s0o8gPkR934gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBcMxfqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBcMxfqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82BDC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 10:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718707762;
	bh=Pa4SJP+qLFoQboTYcSGSpWniyayPuLPACqNDJZ8luy4=;
	h=To:Subject:From:Date:From;
	b=cBcMxfqzx+knXIhYJxZAc8juBxLy9MiSCOl5b0g0d07zhb8Zau7N7IzdYQMsXMZ9Y
	 hcXUyY/wzT/1jJYmBUaytfNQUMss1xdYeEfjCNcrGHeLAHbxLmXP3EvOcKx/qd7vCv
	 rFYCsUy/S0rSOeQmJf4jtMaAWvUs5lJC03q0TeDikGj5mOLVb9itU/+vNJuwOnTbQE
	 8HmPeOF6QbJOZrkQtFHysuY/WcdWYZoVwJ6mAK3Q6dtRR+9vdaANf9C8dJonUn/z7P
	 ebdvaJW07nZwPdgry9gfk8RJdr3RHwJvMn6dKzyjjkUIUo52dw07+GKQ2sfX1SuTQX
	 Lc6tGAEM1MW/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D30C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 10:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171870776281.28759.16968929990183238475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdba35c5977a7ebd0cf8f4564a399db0d3d781cb728fff3b49456844289f6b13
Date: Tue, 18 Jun 2024 10:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718707762
