Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B191A23A9
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744660194; cv=none; b=JstAjw6z7jKiiXtCZKDxkxfBQcuCFeAIq1CwBkDBWg57/p4FOyjbqK3b1x+jKYr2CUObYuqQyP/7fdW1GoF00Psrjm+T2n0d57ZIiFzatlwilCGPDTUv/2OCwZxL6JQ8Y3I/YC3Ct95ws4LRvpuo8k5YDsoxpDZpDUzdPI+oxcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744660194; c=relaxed/simple;
	bh=LQbuKYIQ1tGisfyQir+d2eW2ivd5Fqukqx/enRiEIdw=;
	h=To:Subject:From:Message-Id:Date; b=aT/rOckhLoUB5PQhFQXsv2/q8stjZXn7VLdZVVYqm/K/NAzqn5Y/zVyP0K70go6w41lUT9WEqxNp6SenHe1wbidptLHmlD+HqCNSuGzubqluKRXVKpVjyv6pXVxVDXv05RnAUqLxBYCPU69yq+i1/Ve9HNPOxQmdKRY8DYJ1VQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zs1CX6W4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zs1CX6W4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99DEC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744660193;
	bh=LQbuKYIQ1tGisfyQir+d2eW2ivd5Fqukqx/enRiEIdw=;
	h=To:Subject:From:Date:From;
	b=Zs1CX6W4LffDDIOViJMTayFA1fjhMesyTDMgbZnl8f/cxi4hF6B2117Bqfeav6mBL
	 I6vB7ZG+Vso9uO7qkmFJvYZfyuYlc2IoyNOxya6ygYiSpZjbE44PpOaETfa34MZiC/
	 OwWycTcEbhOu/u2lkmoMEDeLKcGO1DRmFF5ng/C62UisXZ+BTWjNHtLzoBcsW0j52D
	 wTw9Ggnyxj8JtSA1gGo30EY6UgCPf0xhOti9X/IOD/qSZsLePZH2YGH1fvuDl0zk5g
	 VIuhloWngz71KxwSS6vXDYI9lIAY+LXsVnHMlYd/mb5dkHcGjzXHQDhacK4J7WWWwE
	 oVP4XDzKmCTYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C02C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174466019360.14504.12005080797379115464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c2787275ce4781ae0cebc8337bd28645ec3d4d9dc7add0f7c7eed851e794f2e
Date: Mon, 14 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744660193
