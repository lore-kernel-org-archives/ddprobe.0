Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2313B5DEE
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785242434; cv=none; b=TecTUOjpCgYrUegA9z1ULMy5dqlo57/YtS9XvaweaU1/CVi5FqWF0NSUYBBLMSJF6/sGNLfd+osCbzsDuCcRh+XhztXM0t28KBzClydvaS6rh432NAcCUL46jWKNbwUMM4b2Bz6vPMkOoi21vAy2HwvqtWLPHtx2VzGmOGQHOD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785242434; c=relaxed/simple;
	bh=4gZArCjmOZWmJUHd+IR+qwN6wd6LrHt6NLaYxLp5sEQ=;
	h=To:Subject:From:Message-Id:Date; b=sUqzDQAQfeXULpQzgDl4ejRxuTmU+IB0qUMjd5edgZEMFn2/NJ6QuuRMamuJwWTm/uAqWxFKMafg/+UBFPpjxB5rbwJLFuvsVZl/pyq4+N+G5ASfbrLHgkyuP5l+NzEqSAp1vJpt7Eipts8EudzTk9dqdGvy+vIRh77HM0+f+qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIGtG+go; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIGtG+go"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E31DAC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785242433;
	bh=4gZArCjmOZWmJUHd+IR+qwN6wd6LrHt6NLaYxLp5sEQ=;
	h=To:Subject:From:Date:From;
	b=pIGtG+goIYo+Zz0tq9e4CTi9rxQrA1SUxyCNPcIW/A1pMRgZv/TeLfb6VSAXdB8l1
	 2BwJoPS+FIG1SVyrEG+uKuEOlHz81B4vNdS4aSdps951hK+BDbzLO3bi27sv54yfZJ
	 RHMFUF5WC64FLrD8wR3oIKU9PcSNEq56/1tEzvTVxPFVLGhO89eSGHNP+AT1c46izk
	 Qgu916eCYR+1a9dmWbvMjD6r2ED+UbRYeuY5qtxiu6vO7+VQ80O5gD/pnQf7yxy5yc
	 JnK753XB0kI12A5Hn8J0kgT7h0sdhlvB6tGGEb3M3gFC3H/+ql6GnoWVZ9005pMhym
	 M9nI0xfrYdVtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB7A2C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178524243375.23771.3857738412975975455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edd8298e223bf8c70f8796ab4860241dd4ce3d97a41d4cb127d62aace0697f35
Date: Tue, 28 Jul 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785242433
