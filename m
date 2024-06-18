Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F94178370
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 10:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718708363; cv=none; b=uMeEcpn6F7LEQKfQxrrFz/GuKbrrs+JcaZ9BeDOfNCMp3ABytmsSKcoxz7xvay47c1o1hOsih9lt41WAx0iIrBusujm9xtN/ETbHsMevXBSQ35zXntutu+OwNexxz28S1UlrBS8tm4Q3A9cATr75UVUL8rzyBMbyYlPtme7hdMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718708363; c=relaxed/simple;
	bh=9J3L2u5FTJygnzwCBYYlBbHlYNaQ6LyKxuD40CvGzoE=;
	h=To:Subject:From:Message-Id:Date; b=oKg8Ym4NK9Sc6iNoUVTflQWegBfZY/RnD69WytF9E/45a89c3dlQuLq+/VhzTNlwiolX/bRxY4vkNr4VxHYKJiJfbFN3vzhHZyV9RrXmZgxwGl3JiJpfJoNos7uvw8IJ3C7i9rib33bbSu9cyj9qeSnkVJps1A+CcCeQ1VsyvAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJokNnRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJokNnRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D270CC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 10:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718708362;
	bh=9J3L2u5FTJygnzwCBYYlBbHlYNaQ6LyKxuD40CvGzoE=;
	h=To:Subject:From:Date:From;
	b=RJokNnRb02TirnCseiOtRhhvnsfxQ6NTnCzpGwBsbPMZWt4Q6CFtqjmO+if532eoD
	 1slW3ps7DkNbECoqPAY361HP46lAOL/hdUdiPXTi3zfSbSOCtMbTBA5J/4DSr4MEoy
	 qbU9ROL8t7qsU8j/s/zIX1mkAIK7JcdZITI8XQ+4/YQ9cb/jDsmNgGqCWNw5rNFg03
	 +1jVlVNXCCWdc1KKPBDgge/IKCKRCHcdsCbbpTRyzg+x/x3peSkuCqtxavTtd/4nh0
	 O/xYpjwHzC7vvfIXE6y+FTy37AtNCu+RVKGGtdU8NtNOWTRVpWjvMhJCRxVz3d3oQo
	 ffSrxPTn6o4Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C112AC2BA15
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 10:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171870836278.19437.2241053141688542073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2089449fc6c89f627c6aebfb35740f4833012d6a00f1b3f06921354a205191cf
Date: Tue, 18 Jun 2024 10:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718708362
