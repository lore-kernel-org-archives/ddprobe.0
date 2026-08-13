Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7DC3B6C18
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786664434; cv=none; b=um5KmCoSaH8G4WXZfnY1hPhFY0aZ57hwKsXKxXsQcWQrC8iuakaEJls7EtbQWlS09qGHTuqIYVICrJAmC8xQzrLMdhA83AZwAkkfXhhVIy6C+WB3yQwE2trqUTeJcdBkTNY4grmB/ZCEgofuMOBub+6udsVXqRCoE0RIpRH7f24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786664434; c=relaxed/simple;
	bh=X2DP03mGltAkkURmSnal5LkTVgrIjXVvZITcC92IBgI=;
	h=To:Subject:From:Message-Id:Date; b=APRGnSsCzxy9/7w8L6VcA/H08bJzd+09AbfR3xLHEW49cmMARg+s+9NhfhhR99vCrzZ3eN/WYVQwkje0CViM+xhYhcEWrNF+xWHuc38LARnrpjAr3CU0rdVXCTr15v4cfV3Lp0GPyAStZEzk//oAEBHyObiLeynU5Cfey+v3mwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gyeCFaAU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gyeCFaAU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1117C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786664433;
	bh=X2DP03mGltAkkURmSnal5LkTVgrIjXVvZITcC92IBgI=;
	h=To:Subject:From:Date:From;
	b=gyeCFaAUr+BFcPGNUrqhC7yVPtR/1U3REX0YBZlDU8t+IKizaN5n+zOdKNRX1HrA3
	 uAWnfks+bpjIQCeFUuS+60Jhi9LzamwBZcH4tVb+tC7AwenvhsQH7bEiZQCuhQClE0
	 bMwHQyJ8Kpt48+L3c8jhWSKOp7u9jmWToq4Ac1p9bLb6LtTQch4767IOjWnocm1bCe
	 /uEBdZDOomTZWiYKYpNu2FtJpliAsP+yD9SVHh75AQpwph086L6mooSvFiXvZ7Cu6P
	 A+fb3wfr3MJ3Pho0wPejsNA9o2OXMjtOmS9lQENML0bgffJzsrRtUhMC/teryznDBf
	 nQKUHtUQcHSAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE68C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178666443368.8920.8481941619880664840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8af45b5ec5b247df3935e34ed82ba6c574ed9845a63dc3d17ce6c8075947abb0
Date: Thu, 13 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786664433
