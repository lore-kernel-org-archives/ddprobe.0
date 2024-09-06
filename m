Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48424158866
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725620154; cv=none; b=C/h67Upa39uRoNDhcFvChC1X0jbzUXxie8EhU/lpw3/o/J2tIrpVuVf+Bc0vNMbAy2/Ym0iWO/ycMt0On51uFChd4dpR7FOQdubRyY4HJs44fgwLXG5h/gYQS1KQOJyF5syiKDxiX9/DPUT3AGIyJgLnCNZLTXsqz3QxO+h7AVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725620154; c=relaxed/simple;
	bh=/Ul2B6ZkjOJ5eyDu3Qg+/SrZZ6FItXe9of6t/j325g4=;
	h=To:Subject:From:Message-Id:Date; b=VqJVYzBLBdk4E8BblvvtRcwaLpylMkHDAGZwXNmchB7wP3Y3KWoGeS/oxE0vx3nhWLUUCXlgM+Tm3s93wectabcRN1mNABwLF/ppit1wWKcGKxcsGVaLtIqwYVMAcJY26bU6F+Iqhe2xEQ50P2E5DNkww5KNUcqgfzaGyjICixY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9YFiXpW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9YFiXpW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95B5C4CEC8
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725620153;
	bh=/Ul2B6ZkjOJ5eyDu3Qg+/SrZZ6FItXe9of6t/j325g4=;
	h=To:Subject:From:Date:From;
	b=E9YFiXpW1v6ST3gNTny6ncWqiDj+iumwJ7fiirAVszaJkm8B4DfHBebQ04Qdx2S7T
	 JtHVeCgg16OM3iORgfSJivUXg50d2pBuTUWy/TfpOWJxvFtEfy0P4TqX2aLTxEfYDv
	 wVR5sO6fWxntmwngAxzMZXV0jDfGJukLfLKLW1yTOEiQiPUdMfL1jraH4gCG4kfz2l
	 9U9sQyL2YDCx3Q/eAM2DC9qs6t9v/eg58yZzHjEzw052hiOS7j2jiAAMY+OlGNtzfd
	 P6pHC3qk2nI6/oYUxSSXxGoFWg1qxtqJFxb1jIzwTJC0waTUJUQ1lxJTULnReVWFQC
	 6uwMS2QLC6naA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A79B9CE7B00
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172562015367.25325.10055709937912277899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abd2d6b81d9596f29d78357cfb73b525e8770297dcf006e373a36d93c8e3fad9
Date: Fri, 06 Sep 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725620153
