Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400B118BB93
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728257754; cv=none; b=u8PU3Bt9r5rwAptJNR4fHCBdzVe9wiG8NyOLQu54xyx4IJlQbbXASMMCRiuzzw9cTtpQ1wxlnxTBpsTPbUANxAfuhA8ozKYHhWI5diJuG2kyC+J2UU0Gs7RwiDb2PBTktc7HN2W2NFVaivIEZtDrtPWicKV5mslwapV23e34ElM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728257754; c=relaxed/simple;
	bh=YouCJwFi0hKsnhKr6IDBGo6u4AD1vX8oFtC3Lb7NLpk=;
	h=To:Subject:From:Message-Id:Date; b=l47M7oqu7cB0EPnAI9e/lLZYNma25yheG2yf4hRkxL7K8eMYd5Sz1XyfMet4rawXwBPcnkP83L6IurdSt/03EwIWngBCLqRu5+G+EqxDIqq1upHlzEvF4PqIv3UTuIIRVyR28G4RMWkX24aj4QlAdUANy3awroxCeUHWIpv3/Po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+odATbp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+odATbp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC41C4CEDC
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728257753;
	bh=YouCJwFi0hKsnhKr6IDBGo6u4AD1vX8oFtC3Lb7NLpk=;
	h=To:Subject:From:Date:From;
	b=Q+odATbpsF4MnXxbQfE20GhSqRS/JWjSOV0gPddFm8d4FXW44YLy3DDmFwgTkg2t2
	 9Ia2NDWrr6yufh+SBflfNEVP1wFT2lxKrJ20V1WZpMjeFbWKZYlV7iYTA1Wx9OOhUZ
	 JQ3iTLTO5MzeJnvwcs3uEyUSk0FTCkGyuaJedURpwYQhgFN1nYpZe92ozNXna5Qf6n
	 ktXNqZg2a1Xp4eniLFQZ3NCcWO3oLXd0H8/Yt2RO0D8ljEpYtp+7iN1TucJYE2W8QP
	 Dtx27SI9GfzQO5FpLmZb+y2n6PTJLP0Cbx6bA4X2+j6hN+1nDSCIUTZvJUrvwzenmC
	 9E/WrEFoWEx8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992ADCFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172825775359.20840.2352851696530511526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c19405a6e2caff8af51fd04fd5fdbf8d7d0abffb20a1c220a6c175a61693e3b1
Date: Sun, 06 Oct 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728257753
