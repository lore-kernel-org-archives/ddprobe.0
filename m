Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6871A0AEE
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 20:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714507943; cv=none; b=fDv02DiP4fJ0kcy/lQr6w70cohCgk14uoy9hAobCLMPu63Oy15Nmd+UMnZOI6mEsdi3JIQe+fE0Sq+xDQfHYRXcDQhEL5Hasc9QQ4FDYarFOUGa6xpUNmwPyI3CnYOJ3A2SBgUmD1hLyEhK8C4HpT0mck/QsPIPfa78hvsYMT+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714507943; c=relaxed/simple;
	bh=HcOCmjsuR9h2H6JC43iN8eR5aQ9evpShiT1Gfst2hq0=;
	h=To:Subject:From:Message-Id:Date; b=gTx+VxXaF38jY3IgEX5VPIy+jUgxwTIFBmKb4e8Jdpr+fJy4Ug9QRtQdxBAZsJ3F1QAVmrqJ+tsiS3CgUycmuyKYvK9aUjr2zDHtg/8+eJm1OV5RMTXk15ZZTbaLvpkdTDua9Z8EcCVD8h0keCbOpjSktXVM2IImkyTmhNeinVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mpIzn6gL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mpIzn6gL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4989C4AF14
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 20:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714507942;
	bh=HcOCmjsuR9h2H6JC43iN8eR5aQ9evpShiT1Gfst2hq0=;
	h=To:Subject:From:Date:From;
	b=mpIzn6gLJnWvW2hYWZ/EsQdERdogy8V/WKueddadX29mRgvQZIVuegUfDONAnlCOb
	 UK7l0an6PGhXl6YBdgXd6CftiK/R69OgCJjYAwktHDwrzFKeTf8WW/bI7fHcealkmf
	 bxB7CJi6baV9oRiNuuSrGeLEfQA3mjHcAXRKqV1mNrmJFh+faNYN3WlL3BNQdkw7rf
	 w0vXql3Hrp0Z5Tv8EkFAd4GvrzQchlpwP3nYHoDHfdge71Lm5z3HiAmLB2JXxc3WJb
	 F0ls6JsF7YofDgtS4H+qddaL+dNlqmfY4svlEfvF8BHnwo2nHi8sf3+PJT0zMCaLwd
	 /fBe9RKh2e/fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC206C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 20:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171450794276.1538.6291652949678495442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6c41afdcdeb8693c7cc41edd1ea5a79f2c0627bf4d2504c2011b4149d5370b0
Date: Tue, 30 Apr 2024 20:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714507942
