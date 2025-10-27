Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9A92E54B3
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761552594; cv=none; b=gWIAPImzmysVnf8pBgLr57MinkbTthvJ6di1j90aA4UxS64WsSfk/OAtgkQqa8qqrACA2JZx1zmmhBDSSzhWmU12m+eYroQhOfIpScrOlK3SWc+hOCiD9TXeopVgu8Bwa5MLJsOv1QNeo2b8l649gRVz6Jm7qZgChrWObXd5l9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761552594; c=relaxed/simple;
	bh=2R22vSC1i4+fYV4JZFQJ4ivBqCoRn5sYzh1KEcpR7fc=;
	h=To:Subject:From:Message-Id:Date; b=oJ2Zr8gGRd1uFejNxPBroOPNVQyjMamOKcYlr8JxdQUQ2vqgYdtXzObp7ljrDhrjzVQeXe+WjrlZU5IDlzImVtAOH5UzRQEsXsk+poXJjRtn2uz6EumPiMuYRiOKgJLIT3ALCcsYtAp5gF8UFYBHzsXWSjtovC0+peN7siDm1jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMtW12iG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMtW12iG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A051EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761552593;
	bh=2R22vSC1i4+fYV4JZFQJ4ivBqCoRn5sYzh1KEcpR7fc=;
	h=To:Subject:From:Date:From;
	b=FMtW12iGj5TiN6YTn29mYor7tKoqvWmNBByS75TWI/UYpbuLZ6dQdcnZIlwAmv6jA
	 +CnWUOR7Sfp0a+3dgP11vPyhMQSF01u9T5HGmUItCnxJCSKFidWNjjcXXyLJ/FD/jI
	 gQCgytXxNFDZIX3zmfwt+ZwlrKR9VCl7bg4bIqLn8BP1QN1I6NdekVURZ1kHLy60cr
	 nqPqXp7lzTXeY85yE43u7xlYj+i7Y4nQ1iu5NXYvwGnZvezvfMCUAyfeWDG+P25HLn
	 qHUvZV+4vQTRBDV/w31fTuc1XsipoA9YauxNq78I3fOwXGqWz/qq+w+1UW52dDpf0t
	 IedbRWtjAiQxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906F6CCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176155259358.12286.8512984069151638411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce544782088e552fca67474cdb6c3ad1afc89561f6b115dea2186dc1783e1bbb
Date: Mon, 27 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761552593
