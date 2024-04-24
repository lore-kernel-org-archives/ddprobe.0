Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605D415AAAE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 11:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713958823; cv=none; b=dbiFJq6pLCYx0JqNaPb9oqQs3xdj/gOGe9PQctfoHyjs6+8yWuNTnzbyQ1CUhjagZk5YIbfKj84MJNk3mv8TFdhCrzR7Xaw5SxeusewqhdVYuWGkRYJZHvSaXMJcGjcoxO9+GT8bYAftT5ZvI05xnamyjEwV4J2a21aGzsc+GWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713958823; c=relaxed/simple;
	bh=2yuRV3K478veG36mxG7Y11exmm10rDhpzmJdGmouAFg=;
	h=To:Subject:From:Message-Id:Date; b=DqxgFw0M6NcswH1XFEDdv8+XlZu/n+9vwbdOKoa4NmUBpHXNAIGj99JRtjpmyDrqE0K1J77M7R4KAMW0sP7JWxo3UCF7rir36XQ693ZYsfNVEOwWmabRnZl7FB7gx+l1S4TrisdiU9gmxT6Zl8mz9VwhJXX4fXBaJSFMB2yy53c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCnZUdIo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCnZUdIo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E10AEC32786
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 11:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713958822;
	bh=2yuRV3K478veG36mxG7Y11exmm10rDhpzmJdGmouAFg=;
	h=To:Subject:From:Date:From;
	b=iCnZUdIoIAGFBtv9dxmJwssve/jOeX53NGacIJqhj3jFiZhNu1v7I6kqj0c4h9IT1
	 Gpuyo600zKnkoIeSfyhG5N84K0Qrdz1157L2ZjgWKJDVf6RosgYkRPYkZMhPlmfWWO
	 EL3PfaBIHqKpQQgCcK7VCQwsrbrTL6fMunL7ID7SYw5lcZfAigv4nLVzU/1kojcxJN
	 BOWVvrhsBxL3FVaE1xHqoPGL9v2+ddxxoxv2bfF+kfK2jnfq1XCX9ppu0aGnb4V0D0
	 nOVQa5jNaSdFRp/An/RJNfdM607IiOy8hsPpiYaGybex4d8kvQt2xxNK/14D/bWUaE
	 ICWCC/h5OiKaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAD5DC4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 11:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171395882281.15199.775102455676317098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e772c555e1caf390e0e156d0d60eb096edd1a665d25f3036cf8530ff5bf81e45
Date: Wed, 24 Apr 2024 11:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713958822
