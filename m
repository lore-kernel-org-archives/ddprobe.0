Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227C6A5F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 01:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713488963; cv=none; b=kub7ARq2NYYcBTK1xTMspSLvidqd1wWvSWAQPu3xHe8bXZWJtbXrvokLC27H7Qghp085fvDq0slxEHlZJTWstgT3oM3pBH6pIR7N7hRNk5TWjNtTz7wd/OhMb7GpHa3ytQypO6rIsHaJ/z03V6ThBFvqYHyKKVd/DiMWVJsmy7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713488963; c=relaxed/simple;
	bh=ZjJLqKPof28W1+//GxkoNfUyTzQrnmaAawLZwyKjxs4=;
	h=To:Subject:From:Message-Id:Date; b=s/PUKUWI2KppsmIXv3nXdegOwzVCnM7TcMGNGOVgqEucKD3TXbgFei5/ItTyNHD25J1OVjbHXvJHEXxBP3W1aOnbzmayknk2IQfyUsRRsU7euWtE52nrc6xe+mSSfSnBegotOfiS5YgXCBeO1bW7XjAXXU975avMgwgozYPx/k8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDBYJ233; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDBYJ233"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBFE0C113CC
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 01:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713488963;
	bh=ZjJLqKPof28W1+//GxkoNfUyTzQrnmaAawLZwyKjxs4=;
	h=To:Subject:From:Date:From;
	b=hDBYJ233j/U0MLsKtCv9Qca9UUzz8LFw+IDyBIDkqFxT1hUGX7p+vU1wLu49Cvg+f
	 aVOaYSY2xcpRz23hQSK9vmHtF1PhzhrLZO434WJAjkmTkaikpEe8teJqST+h1mKBzh
	 w4XyO/WcZRvXnZtvQtG+PxXznKySpt59AUMBSgcnK8BBtFA+k9FrM/sNcrg7naMi0S
	 ly+Yj0cQzB0+k4HVK/H9vH9mLSJDbcDsw+oBX0oIwX0wUc1KSKiUTN1tAqeCYM8Rme
	 gGiqwHsec3qtUYCkaHYQ6LyiyPnaeoyBf/qhRLVzSvt+YAVG+frV/Pgabuxc4ZX/LL
	 48QR5iQLJupoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFA4FC4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 01:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171348896280.4127.10074323877723960998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4efc925c9fea800d7fca3de2574a9f91fe94ea81820c54d73a080f508b9f3116
Date: Fri, 19 Apr 2024 01:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713488962
