Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F40C287247
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774323294; cv=none; b=PGeOvjJcBZ6SBUDgpaE5GP5eRvT1b0j0zbqqf7d5AIMKWH93ds8tiDa8Yt6tqW56b/y1q8Mlp75wUsMziC1aHbN/Y7W9B9pFdFMjIMuAqWNUH8PmLjKhE7MMyW9q6PThNWkZvn3uDOEr2YMw1JLC9IQU+bUKHo430a1zLraXVX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774323294; c=relaxed/simple;
	bh=IPuF541BCJXu3TzRZsekR1PcjhBgNrIGpDbS3kU4Sp8=;
	h=To:Subject:From:Message-Id:Date; b=OAAXpUn3oeFFwUgHA2Ue7pv4qlH4iyZubw+Ag6YBrbI7pn1w1lFhbfo9cc5YHduCDNfzHmouTY6F51x6uza6iIn5EAx4mz6wcmkCXG+Qi9731NlCAxxqRF36pCa/pLzMlOwfKSOlI6FfQ1BJJn8a5MKbB13/kLZmtd/XSYg4q7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulG5UpGO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulG5UpGO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6740C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774323293;
	bh=IPuF541BCJXu3TzRZsekR1PcjhBgNrIGpDbS3kU4Sp8=;
	h=To:Subject:From:Date:From;
	b=ulG5UpGO/jOm30CPJZSolbtdtHo+CEonE1X8k/qxCFXj1n6jpZhDXOnPciOgLCZJk
	 512xFi1JuKK7N/zyiODYqDSlaRWqR856nB7guRNXma1ac1nFMYJ+eViEWTtyQdBoOe
	 7DKgTm1+FH66xs+On6u4el47Xd7IM55Qz6CcM+9NQnOMkEsawcSmpYIKw0OxcJF9DI
	 CWrLO12nJbp4ZnARCf48ZIXFSOmdHTpfQOoVXbfoYJF318SMz+Mmv5DTpBmnGItc8v
	 oRJFC0fP2pNflQY0vSsgBYlQ+RJ825UPAE2ksxVD3QNmn84HBGm1q9zfchFvk4ADME
	 /Mo5u9jH3Alxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BF7F532CB
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177432329359.13807.1904757064103016550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12411a51ec1694dec7ffb788a1a84ba61ee2c1f91461df13274990c998f937ec
Date: Tue, 24 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774323293
