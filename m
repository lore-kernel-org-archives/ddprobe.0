Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446141A8F84
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744068594; cv=none; b=TDod3Jlbp4uKHpG69etf/EOX4b2AWErSnfadK+BtYRzl14LGCS513VtnxASaatalTaAyjgarPrGeOn1IG5ufgkQoxU7pjfrqWCa9oCt6SNUezUXOvGOhqCWuaS+0haUbOaXE9sujnB1B6jPPdKbRrmHd188wVjQqofE6a0+FGr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744068594; c=relaxed/simple;
	bh=E+Pk0LjOx0BbnTKrxUbP5JXTnVkZTUd1y23C5pk9IM0=;
	h=To:Subject:From:Message-Id:Date; b=iH90jEBEqvSrpBanDqicr8RHH+KrbbyGW1sUoBimopEBzmorEtqsFBCaGnBE5ST098aRBo6LovpKLMfl9VB+7l4UmRDN/yq1DLYzJpImVp+t06iY1k0ixSTS2KtJ9UFIcYzojggRZkw7O6mId20/W7fk+Mawv9uma4VagU/ol0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqQUB0U0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqQUB0U0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AEFC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744068593;
	bh=E+Pk0LjOx0BbnTKrxUbP5JXTnVkZTUd1y23C5pk9IM0=;
	h=To:Subject:From:Date:From;
	b=lqQUB0U0r+fOc/G1oWCFNaWsBww0nTYLqed+smqnAnRmTXmixMHHgkcEj62SsPr3q
	 Gh9vtQ+xv2s+bugDv08IfybDhbCHwYxhYQPk9AsA9Y013n2TyPj0LYECbV+5y1xmCD
	 CRUFmtmj0CeGwMjGdIpeIktQL4wLlNb/SpAf+o3IRQg3SX0ly9alPUiGuvvRT60nFY
	 7Dm/KmPdaC5+0jq+FZvvFb7GXbxHfYpUGvikA+GFWWtc0yND4cVVEtvXE4uRCiD81U
	 9IX655CPjgPhWGJojfDFuDz51ZPNDz1qlSmadxxwW9Hv327yNLnEPNz92mMLNTbPuq
	 kIQamR2xW2anA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1749C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174406859360.3776.5519073995847153208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df284cd759639d0937b1c18dcc2fc1ff5e326a9358cbcd1371ace14954cc2621
Date: Mon, 07 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744068593
