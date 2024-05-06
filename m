Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D9715697B
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 20:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715026343; cv=none; b=LT1OMkzvZVlY8fo7QDKnC2D3hf6N0FJHi/cpoaRre/aFKAYGvTHcP7Px0nLHa8eGm/Boso5LsHwLC1ZkBi8n2VJyrWVYOPwPX9fTR1cDjLly40FvcMZ5LTYAgKuyFyC6wVx7GHWe6SaxZ/2/jrEZ3RS343xRS4yB7iD72DC0LXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715026343; c=relaxed/simple;
	bh=NI9rVpf49T71Ewi/wnQkLDEm4VLO5rq62nVq9C9Zhcc=;
	h=To:Subject:From:Message-Id:Date; b=oj+8l/73k9PuAdcBTCieFMMTAnpBPloFSdzljZWBdkO402eDyU5Q87W83/8OujZNioc4CcLK3YnI4XtB2JkxtEa+Ho6epZSatI47HvA/IP7nQXELGPr7wfSuLbjkgYWW0W2CGs9RQUynd3inYxGfQ1bKZz4Qo0eujbZivQTcquw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXSB6ppP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXSB6ppP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC085C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 20:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715026342;
	bh=NI9rVpf49T71Ewi/wnQkLDEm4VLO5rq62nVq9C9Zhcc=;
	h=To:Subject:From:Date:From;
	b=qXSB6ppPV7AFefyiNgRlgbjDp/xzS0LGpTA0k/s/47ApzGiWhInMv9Y6yML9HVV/o
	 aOKW9JqcFoIxPE1+3wYVa3NuN3vgMaoOMw03Ih0Z2zhAoZS82w9IzyBytb/Gt15a0s
	 MQknTIxCl+dQMyT+MI+Lg/QtaoJeQvhkXBKpBWeKAi9n0mac0oLOOOT7fgjt3MjmWk
	 yOqihLNFKXu3oOasONTk5m18ajRFW1bJMbBQCnVOm1fH95hsGwjGskSFB4yuFGwl//
	 swi4ST6DbBf5itfxXB+mb7TlQVcBQd98SahOCTfYc90YMR3CkazRczO+PEHGJG44Ln
	 CLT72h86Av0jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAB94C25B10
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 20:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171502634279.2944.16987887244190625304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23ad44c3bc72d8c54ece0066853124623b4243f21025a87853d3b345ceb4ccb8
Date: Mon, 06 May 2024 20:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715026342
