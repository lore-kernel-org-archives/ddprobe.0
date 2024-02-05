Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0E6B642
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707108497; cv=none; b=OTN0WUxQuf+mxeg4HY4R0Hqv0kDK+eRSvTYu1QoVJYAtkSiKhcHVtTRs/VUBcUKcpxx1u6MD/HK59lWXjvnATWIrOLVREybVz0OgXQQbQUC+swsMHnUXdV1NhedWff01M4RONHQQBqDDu2O3J3Z7pFtne3XnfoZHh+oMRZZdHRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707108497; c=relaxed/simple;
	bh=lJSnXXUT/E1x2X35eCuke5J/URnsTKJKJSJfp1gaOQQ=;
	h=To:Subject:From:Message-Id:Date; b=WTozkMKABsqzmz3ym/bPhDJqCWNPLBktAHpTL0Pa99rMEqk7KAUaZpZrCKZVlquil4qgD6IH6Q5oO+DkVxzZIup+kYf+O+C41eYqxMbj58iqOYO69JoUBYrgdsMcDC03DaAs14ZJrG41+Fd9jXkAttV0oYtvF2UGwwUy+jCNCDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+kCoY3n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+kCoY3n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8488BC433C7
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707108496;
	bh=lJSnXXUT/E1x2X35eCuke5J/URnsTKJKJSJfp1gaOQQ=;
	h=To:Subject:From:Date:From;
	b=H+kCoY3n72ue5qn2Ru71VIohU1O6QeD5AfKgObQWce1JKs6rIbc9VIc1YEhpcclV6
	 J9wZ8mjm4PM2sG2fUbEQj0+iA3qg/sEQvjDkjp+a4fhtqh9oBQAny/3WN+8hC8CwNg
	 SGUuicCiV7hUFEOLv5Stg7gSOPkhP5ab+UU2wo1x0FfgjMgu4VixuFB1Ur6uQkGKlg
	 Zz2+QOAV+vlZC119jV4TqV89AfrAk4UoQPSdkeh1R6sZUridxZwttRYBSlny5TkVw4
	 gzMf1nmNnjKavckgKjM5rpqlxllxEwmpmcJdwPE5UWOQ6V559hdzjk+Ndt1MX129ki
	 7/aRFcu+zSMNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63ECFC4828D
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170710849637.2503.4019352066005445428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e6fec5a76a3fd9224e16caf200b66f7b4ba11dc7ea4a6cd3474fd8a0c789295
Date: Mon, 05 Feb 2024 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707108496
