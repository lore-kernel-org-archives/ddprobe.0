Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECBB220B1E4
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 15:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741276734; cv=none; b=Luib5oeoJ5hZDFItN4omQr7Mk04B7yF0f8PdUFRvJFjBAfFEd8wY19lt1eplwwa488MV1b7PsEFMRXmQWNzWsV3WxWsV8frk3YQQE8O0QeuFMLXzBHkYg40nICpYzwmQE0R1sNKarmJZjC7Ggt7Ve7+15nvxMCNon7EvKU4zfR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741276734; c=relaxed/simple;
	bh=KN+vs6dUfAycXD/It+WPvpcE+xBSnC+X+usRVb99UpY=;
	h=To:Subject:From:Message-Id:Date; b=pk4rAl1TlDxCa9qG8aWcAT8KI3LHMuvn5DJ18ELPDlZz36F/4RvaIzhgYVgDumxhoK4Dy+RE3PaXZWWEhaXK0VeJzJG5/ufWwjBLauP8KyA+GN6oj36Dg8tfc8KLHV5ZWdrMqnBWld7dcyjC83TFFdks2Rgew+5DGXa13xgq9dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRcxrfi0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRcxrfi0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5CADC4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 15:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741276733;
	bh=KN+vs6dUfAycXD/It+WPvpcE+xBSnC+X+usRVb99UpY=;
	h=To:Subject:From:Date:From;
	b=IRcxrfi0qzXJXpmQUQdyrj/S9YqFXSbWUZejQWd4CkPuFDK1Nbwffnys/g6dWZQah
	 DQxl4kv3aLs4oT5MWu9/ilheyM8litLxklRdpfFGpoH8oAH596bCiGaXwgyFBl0lpt
	 kkBvn6suCtKY0/3FOqlrRfu1aiwbTI4AHBxopfKtvZnTESze60IPg+6Xt7qpNkMd9A
	 GErBLurAB9MVHlcUpkn+hng4Fdp8Yb1qpAmEi2lZHwgBcGfeRJrSdd7pYk/RTR0dNG
	 L0KdOXAq5skEPi7iRdpL2VeUOXugplGUqkExNHC5fAkMVQpLiab7rKX0cCOsZ9H5St
	 czhCysNFmoN4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C4FC282DE
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 15:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174127673371.9599.17473398069415722290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8b56b598ce64e32cda4a35edbb96e0b25c3929382d94c037eb59e7f3829b6a1
Date: Thu, 06 Mar 2025 15:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741276733
