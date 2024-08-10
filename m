Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F4018D
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723253154; cv=none; b=rmdbotw7VAR6NGIfV8C0RRIgQ7ZgGF/q4Y71rw/Z+FO15y+1+JpdrgLxRL9Ms/R04jNjqCOKLhidLjrVYAdvdbYWqm8xd5E9gzqBMiTJDRnCgWKa75TSMlfqzRaozvpjAcci9SW17tekKHSTN4WNKgEzYHETZt93FpklQ7BpZmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723253154; c=relaxed/simple;
	bh=o9wwq7wI60Hdyc8L/zh9fgw2DLAw+k+cNfJtjtVicPI=;
	h=To:Subject:From:Message-Id:Date; b=qL/yomyD2LHwcwefpSloVvLKDhBoQOTvtmeqJgAxwuIPhCFW0iyTEgrmJTyL686cRIF7/4TffeI48dxX1P8cjqkXKgAk2rPSASgwIBbORP7oRnGZYbUNwgKDiKj6g+ymh9e1uo6xo0LgKQlhoCUqlsAhFrQK5rmbbRG4dmJVMew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptWrV7ez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptWrV7ez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8666C32782
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723253153;
	bh=o9wwq7wI60Hdyc8L/zh9fgw2DLAw+k+cNfJtjtVicPI=;
	h=To:Subject:From:Date:From;
	b=ptWrV7ezmqiDlkMvOOUAbrOn+mHMe3q9b0vabrMA0bhjUOVW6eK9Faz+BVhtiG8u8
	 EfU5LpuTF1vutFG3MyxpZCYt8RPlBBCNZi0I26BZdZsHt+ov9xC7w+0l4qtzlEFFs4
	 HomwpABPkwN7/hQKlQIiFgpKGhJAxgu87vBQsC9uXNugrOX0VO14lyDEciNNe2awkC
	 NTEXseKjPTad/lBu2MuyqUJF6CS1VSc91zjVYLwk0tqXaeyoes+csrFmt7fyAtaeQB
	 Md+btdthJ5/WCUWNVZJclSHdNe+KJpsOAGEdjS3ilz5z8/yb6tVX+n6iH4hZkwgkBy
	 DRSdlh/L5aGXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A74C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172325315360.21375.17925762466263506912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76c226ed967fa87cdf506efd33334eea1cea2a930bf32eccd35bc00c1b79f376
Date: Sat, 10 Aug 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723253153
