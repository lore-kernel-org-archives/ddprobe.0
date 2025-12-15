Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE671EDA2C
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 04:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765772574; cv=none; b=K3y0UT/lLkVnwJGVHlZOg58HKytcdHO2KfPQPDJXEsg76nWsZTaQnUkhhAXtCaEEG9zX/JynaSam7pSK3I+y+xd9hXcUrDVPB57dB0VZsxzFmOQt6438Igr8GKzL/w0OuFREeiNuEAyIyVb3niiL/TXHiR2jw19ikzAj0AwT02U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765772574; c=relaxed/simple;
	bh=n1EDblyfiFAzv8tBQSC8Npq39Ii3yOmjeTmNryFJJxg=;
	h=To:Subject:From:Message-Id:Date; b=M96fKKN3VIy8vSbN93tVYKquPWWOQQkA1eqCkTlA8un/z9pvCEwesDY6oVVFKw5E6/OZ3EJzAa4RyY66pTNVlsMycnbvz59S1yT7WsMsFoLAVU5ZGjFEx6zaZwgLwdA5wtFuneGFRyOKoYAlYPDY2g+Zuw/AC/q96ZrKaSFbtCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfGooHAv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfGooHAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0DFCC116B1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 04:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765772573;
	bh=n1EDblyfiFAzv8tBQSC8Npq39Ii3yOmjeTmNryFJJxg=;
	h=To:Subject:From:Date:From;
	b=AfGooHAvbq2VOd0h5fYvTYvKtnEgt98I0irMOpqFYeZiIu/DNrd4vIBaB3PrnaS4z
	 cG7slmaSHbM5yIxFFeqPO6tumX3lpTSg8EBrmnd8IVxejUZP8fEXCJ7EFZFvyKDmC8
	 1wHRSYSYe/+W9xpXPeHDOG1ytW8ToaZ/L3aqxfOKwUcbHrK7Es+6U//ynxSJvSMjbB
	 ncCIRhVCQA4IHquKjnV0MXiPhbXwyt0NBfXH557Ajxf00gBJ8htdDIgKJDPGamzviw
	 TTb6Uwhtrt4eSEaQ+TcNQd1R3c4qrvNTtDv5nMvGL2AxY1FdLiyDuE5haQdbNm10YD
	 Yso66jZNx8Q8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE01DD41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 04:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176577257369.15698.12043810411059314928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee1dd06d0fd53c33030b299909d1b7de2aafcb07106a556fda58de3d112f7e66
Date: Mon, 15 Dec 2025 04:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765772573
