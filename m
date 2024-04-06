Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F405E748A
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712371698; cv=none; b=U2Q46qAwXbvQV6u/VBZaF3oIxNe7ueObHzKRfdW11omheLWkmWt1B2/g9ejc+YLH+taoq5gaF24tscjB7zoQn4bzHYNEANbIRte1PwCsxYBgY2xSvKEqtvaZZtS1i8dMDmdLcliwaT0+a8eUa6EfVf4zlD4mTJIq/T+U8MnTOY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712371698; c=relaxed/simple;
	bh=XCWybvHxTUv0924G39ICJIZk86DYBb3DCzs2jtkIrrI=;
	h=To:Subject:From:Message-Id:Date; b=CJHJtlh4fqaK7UsHIvy+MWL/72NEsnkwqsneeguplAp39lTdGUdTvodjRcyQcEF9ztm94hVMm1BJ7omIRz8LBImsmjrmtmzELz8Kd8kLR4mICoLpDMHzAk08Hu9HCcZzkscdfP1Bxnw954zBHRvgIpK/i73Qn5PadTaJSTjTe/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0A46fOq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0A46fOq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 744D6C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712371696;
	bh=XCWybvHxTUv0924G39ICJIZk86DYBb3DCzs2jtkIrrI=;
	h=To:Subject:From:Date:From;
	b=f0A46fOqG3P87Edo8ZCFNynVTFvEwJ2jfhHFbPFdwwCz0CtTClsN6anWrZCafnG7z
	 yf6eQAdDlE9Ld449QbM2INQ6u8YswGExemA9fH+VDFW4ifkBEARPIwce2De6zytrsN
	 DZh9rXDL2Oqi/qAo0Q7tEnp89BHZ8G39y2YA1h75x1bnXD0/xGp18gl6xt2U7U6ZGT
	 WBK7+l1RN6a8yqPygjq+1OOQVqBo40xPSujdfQiCr6d5ZYQJgMUw71LXrdQoj4Y5Ir
	 IRFmwG/W33vyuFP81IlFv45UrZWWE6bWCD/Bl13hvrl+waxHsnNM6OjkLKVo7zagQx
	 1/pyj0nB5w2OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60AA8C3A59D
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171237169636.7598.12516172960791813571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e707c55fd4fc3b21f18d873d64112a74fca9efc70254082d3d96a55fc793749
Date: Sat, 06 Apr 2024 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712371696
