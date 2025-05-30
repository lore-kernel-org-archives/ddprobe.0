Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C271EA91
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748632795; cv=none; b=ah289sw3IvPKgf/x4e8S4aPHAgwttCwHTQBgJh4fFgHojMdtAQB2p/3Iq93NAxQtH0e10ctONHR3Dp2mWW8aumYrEw1yOkXS2SDRwhKGIOdPplju6Cvey7nyvEUjz4xT2NB8xy7TSR8qeVM01HJV7pXtixQ0s9xuaZfljzgiQDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748632795; c=relaxed/simple;
	bh=mIXT6RTEbbUNjJHgViy/N5GtW6XVBgvRUxF8lLHe9sM=;
	h=To:Subject:From:Message-Id:Date; b=fnsR6H4b0zlHBHzOpDKapzQZ9R84CFg5pVeNoR9wnQox9o00K5hG4HlGXmj0V2lEZQJy7tbTOWAkJx+QEGx+F4pZrdqyhxPr11wFDn+jUO4qfzxGWt9+Dmfvem91kVL/k9vXu+WEJTYJFfF1kbaX87LG4sjy6wK35NkSPdrVJfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJtaElg0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJtaElg0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DA0C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748632793;
	bh=mIXT6RTEbbUNjJHgViy/N5GtW6XVBgvRUxF8lLHe9sM=;
	h=To:Subject:From:Date:From;
	b=sJtaElg0su6jf11gW2xA3NAP9qzzDpsapLEb4AeyuyBVMRkR46zcW65rmbfcpE5mT
	 VtB9s867hRrV4T9kIADjTZc4N0IrWAp/bR54mdVGfqufAD2fV3lCQBzey9Dt26gK7K
	 qDI8opKrW+LrlpSRqYvEERqyL0XsExf3783Bqz9iV24fQEmDMTbzi29fUfhtKM8sCG
	 E7C8oMVFWMJIbwYbKQmCwCIDLj//VW59jvDr6ZK+KYaksL9dFSJpN6iRvChdM9uakP
	 jH5jJG0BtKQXAmNhGFQ632y/O6Bc7APTNfZ+Xztd+MvcM5VK5FVV5Uu6lzHnmn8joF
	 VWak5k+wQu4sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913FAC5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174863279357.14376.3986507450163277773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e186eecaec3e384e903c9f86ae5d18a11c0d5edc5f1b69aedce3b7ef4c3753e1
Date: Fri, 30 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748632793
