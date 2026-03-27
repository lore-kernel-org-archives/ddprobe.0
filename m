Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D5F3B961E
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 07:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774596294; cv=none; b=PHE40XDNQrLgHAiWOwz5P6NTWNSVMzsHSXM/tfsZnlbymlX/6VWq+1jRY70WG2j3pf3d5EvSGF6G+h1OjSufAd/kQP1w6BSAgZbsdBcDwXSEdSO0aMfkh2JIyMnbI4BawIZ8Ym25uij9I4er3ph7h/5cL54rEpDed/kJZuBGoXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774596294; c=relaxed/simple;
	bh=mptALSX0ArWJwCFekwaP1cWqnAqbLatjRuvlH1qpZ88=;
	h=To:Subject:From:Message-Id:Date; b=s7b4tfXuJIBctasp0YslGLjmgmuBGeE99RMltDzqKc9LUvsNySFC9vib3W8lku56aapDWpK0b9ylIB+8uc0/SoP95bWGnuBJNvyG1FBBbKRUzYoHJ7DP3phCGhLB4+CPCJS9x7MxGfEX4oWcYT2UfMVJkkfJ75MXHx4f2OyQGMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y7S5yvU3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7S5yvU3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A453FC19424
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774596293;
	bh=mptALSX0ArWJwCFekwaP1cWqnAqbLatjRuvlH1qpZ88=;
	h=To:Subject:From:Date:From;
	b=Y7S5yvU3dlRbU+HqvObe52QvmpVMtHDiMUH1xuWFY+fq31np35iaTu3L0M8AREdsM
	 xFBuXJiZKEUB8R6YWLZZUXJgbeu01G7unKISBobu9hHDSeeiLTnSH+TlDPySoFdGO/
	 wiDB1KkRY6i339xiONy3AoL/ZbrRgpcb7xVjU0P0RQjFTWOmkI1ukB55a4naft5P3C
	 He6Hn2C0X+TGlGNdSPzRQpPxIupBzLY58JkSP7gqUBc8UTXkAkKwmlSsHJPOu/uQa/
	 2fr3oHfM1gYx/Rm43BQ6EYCI8dF/ujaC0k4NM1r65bdejT4/gbMaG9xVqnhEjKeK6X
	 CNMUiZbRykxxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B3510BA432
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177459629359.25454.4295380734254055174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cff3d2bd43bed7b7a424988dde1d5b4097b8dca2344518136bac3bd8475bc9ff
Date: Fri, 27 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774596293
