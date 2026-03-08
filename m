Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD3D50276
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772931894; cv=none; b=tCWosKfJjLt8mZhZbaj/xDdfNIF5W8MNYh8/OHor/YE+WWzF9X3QhCKwIa+1xtGYA0sRvJQsVAOeJ7hVeT3OavG3TwOl5qe4+iRNwODKHuMFQD8lOKgUqcL63bLZecbsQ74Lw0CdkL2l2VCo3LR8jaV1Ort2gN8Hu0IFstblyis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772931894; c=relaxed/simple;
	bh=y20ipaLAQoj5PESorgReiTUmtU4j4MS4r2UP7LtgpGs=;
	h=To:Subject:From:Message-Id:Date; b=noInccJBHjgNHJDTYBT+hlwXq3RPFpsLyfgza3rIwX7+3bJjo19xHeSZeyufCzGxAJW2G2+3aXwzyhx1F6LVrgr6e7I0eFMs4m4D2Lkqkk8lSdbSEeKb2j1Ye5qoxWWMfY7W9JmStpquc/KnHVxXpLzWMV13vdwkCSUqnAVljgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwU/aQUz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwU/aQUz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6242C19422
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772931893;
	bh=y20ipaLAQoj5PESorgReiTUmtU4j4MS4r2UP7LtgpGs=;
	h=To:Subject:From:Date:From;
	b=SwU/aQUzGuwfUwQgAF/IoYkrQ4eCK5FsuXxWhctZbThAIvClN8JPmP3viUP59hNxg
	 uo85Nw0nTSf3y9rpfvsWsVhx1KiTZ4m0Slv0rnHkK6PuApZ3qYSuw4EgLTdVIpTPSp
	 scnfLuBFymh1S6UyYD2Grskph8ypGkr6bS4D1nEVp6y/TMh0M0+Cb/bVYWBxNDIF7r
	 iZ9XDsSmkztmnuUrreLSgfpPB6zh+V12Gx97z2ZOCDa6ATi7M2+rzErIegE19Cg2z+
	 HHbmwTcerY5lEi0dYtN5u2mpsBQpcFDyrjFxXbG3okG8oxZhKXlROlJ3BsazQRS6dd
	 4pShR2cGm37CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DD0F55124
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177293189357.31432.9233820248537595218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8817cedc97e53454010fcad51d0b99ada922e0eaefaa5b19cf37601b241da08
Date: Sun, 08 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772931893
