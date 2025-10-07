Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF5C64A8F
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759824594; cv=none; b=QuAQLyDxgxOXmFh0wBqnAmj6c8Dkwi1rpOHd8S3Ljh3VLV28IyldU0HXg0y/RX1OcYjobHz4/z3qf8SpUjTYVyMBsCZKm4Bqa2NRsBrYtrKfCTKz0zIkIhwvsVi9J3Q7wgX6QO8DaL22XXdtbjN0Hf8cjPr5461I0goN3WVpqBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759824594; c=relaxed/simple;
	bh=wKycHlfvRJUdRGkkHXPThdb9Hdnd5UU0dr6uoEBHzLU=;
	h=To:Subject:From:Message-Id:Date; b=pLZo/iA916uxQqDkDbyH2XRlTUNsShW3+AMw4Gu2PIOIpEpeRvQUc5Mbg8+r0shbWLj6Nn9gxs4aDLe4xpZDeElnhNCthy6jc/PkojjysIHuaqgzZRuTJApffDWXuzEZrB2gDk5jPnU0dBqAo0obJC1WmCquad3VDXbZi6Ylhtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=toBh5zYB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="toBh5zYB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54D3C4CEF9
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759824593;
	bh=wKycHlfvRJUdRGkkHXPThdb9Hdnd5UU0dr6uoEBHzLU=;
	h=To:Subject:From:Date:From;
	b=toBh5zYBZyPQ/FRJyHA5oKtpM3sycs6bP5PLwjdEHLq0nnP93ZCjyINltgJiqwZnA
	 VJtEIM/0R+i/za1YDNARKTDIRUaYGoSmFrRrhsNPItkTJc6COfaKxur5gBPoyypm3P
	 JB3BZjr5PUDJj73iW+k01jeIqKqzM6apMxgUaXyT2dV8iHc5u/pIGxS93Ib4YQv3lH
	 yWoD1l9jT2hMFYnQAWrkbf7ZP0H/bpsPwKXWs4UzibikG7rVUoyWZ7ruV0TsDKTTaP
	 WX83TZdltZAHpgoeMnlSOSQTEm8sm0JUTFHcYRn14uDv3+7GF2TDmFVhpA4wQFkJZL
	 r2T1pc1MmmxHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930A7CCD184
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175982459358.25118.17477169957211209158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3989390b854e9305f1142c098c57544aa5f576707521c1a4611263e38011b38
Date: Tue, 07 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759824593
