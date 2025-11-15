Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39650FBF6
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763222994; cv=none; b=FnpEsCbhWHJtm9+p/0+UbSVvjIfvVP+aV2bZ/wEaLTBspWV39tzSctdEIjD5tMXGUGI/85EaGBIF2JS3vzW2BbZXuafv+MmqLZg+LTVUwpQDKDetP+F1eeC1jzuycvuq0XLA0A0kCeTOHHz2T6WGW2Mozt4N1mju5DwJXsE90L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763222994; c=relaxed/simple;
	bh=9BhwwBwOpL6TLqSptIURHzPP9Ld2Rrx4RgXMe32ZVKc=;
	h=To:Subject:From:Message-Id:Date; b=PWeJS+ZgT2ax/ZUxUM51qP+S2JN2RTupRPqPjAw2LR5hwsf1/a2U9aW+GsdXu141j3qwmTJcpte9wV2QiPqCUHg7i9YIcefMCj0+tIcQS0f2KYUMvpgtOt87dKtkKtjKJ1fx/siJeZRSiNTlgbeX+YMQpS4ksJuS7raqgvQSuFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OO4dzlE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OO4dzlE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC265C116D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763222993;
	bh=9BhwwBwOpL6TLqSptIURHzPP9Ld2Rrx4RgXMe32ZVKc=;
	h=To:Subject:From:Date:From;
	b=OO4dzlE7r2yqF3F3jnPcEeGXDtDqxtdR8isBCIkCEMVtRIuTnj0y/BClZEF+wLOVU
	 BKbAdUh4PB8W1PcfkurywvwMc3DqGAbtAX01n0oY/kCuRD1BoLAGtI/A5Mzkd1jjaA
	 MhXmMn0lNfhuHXf9VtaZDV9KGycAtxxdwB3HZFu/7JjxW+PuJl7M4OWNdwDscdY7fq
	 kGab/rDXQHQvbez15c7BWjSr7oQEAp1s/bWSvSzat2OHhqTYZSipmlXAuVF3IAB31F
	 IcaoCsCcNTSjyGEwzrfjIObwqZdoACrsqCDHW8YYMM3RV4gFUBFi56lrrIZHV0oTHJ
	 e/+gnHAzfd9TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998D5CEB2DD
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176322299360.4155.6919570522544028500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c877cd09c8df72e60b252cdb8905a965027b2bad65436a190c1e758bb347956
Date: Sat, 15 Nov 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763222993
