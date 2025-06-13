Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC782580D1
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749805794; cv=none; b=mILbT4hOTtG27gOmV3gpuaGS6GZ1pZKP/lufvWsFemM9/51SR9w10dXGV+q9WZpSWp90T5uP3+mTXV1Zc7/jFsSzxxar+oCobf95XdEjP60ssN4UZzYmCHOsaQB1s2jsr1l8lBRkw92cGQzHleJa8ko/Ab3CngokmBc1ihqJS3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749805794; c=relaxed/simple;
	bh=PADJFLzsO4JXJmTU1WD3xiooEXEEqA+MeDOgNH5h9cE=;
	h=To:Subject:From:Message-Id:Date; b=OdBIPkz+gK7zTolWcp/kaIDl0MQlwDv6A9rrlh+easAdE+roIqlL3AoZIDaJywnkqj2nqA/0gkkS8UARUHiyCN32tKJ8+yRchsfMLGUovAD+/IWLCJP3lpvbj0qMlnFhEU8AkXkBuu35x/1w1tVv3bzlANHQk95VO62lL3xQ5Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZOyPzq6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZOyPzq6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6FFC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749805793;
	bh=PADJFLzsO4JXJmTU1WD3xiooEXEEqA+MeDOgNH5h9cE=;
	h=To:Subject:From:Date:From;
	b=XZOyPzq6ls0uW3ODJui1TEKD7aORPCoP84VO4yqVhmyJtaOkCNr39/95uGdyy4SJZ
	 ZpH9vpYf0yRx+9lY/npoZWyfcseRdYFyh38nJuZqp2HnDBqhQCLd6cPYZzx7wYcLKQ
	 Jj5KNMrQYT+IpkQ96Nfw0G9Qa43CrGIHA6h+PxNOdcFlJhOQZrWs3R8yBZYw6dnnb+
	 sQVqtUOmLHG3Sm5Op2ZlS7m2+gRm8hkh9/PmuRetbL2VqfzFGQKAqlMRlf2LJmWC+F
	 JC5mHhLNcoDlzbmY2R2FeDy9ctRfcq+7LlFlfeS9YS0M1oBcsZCYFrfTGLUCzkKUHw
	 feI+BqRBlDxeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903BDC61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174980579358.12141.8382435978805450059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03166bf4e77af584a881fcd7b4e931c330d2ee3e9237e1b78c111128b4439be9
Date: Fri, 13 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749805793
