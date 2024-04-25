Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5776314D431
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 16:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714062143; cv=none; b=q5byxAY0kjO6Z8bsEQvWfww4q220+IMeAXtGFiVA6pMyZYVMh/+RfUZ8mR/rTa8VZbOhwBhluxU4czWB3GIVAmOk8c/0SZsj44EX4fnuM/SGmZYhfPCQmAEes6z3sKCtCw/uSHmcFhj2CmyFcw6UiRFhR69nF6rC5kbnj1uTIdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714062143; c=relaxed/simple;
	bh=RyH8yx/HczAqykV0UJUMkZjzy5/p4tJLQSdB1eN1DsE=;
	h=To:Subject:From:Message-Id:Date; b=JdXg650oQKEmDXJ/xZDOHxZWTmYOicq5pxL0cywvhkq8n90/Wk0f3K2ZCp9yNYmMDjk9VOdKyGzJdraoTmPMwUYAH8ryj8FyW6uP/RJHCXJR2SCongYNHszYxPjgCU/+ijwMfwFuW42jir+P23VynbZlIRaOSYM9TdjjMYNp6q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkrDMheY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PkrDMheY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB2C9C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 16:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714062142;
	bh=RyH8yx/HczAqykV0UJUMkZjzy5/p4tJLQSdB1eN1DsE=;
	h=To:Subject:From:Date:From;
	b=PkrDMheY3lESXs3y4HXK3NANDCu+IesG8v02y5aqmLmkQ6O1KuFwvUrBq8OWZRsgt
	 pUUiZOv2OfQVD9th7zYcZSvN7HsGuXI9+syjw0z+gECXIYCJYZ8L9cwS4SZDgTcxcO
	 gyKiqhsSpJ4dDMmaZJQJrzBAVCrBf/s6ovUELMgsLZcHOHuaII6tva/0BXt3lvvItg
	 /ztlX6PZdSWWazw16inZw+hy7m/h3mTNMkVQSbjXpDuzWSmnzBzAUpbK6cV6qK3BgA
	 /HD0WbA/F2/HeGuUFsg+h7oDcCZfguRgdDNAlfPPpwnWMBuIi2zPUbK8giUJlGlixY
	 0XkeCHPKDB67A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB30CC4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 16:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171406214282.5539.14912315234597854166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48cc840eccd949f42547aea7e95ff81834871339e0063a505142e36e37afcfb5
Date: Thu, 25 Apr 2024 16:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714062142
