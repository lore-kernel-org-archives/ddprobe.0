Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264B5276D1A
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 11:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740743334; cv=none; b=RvUrkC99AiWC80XVVm4/V965TsIAaFBDPTEKwPGJ0dfYujH656JVwQAj0cbGUuhzRQqZkCMXxUAHw1mbNSpupfPjs/19vOrW3bNPlH1lcWeMCrbrUaTQfzoQvj2uu3UdWzU7GISlLIHCLaH7ULaWrDKmWJYFeZezTgH5cHw+Pe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740743334; c=relaxed/simple;
	bh=CANCAvaUpJzE2NWykMExdsseZHr1YAJlX7YfZZWZs7E=;
	h=To:Subject:From:Message-Id:Date; b=ZXH5DXq9Dv6Tzz81Nn3K01XuwUjqVglUNJaRoyqOJiHmvBdFQpQ9fAvVgEYxl5KSBgYzGbDAYdpuBaLRjPKzaMK6EXvCQAnXKV7eRcs0xOqeFPDKT9B9VyGgFDOiwXcVYPhsDmpqK0+2KtWlnncQNlJp9T4nBaCKBtqgQzKDEXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rK7tTV8v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rK7tTV8v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3990C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 11:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740743333;
	bh=CANCAvaUpJzE2NWykMExdsseZHr1YAJlX7YfZZWZs7E=;
	h=To:Subject:From:Date:From;
	b=rK7tTV8vA/qHCTULh6/wbo4NlBLR7Lx7VzS1CyYqe40WCSJySGjqWRKTwdILV9pSv
	 1xBAJpOQjQ1tjkHeYc71dBu/WNf3si0Ho0WrCU8B3SBMl787utwiQCP6W4SWmf1jtt
	 gnWOaBXReXDIuw+AhaF5Dny5obi5Y2QSaDrvRZ+sJ68xs7AiyJk84HxHt1ViFxVKas
	 gjwuVAJcCnKj0fDlyV2lvOgaE84YrF76yiYrIlIPG0IHo8j1zSZA1fjlO1moo6T3BI
	 mWtmXSrx1FyCYkfVwT5CzS97T27tOoFAgnzFlwsYbzVAb08+AIfhWPm/asLZ8zpQfd
	 kH7R46UPFK3xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905E8C282CD
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 11:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174074333357.29355.4535334993234530520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e29816a75d88bc50176a4b3e711fa2893d520007d570b9f62882f62f2bc5f65
Date: Fri, 28 Feb 2025 11:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740743333
