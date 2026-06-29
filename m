Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205FE3C9EF0
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 21:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782770314; cv=none; b=D6EBj2sP+yMAEey1Bu8m5+aZGg2f3Lauy2/SVCPw16DorsnR5l02/lKkNK9FvKvsTWkOdBhovltCD9x/bc5Nq1QwkcF/j4fytqKWZQB79wqGtWcP6tEoje2DgJj+/HLYXYAqbcI8Iwj2CZNmh6eEl/oZuG8MMTVGHi1tWOuzj+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782770314; c=relaxed/simple;
	bh=3rBtvwViiAUxVar1JplOMasI8KxfeeTVioubG6iJKUM=;
	h=To:Subject:From:Message-Id:Date; b=ESqT9lV+pVUx7vPx4vF/5d4JT9FhIS+cjR+jKGuFBzebnTADK39YOyF7WRg3zZofZYVWCMbKp0kAcifkumFcHx5P9tuPCfOqDrDu+7NL0vV4aBpUFTThopHe8hMjlfjYbTBCPeaaJEabT2D38G8n0OTtrI/USfIFTj/vnSPJ+z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XuaTCcVO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XuaTCcVO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7D08C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782770313;
	bh=3rBtvwViiAUxVar1JplOMasI8KxfeeTVioubG6iJKUM=;
	h=To:Subject:From:Date:From;
	b=XuaTCcVOcs1FUQSmxTv0d8W7tac8mBM2emMtDVNjuzDQhv1eHqLrS6nxQ/rsDm9cD
	 iuWZssZyQq2nNo1uuMiocjq+bLz4/bhMVNS7uvoF4ZMnwVlS6U4Of+NJUBsZkrC9ud
	 39jHfpkgczUBgSestsDSSqKVGtYerB0sHE3HkNNGMzL1G4fAGZOsFNFEywCB4RTIA0
	 SCXnLLpibIl2kIlp7LYxvrq1GiYkYDveVq4q/4pLVU7HISJkeFQgCv7OZ/acK6iMuF
	 M12nGXrMTF76KbPsJMM8RJQZejKCZb55xvfYl21ZiW9C3A7QBbhJWHNdPZ//lK+RmI
	 yvcAuX9b6H2tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAB0C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178277031368.20874.7454871283500148506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f3380a03e72a4d51250057f1760f934de3944bc7d66f9484c4a71cef35396bd
Date: Mon, 29 Jun 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782770313
