Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BA5437455
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788856234; cv=none; b=Xx4hLeTOKcVrkH2Gn7GavQMpENbIZ0LdqmhTALLdHBNCsF699fFFdetg6lcQ4KxLm6f2o4cdorQn45bWnlZOwNy/uiDcOim2AKKkLH8cAAxcYvbbzjMDBkd0W3A2QV8nMD2ApXA7UTbFz4hbv7xtyBlBUPyUgEpnd/nRkR9byug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788856234; c=relaxed/simple;
	bh=phip4nTAdvtZwrw++Y3/Exzm4yn36We1MZqpT/gOmns=;
	h=To:Subject:From:Message-Id:Date; b=ldsuAvOwwSqannUD3aR/s70lMeOvzJiBnLlsZY5CP3ZLuLCCt1x95SYLOmCldAWtD3TY3XJsif9gBJ9uPAbxJ1+idADM3ycMzVTxLHFvAe7VVOuFjRuXKgHe5lL0c/kdcsCgkRK8WQxoHLW+46FmGdFq/kTKI0OK8PpLogGD7oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKB4uCoM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKB4uCoM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D613BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788856233;
	bh=phip4nTAdvtZwrw++Y3/Exzm4yn36We1MZqpT/gOmns=;
	h=To:Subject:From:Date:From;
	b=bKB4uCoMGARR6cvc+nNizCHEEKvV10QzGdC0/WkB9U2VqzH+iJS18iwKrFcFk47KH
	 ReyjwA8gnG3AGYmF4zB6F20C7g5OWacNqTuSKhm+iXuHfGKoEtVwiV5qEK6DSHfZUQ
	 HScin/aJ11vISqf9BgYfwKQbdiAp8qg8a2WD7EbNfw7vfPDNr8uj0hPWrO3J5rXejk
	 uGTgtlB6F5qK9JTtWLayI1h54P5wnYiukHd4vR60NtdWXlxME2TX7qIkksIvh2cNfr
	 j+NzPMF1hE5FxAZo7+mPg86+42wkXfMgUPrOPvBJXC/QH/y7Cs5yg+UTLJc2sHmXJV
	 01tyMXXpwhmvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C70C79FA0
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178885623372.3251.3040210926810958032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afe08703b2e85ed2b45ff80994901bfd3e654fee5da182a6fdddd9db0ba7a4de
Date: Tue, 08 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788856233
