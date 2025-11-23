Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D495D2248B9
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 16:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763916113; cv=none; b=rZuz7z6/KHbVMFXTf1cru49wWDKG9ROuCC2zOCMjjEryBhE0eQZD/Y32Ruzd1lziqUmI94kRlTWxqcekGnH6dXeEglRSl+AZq0KkZ7nKgdB8Os7d9CsgxR87mvK97AjArWepTaRiEYIQyLw4vVR6vZvYptGkT8Nx4ioc66njlsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763916113; c=relaxed/simple;
	bh=c0X5V1SX836KTUWOQ0NAU7RY1oHT1BQcWFZ7vgOPUZA=;
	h=To:Subject:From:Message-Id:Date; b=k1nOCCPcGGQ01tUEDXDFGsv/j3dOEodWzfpDNf2FIIjeG4vj30uh/REmgL6poKZhO2SUMR53KBFqScmHL2EVj5jd5+F+PIev8+lX1qkTxdfMPGhQcZq9vRcIgD5R5qDAb2npQDk1AGniN4GrMkRo76i0zIYW+uXH0KesUjpTdSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TbSvvfH3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TbSvvfH3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98E9C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 16:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763916113;
	bh=c0X5V1SX836KTUWOQ0NAU7RY1oHT1BQcWFZ7vgOPUZA=;
	h=To:Subject:From:Date:From;
	b=TbSvvfH3HlRlycyI+tEZqvlaUW5/AiaT5wo9L8SL5suF87X81VQ6moeSePNztek8o
	 r+waZFLERu22HJ3BgvZuSrHuLEQ9RiiLoii9GklZZem2snaei7hMd4jXZ1oiN2TnbN
	 pSmtX6xSkFT/fbi8N3ZKF4Rjwt837Oh6HGUfrSPzLnllpW+01+l4co8XQ22hf0wOo/
	 XGke+SOgeG862UDVIWYQ2HUCUWK7KVi5fUKVPsJJ8HukHrQwxl/1JSxP3+DbIIdV7O
	 r/Az4l6er521xEHVjJCAstkr6TXju7eR65CTX3BuNFvwG5eK5qXolHjirzlLcWg7sy
	 JHCvaeFgQHvpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EAFCFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 16:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176391611359.28411.15992514472935927003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37e093723f1a3a29a32d4dd71c4757836c8a31682f9479f6c32b32a050c0df8f
Date: Sun, 23 Nov 2025 16:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763916113
