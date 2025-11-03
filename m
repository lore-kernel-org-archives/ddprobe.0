Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E092C15B7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762204194; cv=none; b=iYUdMT/XRpbuzGdUk0EV99KE17M/q5Ku5Fwl/FhNcaZtiJU02KO4b9STHm9Xk+kpxLq2pcp7jsTVJxZb21e4t7SgO8Rg9pQXkWSWvpZE53mi+ftiMH42aBhHi32JCpYJ6RM1fPQFR/FZybSC/P+ehdZxPp6gv1s011bfeUQigKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762204194; c=relaxed/simple;
	bh=KYbRmYZx/GDBkHKIbRWceJmiOEn0IiGwvPU34CnCutc=;
	h=To:Subject:From:Message-Id:Date; b=bVnH7PodEXprXhw/Y5o9J7pVZpQxIlnf7+Y8998rYXZ4BM2ulQZrPV6eu52k42cfbGuW7LjajvI69TOYpLQLe520JEdE5Azh+6yCDjRutjDYwJi57GfIehAVqhYrPnC6GwdCFhiq8APqlRrcBtk8zt+neLDa7LtXWhWlJ9xhDaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqySi0qg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqySi0qg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8694C116D0
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762204193;
	bh=KYbRmYZx/GDBkHKIbRWceJmiOEn0IiGwvPU34CnCutc=;
	h=To:Subject:From:Date:From;
	b=nqySi0qg1Q1s+mXpsirDlAZBKul40DL6H5MImlfDIv6HWelTxQbS0RslkSI87h0Cc
	 CclntGQ5sWIaByDApdk1hRfGjUlMYLQS6gAorUQc3/mmfJprMu8pN+EVz8GNdE0i4p
	 +4IudKpdkYqaR438cmFoyKndEyZoZOcGThievp5/v3svMPstjrLyYZT5g7fpX0qnan
	 8d+S//8oPXXFBDIuaPB/pWGjivNh62QWiE15nAGC5Mj6CVL3oatbzErf4ImDbIoC9g
	 t19Hs1d4jhjnfb4i3ZsPuvfjh/6LmFdc/qizqChklKcDrsT4VKmnSIt/Kx8rerp79v
	 c0iLFrf+xGDOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97617CCFA08
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176220419361.31643.2848415770126573734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f756a8a9fc73c6507b073792d7b2cf45833e11bfffaad687fc928eadbcc822
Date: Mon, 03 Nov 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762204193
