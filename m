Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A062931CD
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785091234; cv=none; b=abQ84XrWEzszRCqweer6k7Q9MRNHmwMaocl3rtu5716Tx8ZVmzlBoWuqJrntcIeIGxl6v5QdLvaMc5h2sTHTUCoFpFO2TlgV6XkqjKJUFSEJOjHwnfoB1ezB5wqEqVjvxYA0mb/xTUZQZpwx/N1102bzxyQDitF5O9DlJiqzM30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785091234; c=relaxed/simple;
	bh=kQvpG+EIupvPMm8icUbbtvTSuCFWCVTp3hqoad+/HeQ=;
	h=To:Subject:From:Message-Id:Date; b=X8GT+tH3XM1kFqEcMDplG6nBwQv7gYrqS/6LmicHZhAgFaGEF+VtH4NgT1XqF3zdLGBe/4Tdso0bFtWrrBO5XdeawRm7d/t4vlH+3BTmrkyrwjZMz07gOMkxZ5Ym6Q4OEhZGx4myLv7DfRQqHu2DdGUvh18bMjf+TrP+TtDqO1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gByTgdkL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gByTgdkL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41E4C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785091233;
	bh=kQvpG+EIupvPMm8icUbbtvTSuCFWCVTp3hqoad+/HeQ=;
	h=To:Subject:From:Date:From;
	b=gByTgdkLNE+sMLm4GOlKMtnFvWxYwxsDLYbbeC2Lcde9VyrkE9WsrFzd8nZ2/lhHE
	 Drlhmi062tUY3FznIwU1jChRHcvKbDRS05ZvJt6LP3tbGhxZOTf2Gq4dba9seb7Cqo
	 AVFHxPakuAV9thzEP8Cu5vtvfZlo2ZnZEWhr8tu3l8GLNlUcqZ9XCvYShSbCTwLEiv
	 8nagd2gzsznkFOo95V2b108nmuyujQuUXa7/IDpIgQX0npI/pSqyAH3ZcbntCSYTTV
	 XUrmKSod+afbFpE2jj+LC4YHVg90bipcR+neQ0qKEUAIyLjfaol4F0SdqlGCqcQ2Vk
	 k7ropxYPD8XWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF95C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178509123369.29808.13210453906924077376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 552193704bc9d0de30951138fb35e79e9bdc47ba98721388ddacabd33985c44e
Date: Sun, 26 Jul 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785091233
