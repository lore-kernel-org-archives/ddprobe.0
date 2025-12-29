Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E833123F27B
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767023634; cv=none; b=FR7h2FYhNT4fKuFS8w0V5wyrB29r7kG5e+0Afk4P2FAw/BfQfc574FUnbYH6E62RvuizG0mog4a7Q1bpWkhoVtxOWDqUeK8eCgwliqmh0nhlOUzkS590vF59XHyPAcwoafn2VN7rZ/9eDqROkqJ90FSXqndOHxFM7fiwLKnDLDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767023634; c=relaxed/simple;
	bh=pC+wnuNsS6USGNXBJSe9mwMKP6gN657y6TPC5aBzPE8=;
	h=To:Subject:From:Message-Id:Date; b=D60ynQ0F+mxd0VQsX5HtbDIohp4/frCR2tZFMyPSVoGW/28x1iJKFjbOCbiqwIZxbb+tVt3R4vcAAMkrR8iWk+X57WEEJQANOaDDcYwo/cOsGqQwq0ruzCU0I2A7wWMuN96RnVzDGOuPPp9pncgbD532iGI1dGePV++2yUAw17E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJxjffR4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJxjffR4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E30C116C6
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767023633;
	bh=pC+wnuNsS6USGNXBJSe9mwMKP6gN657y6TPC5aBzPE8=;
	h=To:Subject:From:Date:From;
	b=ZJxjffR4LdR1wSzZA0J7M5hDd3zmW8j1CBUBv+FrSuF3ghNdGdbFk7k9Sr5SQSxpw
	 CZVcYvQSYlkiZfkQgHFAWi64Cj7CkDjQmVMGdMbduSvAZZ4lh8TyXFnNwpJgssdi3C
	 UfNYs5bNg6cVuuVlVO57dK3F2cf0h7FnHdxG17XES8SCSdg3PjRq5pcNQoqRzcpGHq
	 Nsg69gpAYvBXNck9HmGeVVkuVVQ+y5QNrGOLlZ7tlLnswjhsRb5zpy+QoORKrJZJWb
	 fjPTv8dh/e6INZTkBi1Drd2whqd83ioRvX1Px35NBU1BblUaRcNWpshKV9jsmlnF8G
	 Urb9O0pEVfvZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DCDCE92733
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176702363363.1709.3859446864961900462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a226dd4f5a0b1bdbf4ad3610418ad55361693462168c97706d65a8a69b1535f
Date: Mon, 29 Dec 2025 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767023633
