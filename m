Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3F1A2F0C78
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 11:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763553114; cv=none; b=VIwtPUkaUankrEgRnQR2ko+b40XMiIdLApHqsRG+cDZDFaywe0/hDCw03QSWqnl3g+zwMAYXTMg8Pw1z7q//658v7JL1DM2UD85tRae3EyOp2GXls+AxatxEF2MJDNdJhczpAxEoIdKswuu9oPb13H12UrQ6xWApdyF9A4GF9dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763553114; c=relaxed/simple;
	bh=wFiRcIfUQbIMbSvCGJDBFnfB+IxBFLiy4rPlgD5PfjM=;
	h=To:Subject:From:Message-Id:Date; b=FGGX9uys4b4FQRFrY74rdX8/CMH5Ev1r4VvpfgIUanylCImSZ2bq9TI6pfgzrHJFNWuXljoWrEqHRCA+wWd1Yokr0vmYzeZVD6iOtEuKe5gmyvf944BMJunTSgUdCNMKd6oLhMEvc/3u8yZPH40ESST/QTs9uJjqs9IcwhOiMgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzwzcyNq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzwzcyNq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF6AC113D0
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 11:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763553114;
	bh=wFiRcIfUQbIMbSvCGJDBFnfB+IxBFLiy4rPlgD5PfjM=;
	h=To:Subject:From:Date:From;
	b=bzwzcyNq1juWAm9f2WEGqNkaI52EhHCR5YhTkQ3v28Ai6fbhKyT9eYLa0n68d+Yjk
	 84Wn9DvEZ1rHyvCLbFM6YHlbjhFlWdp6xAbgkebX922evHHWPKyb/hcbi6JQZMvEWU
	 JEKqI1Irh6IlTVVH2fHKL0teahv73wtd0JtMHn5BZOFY8fWrrs+sk1C7LoXDjTOTHn
	 OT9FviOcVndMX1+H/Z/CnvAyD49MG1Fcs140d88B0SGCUJaIKCAJS6awDwiKUEMS5N
	 Sm/mKqlpSQKqj7PPIcJL/pgUSdOmZgFBwlsJjRakUqfMBQ/LZD+Sji1faCv4d/uI5i
	 qa//BEPRaA/5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923B1CF31AF
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 11:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176355311358.26808.6475526392280697348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 938a8bafc16322a43dbd29879c373b0ad8428e5eba6d49620049b93fd8f3b074
Date: Wed, 19 Nov 2025 11:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763553113
