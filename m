Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A022459F8
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757792995; cv=none; b=dKk5zMWXL9yvAGK+uwD4yqEOKYOrnILirl9lveiBoO/CVMH3XfpxCg/pmVdQzwnJxaq0JfFrU3hSnzBE+/tQPYfsVSpc6kcrKXo/C5U//lC71sa5TZ/3TeVEEwGyqp35uxZ19ZUa79v9FibTsykLSlqsFcXLlLb+IWWLMPqiwO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757792995; c=relaxed/simple;
	bh=9QYKz/b4WN3CImmEeyt6stA2U/TT7Vgh9Bd6js2j94o=;
	h=To:Subject:From:Message-Id:Date; b=fjsLV0yNRxgX8DaFYqpMDETXCH3h/7lO38ps8juMi2OOKY+qGxHvQEjdPDv84TVanNEeACQ9ZYRIoxVIyn7fgBtPp/suYrEByC42ePwv8lHT6b1QBXfIDDHXPYi3RD9GTRFeIZhCJkro5krIXkHySrs2EQ1CpbRYDwb2SYFJKLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BToRGIeF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BToRGIeF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D28C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757792993;
	bh=9QYKz/b4WN3CImmEeyt6stA2U/TT7Vgh9Bd6js2j94o=;
	h=To:Subject:From:Date:From;
	b=BToRGIeF46eyLdQXWbfyTvt9N4PDG64PBK1dMdurT0Ymtr97RZ5JJIwdlUf6knigG
	 0n+b5+QYu6qoRE/b0E0TaSe0GK/BwBjfIn9lIrCw+gaDrkyVvJbBznXg7acktnOZo7
	 fdYd8rAKzbCLJ6Tfd7yDdiLOvv+t7Z4CzWPrjr6Ctf1SFrf5bOcbE/ctvTVlu2cB8C
	 racLPDP/mh/N2YFXKKWdTMZqZMQM4VWMnvY4mm8qIM2K/AAic0xknULEPx+Qfn3EE/
	 hj7V9UMR1fHbeWn/2e43l/Npjg4oUCw4XTNpRP6qwFo0N11J0Ou4wHkVfoXqlm0A+1
	 4ihTgxMRKlQ4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9194ECAC593
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175779299358.22605.1742621862505433244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b95e1aad55d8b3d23894718d76333c2b07248920080f6e5b7263f9001802032
Date: Sat, 13 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757792993
