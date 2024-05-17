Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EDBF3FBA3
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 12:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715947343; cv=none; b=kTfwpSZzvpLabUPYuVmOLeZn8uv4nWpolFk8ou+pnNQ+8+fzuGm5k2AO4ro2sNlyLNWWO0+dkCmNyUgh5+vcZ5ar1/Hqo4yPkqOC+eLsFHN/zWnlrnxNQWPTxt+t1Doh3ndL72EXiMzrAZQHogupOKHO5UKw3nX5Rylj4XlvzeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715947343; c=relaxed/simple;
	bh=nsZpXQyQvydj3XYGR4okUbewgokFwHfg2bHGwdrJD88=;
	h=To:Subject:From:Message-Id:Date; b=jNf7orUP6EVs7vHmH2HEtCL6xNdBjg/8O2t1h5KWKlTfG12TGmaeh2r00j7JM9fWdjcJvbvkklEAy8XavLwADLjCreAO1++wewmnE1ZNT26m7A4MZDom4WMtoIb0AdBqRVQf2FOj4KpbKwVCB+RNSXMtD7KQ/WTkZ2L0HajiNTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CalVKBi/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CalVKBi/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89D1C32786
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 12:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715947342;
	bh=nsZpXQyQvydj3XYGR4okUbewgokFwHfg2bHGwdrJD88=;
	h=To:Subject:From:Date:From;
	b=CalVKBi/TzneSxYakhkm0y5hWFIBldCxQG339PcITBREYglYx2mPefRsrn91vVWNL
	 vzUK7jIoQW9s3+qsvzUYyonqZh7Q4AOsBFYMLN50Pq54Ru0B9t+N3HlAYQdbclw3qz
	 WN+2RI3GH+TR6D0W1Tdf4sRCcMDWbE+ixQ/aIZ/LHknI8umhRqqOi4bqpqY+WOOOBH
	 mXWE6Uuq0qMiRT6xR4IRig0eW0iTN78aOcutKPLogDVitwyO4EWCb6d8qMOERMIbGt
	 20e7HslLOkiGIDa9xRLgF+S/tN/89AW0clGLgwfRIwh7xRAsSw6i+mLFJcdksR/kel
	 6+rjn7OIr6UcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C93D9C25B77
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 12:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171594734281.14008.8323257788992479154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cefa8f0a5ff5521547e2fc09b2dd99e05991287e1fc6aa4417ad697a38604fa
Date: Fri, 17 May 2024 12:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715947342
