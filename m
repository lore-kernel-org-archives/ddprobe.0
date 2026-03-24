Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A9C8632B
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774329294; cv=none; b=lpgonCriOUyzY0p1CQWiM0I8/G7QQylP454Cl2R+Z8SCXw5cj1DwFBMh/GZpWFVCxPjeVkVuURQsePhiYw2qyBrmVrRex/yVK9bs1f+WI/iTTKTp9BnnrUsqDRGpcykVJcTVg4H8Zq14aGD1gU9IbvTJvWnCCQup6OjNjJwqzkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774329294; c=relaxed/simple;
	bh=7EsQZNnIZHDUqkD7VHTGSq8fp6ke/i77tAFpLcJxDAs=;
	h=To:Subject:From:Message-Id:Date; b=KveGujxHpVV6wrhV1O4u7DkLIBp9+UJbxHV6NnCeGKSjuc7uPJgermcO2j5lwNGh9tUCeaDmmR7oi3QhgatPBpL8qw475fEJp1YSy+HaQUDHlO6/qO9j4b5ZH+fNaxv9TVvNVQZQMw3zdun6gvJdX5Mge7PH/BsQJN1IAuHJPic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWxGwGsT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWxGwGsT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97A0C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774329293;
	bh=7EsQZNnIZHDUqkD7VHTGSq8fp6ke/i77tAFpLcJxDAs=;
	h=To:Subject:From:Date:From;
	b=fWxGwGsTdOpEwoPtboY4+fa0JnjasgsA6RehSh8GgpWlZG5uZzKD/riPha/8yKtAG
	 jFtpwEmQneL9djZUtk9CczcK7yXALMpWKBdHqH7EllZB0+KtCgP1BJVrbmXH7G6g4n
	 0rjlEqUEIns4HRSIlrLkv2IipWJ4N2jG6ecCNvnreRcij2AePmS7qUclkfKu5Sidyf
	 BTK4DEUxDTniccI6Q9t7VYEIZM7RfVA2uho560oODEg5Blw9SgTuSqSK4bn3cc0VIr
	 SbW9sCrUJjPGxWuRpOfN/TCJtkSOCb7nD9cZ4aJbHmqcLclJeuIFDXY+0hcCpvw5tG
	 s2EYjVGJD1Cew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96425F532D6
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177432929358.8965.1914101897031721252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2824dfeb72b666360854bb654a59ecab3d58bf92cbc03994bef8bea9895b4510
Date: Tue, 24 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774329293
