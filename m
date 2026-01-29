Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132A532939C
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769726034; cv=none; b=uSq3uuN8Gvbp0RMimObF+xcCkIQXnkgtZuL/H519WSCTzD3dHiDVBfXKq9mpK7GxENbSeLlXa0QmWQ59yFKZKpeKpBHvw87gcvNUFuzu7htrwLvCB4t3MpCmadDcJ5411/o7jQubYMzbuwf+YrwvT7x5B9NubiPV4O0qxDDO1Ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769726034; c=relaxed/simple;
	bh=zq/cwvJ5dBy/qdt8Twq3VupfsNuN7rYtTprPYZJPbb8=;
	h=To:Subject:From:Message-Id:Date; b=Xs6Ia93hej/tcPsTZ0mQRFOMpn1YLXybSM0L/3xKu0n0nAU3DgGlbSuvMpdNen/WcY0dvL/cLz92q2kCLGXeMcP7ylykhmClOOiToIY62FqxRcug4f1SD6SDAUdjcFtYRS/1efjhi4m5Jr+uEDlSS3q2Xegi36OHvp3mx3qHVuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXM5iQer; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXM5iQer"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DDDC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769726033;
	bh=zq/cwvJ5dBy/qdt8Twq3VupfsNuN7rYtTprPYZJPbb8=;
	h=To:Subject:From:Date:From;
	b=GXM5iQere002n+UlLrD9LS2uy1ZOjoNr7Llxg5GOsN73jAuNw8xJEZwyiJe5VWyD8
	 YXSbrS0g3OcWlJUPa+/wMOpJQs4j5sECeJPabjNpfO0zCPNO9RAL1NLQxZ4Vg9g9xD
	 cSFp0/Nnm7MF6roahdbXLRG3pXKgQLBcKBOkebmB+O+6/mNiBWYDF4/ggQej7YEq55
	 uQgYwWqLgVq0t4hBdJ63ZSl+gkLlvkH2u/kIn6WKWn0Y9oe8jg3wnoy6GiW56uGJ00
	 pfwGu1JaU6EsvWpK2A3iJwyZUt3fS9za1SfBtLVGA3RlYSPr365P5gALLHXsPIttcF
	 Omxzkc7pEacyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC26D73E87
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176972603357.30460.9496162074737756177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43b7a70eb0736b529d23a30eef634d251bd5dfa585cb7d94538041ea7b864d55
Date: Thu, 29 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769726033
