Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539D02AEFE
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743212994; cv=none; b=GwKpDavOowtl9T/tkd4OlQ+SOq1pp40zYow3ga4yHpyUE8JR49ahR1USGCknuD+i7pNVFMFqIQU5Z7RyXWriQdbEiOohpY1J1+FlfIVLZmzo+z5RhqdL84r5uRbj3Tl6amw4qnAZV5g49y60+uQf4fkLllSSRS+MQTB6uQ62cGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743212994; c=relaxed/simple;
	bh=P0r3I/4erLjU3DhVNXaghV8oneXYt0oNBG1JBqTKeMg=;
	h=To:Subject:From:Message-Id:Date; b=t2SGee98WJ6fod+nCS93ae6PpqSL78Ryr3E0F9PCaegvcTJLXVCoetu1m+Q5pOBCSiEoqZGvPJfEQLZWexW3iORPgjLd56sZsh+HYLAq+edfffexryPY2OogaP2wnyEwT4LGbYe7VhwL6mHkKZHwxeTZkYn36qEyH33QzRwuv4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ujjh8XOt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ujjh8XOt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B93C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743212993;
	bh=P0r3I/4erLjU3DhVNXaghV8oneXYt0oNBG1JBqTKeMg=;
	h=To:Subject:From:Date:From;
	b=Ujjh8XOtGggBeLxzsUrAPVhJNMB6ujLP6UmbJNpkrjfpBTqAdfSn6/gvPy9hvmPAA
	 W2RrH9m2pE+No/9YKLcu0jY2b7QfEaER28ho0AfQobPPNi38D3bFWH9jVaymwUWz/Q
	 D30NHuUAsc+yeaiaXELpLEGUlkLm0LfVWOs7qbx4t5XVUqMapTzBce06AflsP4xcCG
	 iuVoeAkHL2yQRI17CDvrVIfEonSLnIg4Ymf6jgA20hhpG9ix7rxpqePGMiNzI+tY8t
	 PtO9G52EbjWfH1hKyWNKI4DYb1pSSlXYpInQGF+mwRa/+Ku5tfQE66eqkQdseVS7g4
	 KNjAd7gyOH9vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACEEC28B20
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174321299368.409.6995336898990272099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f74780224c1fd0fad81eae7b328cfe750d77ac482e8ea5134d2d1df1bc76aa81
Date: Sat, 29 Mar 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743212993
