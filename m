Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B062D592C
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786356634; cv=none; b=Hk2UwQdbA+XZ3FNblSge6N7qivc0UyaTDGKPjM5+F3iuC0paJqId8so6b5VKeaZp3c0SWg3cbEdesvX31ebeBa9nadWkrNqXbeYOdNqnjCZQ09doFEDRYlX14fDW2TuBiVRarGbq49eHViwpJDaLQpnXoDCDi90o4fV1juRBYDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786356634; c=relaxed/simple;
	bh=+5lzHKPoo2ADJRvnHc6TnvU67NoStp1wvT00G8Z4amI=;
	h=To:Subject:From:Message-Id:Date; b=MN5QwN/wJMKuu16K0UHUzgkg6psCzAfEbGYMskK78q62T6F01rWz6ebJpaNkB949aAaBmCgwdKeJv1GOc2FGoCRkhVQHqj8mJC7E96rCzOowPG+FY3e0d0lsm9Xp22DKCVoCbESzJNAQr+g9OfKhpXTTD1V2Ba/Gk+v7RE4NPQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STfEzhh8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STfEzhh8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAD5C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786356633;
	bh=+5lzHKPoo2ADJRvnHc6TnvU67NoStp1wvT00G8Z4amI=;
	h=To:Subject:From:Date:From;
	b=STfEzhh8xz1G2l4mFBThgVUR1xgI665Aw92oSdwXRtwbIoeN7GYIQE8TIuTWLHRPa
	 FJlXtvnBRDfms3w52O5lp/YjDEzkpUaRZ2Iw6vXcr4vQmZdjnTG09W4bfAel+NNNzn
	 LR/AffsTARZa5hBHe22xofcgcq2Slafx1IQ/s6WE4qrA4xS4v0QIxU3NhvU4QVqIRy
	 Iemv3pddaSVDSH73uaAizm7dg+BX+XMcnJ/Uxtt6rCOAXc4H0oaW9rEm5oK01X+xKc
	 ZkFa8kJUV6SRhSnCkriWgJLWW3C9QEbjIczJq1u+TQQ4gJXrFNlIJYTDmQaZnpPdC7
	 e0CzF2dkj65ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC080C5AD4E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178635663369.16272.11972333671344265196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b918e74cc1239a89d1ee7617cb5a695ef000e315753c39f25d554cfa2eebab98
Date: Mon, 10 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786356633
