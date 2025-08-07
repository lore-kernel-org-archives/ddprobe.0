Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9B8518BBB9
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754537393; cv=none; b=nEs7vEoh0nIGuKNX2QCsNLcF+kk0+u2VcnIuaERVDXV75Np6SI1xjazd5PZKHiJCfBtW+K705fl1dwuX8aXmXC2er6ppsWbMA0ftjrs7c90I39S4Er+s1GpcpqMc7plmUGco+6KqPlxJ5uqARJgp6xvoTsq797dJiSSBaJh4iFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754537393; c=relaxed/simple;
	bh=jxqs87SXZyyQgNlmUOtEoTtJjWOzvEg5nVdNAon9QI4=;
	h=To:Subject:From:Message-Id:Date; b=bUiYIc+wm1HBjNhG3ymPBAFDgVHTNFqmoLIid5U61ovJJZiPvEsE0InE0qOZQTuYa8IqHAqem0qNX1zAM0fplQygMwkeOp3x6mnYSgOAjimRF7MEeHHxkLpcDcbV353CKGQsbD7SNucyBuUwI2Yit00I5SB1kldzL1CX1Xp55pA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNt7D1En; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNt7D1En"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40C5C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754537393;
	bh=jxqs87SXZyyQgNlmUOtEoTtJjWOzvEg5nVdNAon9QI4=;
	h=To:Subject:From:Date:From;
	b=vNt7D1EnJDWQAlRA8QstrmAeGAkacYizmWoOguoHdcS71bmNWIfC6S/7DlGbDMLjA
	 KcbrzrViPmNu/GXjNdjO7gL2Y0IpZpchrOU5iznnSd3G+5IBCmMx/qgosJpRljkLlW
	 LslBfWR+cBqI1ZD0sXzqoAD/eNUtDQsb1btr7TesHNgydoMx9gf8lsL30MRgg7i35m
	 /tfzrHgP7OoKxgCH+8mJZqhBv1B6TMM4PwQaHL2R+8u+YozbBND60gCVzuEVVRnf4Z
	 bbGHt46ztvQB91pZGxUUgmWbfLkA6pI23Q7jWosb4N0hI6RPS2ScoVc7bMofkD+WoD
	 pFBl04o8oyi2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9383BC87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175453739359.5230.1001345413745990032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b9ed3ee59a3ffcac4ad9bba495ebb322d84f26e31e590cd509762684cde4c9e
Date: Thu, 07 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754537393
