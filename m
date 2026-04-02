Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE603311597
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 09:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775120734; cv=none; b=u6JEZzFDDJ2Dzgz4ZAzPf2R1ACf/4aFcRsIRJyLIH4mqO+meku98+IJAQZf9tb139VJp+KDLLfmB8nlrvRR5quBLJfx8MAa3PdxteAMmKwgFnz3s4Eh5n3NhPC4Kzehfpnwghzhd59Ak9lVaWDjDHIkrs2Jv/x63DW2r2JJBaDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775120734; c=relaxed/simple;
	bh=FUm4kPGz2MtXEJOst7v6owqBuKNvYwuo4yVOUbBTzlA=;
	h=To:Subject:From:Message-Id:Date; b=PtuRgIPcSAeq+LstCaAD4HqO7OPfdf31HnImjdNzugzsGU5M6aatJW61/qFG2za3IOsA+wXzqpQ/C1htndSaKsVmu3epSl3xAiI/DQwnhsnBV5CCgLgN+3T/Jy2C1CkxVj9AWhPeG3cq+6mBMbL7Xob96BmKPP3EoZiWc+5V+3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7v4AGLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7v4AGLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4D0C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 09:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775120733;
	bh=FUm4kPGz2MtXEJOst7v6owqBuKNvYwuo4yVOUbBTzlA=;
	h=To:Subject:From:Date:From;
	b=E7v4AGLFZGbcGrokMSso4kW+QaineBFRCCJrng2yu1WbvchRXna4iP5LQ7+liWMkB
	 Mh6siv54+PtR0/xwZfcGvQWzJQnCvvixKYPuNo6XU2oKYoZBzY1rOHesfaUJiX9inw
	 KPZAIUw1JwqkxpuUgOXq9uzg7xMdJ9pDi6GZgaVmNBVJ/t9wukW+zuVWF68PUisLEz
	 3wQQIIZj2O+zE4AdKYYAF8lTGNMb3yYL7xKB04zCJ5yxHLoQ/qNaXMsRChQOkHpv7N
	 0EPjxLrbM7SyVtKZdYtot5agbXl1d9M5NDltR4BX7AsFSklHKRDN/K9nhSwlsDMdtz
	 a+Bo0n9dV577w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA79ACC6B33
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 09:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177512073369.7232.13849783201519468441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 821e4c17a766ac5fbbe5f2ceb807a2de455cd90ea9d6238b74a3912e8e736c04
Date: Thu, 02 Apr 2026 09:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775120733
