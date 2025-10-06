Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC0E3FC7
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759723194; cv=none; b=Wohdbpf2/ToM7iewtgOqGEEObXSzPEPqnuiIW0rDzHkjuVnBaZ0krvkLxjGdIa9re9FPT5lqD7dCLxEsRhNnHAk3vHi+H3cf4EKKcw6a/LPmXC9+NLtNddXkFBzOMWlYY82FL11MZkWweRjavdFBTBaoBHIN7ODPlwXEE76qByA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759723194; c=relaxed/simple;
	bh=J33jTxQ0zv81hxXUIX57w+ioOiXJXmT5DBJSplTiCiQ=;
	h=To:Subject:From:Message-Id:Date; b=QpmoPe8byRZ40PZoeZ4UaT4pLskMA0MZ2EK1JZCL9rTtk1Gcqw5Aiz1yAApzjkVMzjWH/965FuSgsAq1ldkHal8Ozt+gniICn7lhAuG+/yKuJwQuthaMiciU73lyI8CTIFsIFGYg5X5stHjkuBy5efRzDmQqEcbu7jsVJH00wog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MDA3GJVy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MDA3GJVy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F6CC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759723193;
	bh=J33jTxQ0zv81hxXUIX57w+ioOiXJXmT5DBJSplTiCiQ=;
	h=To:Subject:From:Date:From;
	b=MDA3GJVyGuNt/dVQ46oRgn93dkQoqvJ2J+x7KPEesVsZ/6ojU7SK2KY8eqYXCtwEb
	 IrcKVazWaNsXFt2dwU+Tj8nFbuBTXovrIJVkPpXqlSDyRis00M2bsifXlyNzik66qY
	 jc3oviYniW4cV6zRQsV9YVdM7FANmzwem5kGrmG4N/641L2stUCdJuLuyINuKv6YCA
	 rPRBPt4XxghhdxxLeDvBRlgOxg+oV3mpqoRfknBUqYgoHqMkr3YD4MF//HsVPdm/ia
	 hroMvNSi7FIrnf/bQEDOXwZlB0hBxhnxsitZU3YNoJIXta6xY4PuC5Or1AD5bPNw/o
	 JlRyJ/CgOu2Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986DDCCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175972319359.22523.8773845305422784376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 386fe9874c0d4321d05df9eab7dff2b2090a2b7bf1581e1ffa5b6816b0465fc6
Date: Mon, 06 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759723193
