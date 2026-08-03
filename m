Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 959FC377EC7
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785741034; cv=none; b=oMYWDf4RO03GDxCTBDBSKCGPkqOe2gN8YWHL3wf7tuVMMpYMbTaid5Anpp/YpLvt2gRJJYNW6aO4iradk8ykXUwVb5eB7PHYJ4zfmIiAm/Xm2QtALlSOB//sS17ZzW3SyqgTjkcmWqhBx7cRQI3sdS9gXlGSZHDR/j15uqPYv8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785741034; c=relaxed/simple;
	bh=RBW3I2vyqcPRNVm1lJVT+IEcY3t00QAkTVOfA1M2Ct0=;
	h=To:Subject:From:Message-Id:Date; b=mSG/M+Tb99d4/TM7ZEGq+e4HZlzu+jjaIumzjRO6wzquuJdHtwqYTqmZMOdS60ReOSt28qftzR0PPsrd1l7FhNOeIBjhUOEBRro+rPa69D/jOYBKh/VQQG7Ht6tFsXEf03dEa8XB5ToiYkXn7AoOMO1KkT1u6SNiZ3wbNzg6sck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YqSoSbZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqSoSbZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2AC52C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 07:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785741034;
	bh=RBW3I2vyqcPRNVm1lJVT+IEcY3t00QAkTVOfA1M2Ct0=;
	h=To:Subject:From:Date:From;
	b=YqSoSbZJrixgEgLaZ4WV/lJcYVzWkc7JV4P2KrKFY+XhMXAr0zUlWmLoSW9A0mgT/
	 yQ8SEhwETwGeRiJVf7W0iKPNOlRfZZXctbNPZn7sg0JZ6za+Gdi7rDeQEBhOOh1pk9
	 /0nftM7NNLDR3PqinWyNLXV2LJNI0HFUMvl5xoRLwiMLd4BmF1FmKHyfa60FzrcD+W
	 JCRZOBsCIRwbGXPBUziC/Yam0SrhUOYAUMCbyIH3/42KbKgqwse7XZjBUwLOLDI2SQ
	 aFEwMPMWGUGRxLerbRxaUAuDtPNF2UlMZBGWO3BkS36ImrMJO8ooGtWT4sqsAUFpdj
	 qTQ+xRCV870NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECC35C55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178574103395.30218.9672926218035841194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2f8ea320eadb90d87eef4074bc6c91f73816d02de98f833c450a690cbd5887a
Date: Mon, 03 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785741033
