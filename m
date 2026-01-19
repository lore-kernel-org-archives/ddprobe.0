Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BFC313293
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768822434; cv=none; b=BHU9XpGYPGIh8UVmEUiydeHRmQlje3pNIlV72/g+X+yvOH4XXR4ErJBRcRrKt9xQ9JuzpB8N7OSAgFDiHVL7JLI0sZZi9QBG001Qq+6wbiGHKjxcLmyCM9DrTwSZPdgvfkux7QbSkWDYFiWeo7xjEXNtUlHdX8IF5geR2nj60go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768822434; c=relaxed/simple;
	bh=dW1OKYv3797Qs1MpDl2Jdc/3tjcCW+VeICy9l6ypsms=;
	h=To:Subject:From:Message-Id:Date; b=fIz+d7uHP+43uTGjqV/WhMpou0lCdd2VBTHeY3p+170fUfBlDHFW0oY9jEuoI1X6GrGqfGoFOL8muX8yR+raJjA8aSuHLjGWd4eud0Nrl/z4j8CMSzRHGKv4iticFh0KC0mokvOelaXe6M7g0PLpzhtH63kCK/Iwr+OleLpUD0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6RMWSv/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6RMWSv/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0378C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768822433;
	bh=dW1OKYv3797Qs1MpDl2Jdc/3tjcCW+VeICy9l6ypsms=;
	h=To:Subject:From:Date:From;
	b=p6RMWSv/R1gt6tu+6i/wC07G69eiKzgDyzhEdK9zLfVCBiGWAMpubF0vtFZ1aI55f
	 9eTAsFAm1U8TEREZN/thkY/iVOqAU6y+pe2H4Nn2Vs1pRXLr5ek3/wnd4a4jVKqMG1
	 JUD//ynyL1fx2G+26t/hWINWw5cJdZRT6M9fpmO9EcWUgVl2neCf99mR0iEi8ehrJh
	 ysJEYerzjYwp23rJWlXwCsVpIR+SQNA73O2SpUbVDp25+NdTheRSob13F0jDvzhbM6
	 imBx1DWs9zsq5f7yIcQNIm/eRDIOZDK2/k3A05U/hBxX+JuchKqyVVBS6QjGsCgOVo
	 eJnTMzFUxLOPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90375CCF2EA
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176882243358.13166.3906778937963709569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3c0b4c446a2eecdb8393d9e5d15b8f25a9b9592c0cc0cb6581b07758a9e77ac
Date: Mon, 19 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768822433
