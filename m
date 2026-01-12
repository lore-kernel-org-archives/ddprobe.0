Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E236274B23
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768260234; cv=none; b=QsPoUzgTpoG4EhL2p8SYXX4EyJi1yugntHZYF6hHF27P2ehPsW+8CXbJwbLP98Xs5WyKf+mBKkgQ94g+6symkkF9PzLZjGMuwiexaSRmCVSBoekmlhFsX6QuyXOVrAuQD749LJqdxjPYBzfw4oLDxS/1heQDDyKOtsf35PSKuRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768260234; c=relaxed/simple;
	bh=G7zTWGf8jP6MlTj2dLHwcJSIi75OFqOqrWXH+GJq4d4=;
	h=To:Subject:From:Message-Id:Date; b=EA0B2YM2AaCnn+0bxlrWSymhys3E6DHANWg4Ua3nz8MoyKr1bmfIUdbneKto9iHNB/cVwI7Q/0ZyuGADnxiaNB6iNcSIUArEaf4UvnXw1UWJsXo4jBDOsRwUjxqVpMzdhOeubVC182RqPpTAO+WUXay6KlFEdjt4mhaHBu4ajFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFazUjVa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFazUjVa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A506AC116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768260233;
	bh=G7zTWGf8jP6MlTj2dLHwcJSIi75OFqOqrWXH+GJq4d4=;
	h=To:Subject:From:Date:From;
	b=DFazUjVa6G1uFI5NbmZlLKZMubpw/DPbqdj4Tq4u53jFh+XVdectj56IsZi2hJhYf
	 /cE8Ei5C9rxXqWx8deEeptxA3SUZJd+4ZsSHJmwPczTx00a7mU7ZcaNAoe8eos5Vts
	 4lN0u4VlgrEmTrYqZnG6mpphSwZ1hXeiI5fmVEGec7hcHnaXd19xnDPtD7aEbD012A
	 1M6UybfbB20bywQPGxbYE3hsA8OM9JPBoJeNUzyGS1ECGU4xBZ9V6Ghe2ixt1w5xow
	 ERyDQybX/eF1k2td4Jbu1G3A5woqUQlMudbeCMkuigpzQEDP/0+FLB16n/+gTc0eK1
	 h1k2hU+dygw4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F85CF45D9
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176826023359.16743.18317996789320727156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a86c4f7f8cb2ae77f786de4089a6414cd25d60195514fea6380fddae9a9980d1
Date: Mon, 12 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768260233
