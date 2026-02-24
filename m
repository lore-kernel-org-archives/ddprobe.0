Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 031482737E0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771947294; cv=none; b=Hnj9ReCfySTC+1NOCwGcug18y/hSck3Qr9pp7VHXKLtg4ljOcGhNnULkTaremtQePAxSJgzIfmK462qMN7LfNVYXRTdcvKAAtHymI91SPlgqFSPoL/qqaEwL8jD2UwLUJshU2NRSFnRaX6YpZErJGmpbRmerC+AjYOJHyRtlWJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771947294; c=relaxed/simple;
	bh=O0XXeEN1SHucb1CndDt8wjp+fkd+q7E0ifDdr3LT/PQ=;
	h=To:Subject:From:Message-Id:Date; b=pu1A3XfX18et3hDw1sBrcaLPavGaQGjkZ3Ock1RlJqdtVuMFhLdGXBfLnq0peZNJDDjiGEDFDnNRc2jW7gs+eZ2HRUk+FX/s1wwgQDNJKnD7WQmWExHk8ahQ1WeTj0ndF1a+LYMhC0bBtlGGK9TeXiGnUQX+h25VOG810uTN5pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nkuboFsM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nkuboFsM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0985C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771947293;
	bh=O0XXeEN1SHucb1CndDt8wjp+fkd+q7E0ifDdr3LT/PQ=;
	h=To:Subject:From:Date:From;
	b=nkuboFsMrRyT2ABQVuTRS4uKlsUskDLc7CVaDl1Ik8LHVwxTOgg6G4U6blO0T3Z58
	 Sgbb6jG99cM5VnPLam8NILNqySuZSgz42UYdl1/qdJmGiOgD5o84KQlnDK7OO4SuGR
	 F/o5x9XNMu3cNsx4BSt+colff6RXS8W2Dqc8j8QkjHW72JYnMuIuj1CfQFE238QT+v
	 BWg1fL9mRjHlAdtT1D1eQ27ZWKKn+sxPYPSDQrBjSpkvun6MyQ3wz83qiK83eUdYGc
	 zZquXvIr9big1ChYl0liseFVnFIp+e965O1vlLQyGT2DHlSWP0Cvlh7KpgYTmrcwam
	 xHwm7h6DnpysQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B9FF3C99B
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177194729358.29263.16105540933019806619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68446a68408fdd4afb72032e6962f96cd2ca69645ba9019cc8416d8950356af8
Date: Tue, 24 Feb 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771947293
