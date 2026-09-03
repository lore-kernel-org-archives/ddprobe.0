Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5614C3F58E9
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788418234; cv=none; b=SiVerXQydlEtG3mtub6wHm6sf+zPhXKYgq5VTP2LSR63L7BlJuJjOGWU+DcaQer2B7V2zYWnLfzsloGWBgQZeHUeK/ELE6D+DBGVOe2Juz/BfB4Yqo7P+Wa4spO8NHvnuB6N5Y9kHPgfMrgwDAX/41YUUg/VYI2vvgtU2mdElhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788418234; c=relaxed/simple;
	bh=cWQRT2X/3jWQ05Tl7rfG60ONYXI5gTqFSg/pZ2VCmpU=;
	h=To:Subject:From:Message-Id:Date; b=DZzXSvlB0tqRBfzrnZnjc1DETV5/MU6MvpgL2Pt4bfDUhBhZkQ/OCBWGipsmMqp3XtDHboYo4O+G1IjMIznaIJ6nPDHr5XasJw/q6t/Hvb/LEx2K7GmnLPWy4jX1DdBHN2gTCBoTYHApMJ4D7Z1E3f0zmbJhIFR4Iz++vL+jvPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GLdluES+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GLdluES+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8ECC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788418233;
	bh=cWQRT2X/3jWQ05Tl7rfG60ONYXI5gTqFSg/pZ2VCmpU=;
	h=To:Subject:From:Date:From;
	b=GLdluES+PJmhmzt8DvdzWI7qZkWVyWcSkow107mbtw51lzytDq5nOBFR2MOINwPs7
	 GClUWxglDDeD7mIhOOJwbO+jiFchxEsnj4RWRqtrUBTUTUr24G/AvrEh0EavrOnNB0
	 AtEHgvhx8A3fRRI44MH2NDCUcUQ9D9yi1XB/KGn9d2NzOeOYZNEj5FNA5ikEqjg+vn
	 xOgKQ9aK862MbTd4T4KpPTLF06PGNp30mTXxSejd16ZJYrjRTqt5mLCX2LfGb6zi1B
	 0k9fmmBJK6Zna1SQzvL1uoyD9R+7bYBk+UKI+2jynNZTq5wfs+PmDg8kGHdFkKbJSV
	 MgRuirNmCsQXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA40FC624D4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178841823368.3218.5576655660330777510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7160858dc6c4cdeb3c697814a4ab9db367468cd2fe02fd654680a895c326d69c
Date: Thu, 03 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788418233
