Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271CD14A8B
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 05:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780292674; cv=none; b=YXX3x1zKmyvGZS3N55IHn3vSVSp2sCnDP7w6u+MzpFDdW1T9O6gtAU4cYInAO7MAUQTlDwuTZvpkFXRCptLSUnSbQmXFOK46u+yyBzmASlqV/Tq1bKMh3besHNOcljy/poj9CzX406vArunNWDFFyUPBxesrV7I27lrsItngig0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780292674; c=relaxed/simple;
	bh=NawQNH1fHv6oDBoTsPqss31SsDHf+JQX5ezYHUMdBhQ=;
	h=To:Subject:From:Message-Id:Date; b=QrYEkzEqL/PZZD0X3N+2EiawQ71O291bgd9nFNA4SBviJH0BG/A0LLUteUI31G49aRUfhjA0o9w/6DmoSI4WmQ6adrihpp/6WEGclwLttPnrf58befNMqg1joEpf4N0GFA63Uw9CPUQoGbwZUmHpszFpuofLGwK3mNr1V8rFvVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEw6b9CW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEw6b9CW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C77C1C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 05:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780292673;
	bh=NawQNH1fHv6oDBoTsPqss31SsDHf+JQX5ezYHUMdBhQ=;
	h=To:Subject:From:Date:From;
	b=FEw6b9CWti9yEa9qFd7V5xg7gQ2H1X1jy5XRz6Iefyv7KYfiDTQx31WRG/GWwq30X
	 LbRBfi93gIQgkgmnyD5sDqIeRcybwxnu/ISk35kIGxV2jxisDtYwIvNM6a5aVuNv30
	 Jfzjy2Az1c9ndTWZE7FAkqddQDvZngFTXh9TjTfH7qoAZ3aMU5ppFWJIdVipCPUTzo
	 LR1fofLdsMZSAabKRb8OBcLDGvOFS07qjMrlKZT1qio4fOkjtRvT+wZ1+zmhL9sMzw
	 SNoTyWLJc9QsyurSgongkWbRwEUh2tAkUOSgZbPetYgHDD452es3gVN8tLN1UQURpo
	 WVVGkT6bsTNeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB008CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 05:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178029267369.2098.9380051527381557615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dabf03876928cb97de993b4de41083ec9e42598a29cfd6c73031f6f256764ef
Date: Mon, 01 Jun 2026 05:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780292673
