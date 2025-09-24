Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33996243371
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758755394; cv=none; b=tNU2FZ21K2pCCUMItZ1eE8ZfmMhIRjkY5yDHYVKRRVM6z4PuRMsTIDfKLferrmKf6Q9BkSG5oZgGBzD+gFFOG1hYda4LpYTzdWGUrY/YyrkYDcVK82wt6VUAkurGH1fFVlWW4HJOTa0ekBtUYYxpoa3y8zdLlEQkPWzsd/UqT58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758755394; c=relaxed/simple;
	bh=i45KAn+Kcc+gbjfcG7uTLugQ3b+IC6HX2Fojr0vV8a0=;
	h=To:Subject:From:Message-Id:Date; b=HQ4UARKvhu/Vi3eBkLQok+LrQrgzd8YzNkFTJidcU+nTf8HLWGiCjMDgPgjLaim2nSgAE6yqt4kr0p8nLpEgDljPQVxUQ9tTfemfgp7qeYcFh5BeLrBGJVhVDAKxJlRMggvlleq378l2mocqgwWVWFXE/Rga13eldOKHz3m19ZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ce1S9nEd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ce1S9nEd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBEEC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758755393;
	bh=i45KAn+Kcc+gbjfcG7uTLugQ3b+IC6HX2Fojr0vV8a0=;
	h=To:Subject:From:Date:From;
	b=Ce1S9nEdQw26mr+F3UVCSGt1l1uxvmZ7PSAxxMr5a/nvaGoXi10mwEYtiiPOmjrvm
	 SKWHqY28r/kJjGP+An2FQYClCXffMA3E06EMDzFuJjgScwCYnTOOq+8URk3cVbX3QM
	 I4AThEO/qXwKALwUAtL3XTM/A3iPZlNjEaID0P1o1Zq8YrXciEtEgVMQt/8t/LpVmd
	 C8dA9Bmn6vQT0xEzZdmasdvADCMG6ExmS5JiM2xwJ69anUIkril8iNfB+g25a2LbXL
	 AiF1OygA6jmkP6hs9ezcD3zqhvWuW/gAf+TVK8voQ9bDCu7cLfudHtj6Fl+cNugVsv
	 wfshg13g9m3qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90321CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175875539358.24883.18159133106278692674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1078d7be9174ab427cd80573de7f1c1149be1a8aeba77ea094d3527f82c2716
Date: Wed, 24 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758755393
