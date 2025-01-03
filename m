Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3C81F9403
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735896954; cv=none; b=sZtfF7v6AN/a5sBZU8VyiPGmS7yncaXAPmieYlPjhIWFf81Mb4khEQ4PrWViSc3bmgogFnKlCwGs+rqgo1IFfTAxBLDV/+BagdvfugJHAEhKoG9FidTDYJOgsv+bO0iohi80WsPtLqTYXFWF1OoFRHjj/iBXrRW7gMq1in9MV8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735896954; c=relaxed/simple;
	bh=tJMgt3WWrCpRsQuE+LpVfUTwqicvm9BI/e3phspMeSE=;
	h=To:Subject:From:Message-Id:Date; b=Qu0JMRURC+CfnyyzfT1IjKP/CNFY6gx8Ckc8FEnKPNRm+EPJ5lLYWWD7Eb1+9vwVW5HWP1X/PjnRXVbAkSB9bD53WUswOCj8BA5HkcyUtHWUG60TsWZ5VM7BjJCDTbX4FHBNSpfGtP1weT414d5JYurE+UYfSjC5JR3SQ856KHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHm42/3M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHm42/3M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2CA4C4CEDC
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735896953;
	bh=tJMgt3WWrCpRsQuE+LpVfUTwqicvm9BI/e3phspMeSE=;
	h=To:Subject:From:Date:From;
	b=hHm42/3M6PdT3770En3QMBel+zH6SdkLeX9LyEzme2/zYcs2V5Gbd4sQfpjsEfHtq
	 4bgy6jk/NMZ4QCBUA+f7zArbzN3yHuqZ45BxGfhfkfywXQrl1CGec7yyZMO8NjA135
	 QFfC/Vndcoh+PYvLNskwGrUkOiaOZ7C/Y5QanLM+X4eCOSIzF2FLTszSor97B77qIT
	 YUx3nu43S5ThVF5lgRT4FbqvuXGP+a+1OGH9uwoGGmleebZKQ4noREZsVCQpw6pr73
	 Z/NrFMTCLQ1l42Gyrr3/uYpfLCMsvwUdR5CBvvx/+0kb2VC1gqmeHqSzqBVTZMocpF
	 dEcm2K+2zkWrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F3B2E7718F
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173589695364.15572.8899430148541886383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8627bb9acc817a909e258289f82a4cd17d12b9a3073e3bac1e38bee12eb5b9a4
Date: Fri, 03 Jan 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735896953
