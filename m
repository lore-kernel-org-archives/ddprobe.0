Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137073939C8
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774872894; cv=none; b=NGPLpZqmutgtKN4LMZ5aq/pqNMefSn8cJj3EJ/lNDERDL2Dfp8hF0IV3iUG7JvzIKGzRHgTmckw4SLvTFrPnOilEp0YSDKsx/ovNtXM/3pI/2poALfdE/iS/uRCB0063PREV0Fmn7nbaFM+TqWyKESvdigt1P3yGcKUZ2cBFHeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774872894; c=relaxed/simple;
	bh=J9y8/IRWmEnnAzUdW3ajdM7FAqDXQtpspMyBomrXDm8=;
	h=To:Subject:From:Message-Id:Date; b=F8CCXhMqyTiO64MuvyYDyhHuxBflKNOR67Uk908yWrX2ObgcG/VUdOxJnLlWNWUlN3yYCH7Si5n5ulw90OWiF6nutw7OeeMgC4Tw8WJ8ZLohNtPml6b360g6ZHNN705ZqezZA2beZEHHfkGtVZrx1lL6Y5eBy3Omeo+8HnL5p+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azSvxatY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azSvxatY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32CEC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774872893;
	bh=J9y8/IRWmEnnAzUdW3ajdM7FAqDXQtpspMyBomrXDm8=;
	h=To:Subject:From:Date:From;
	b=azSvxatYztqdttan1urF/jLEYF1aSm9AJnteLmFGprR9ZQ1tknexWx1AcNSZu4Q1s
	 4KsOOiaWrFxT54kVtBdTspifq5tngtMdwrSSDgTsVfkVo0fQPeti6QaIExgfxQCpno
	 2aE1pAULq8vHavHjn0gEvpJFz8tyGEUUtqOMtku2Bge3h+VWJwE4BN6sLDxoPbmfch
	 CSqaVjnd4dPo+UayHFN616eamf7+0o0lqE/gH94gJyjZHl0YN74pfEk+bJNFYBFJ2l
	 p9VekAFBeZ2Ogkax8NU/gnIUF0mWIc6rkosaODZdu7ZcibATLN42JSua6Akpp+s4ZK
	 IcwTHKl1MO4mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906D710D14AA
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177487289358.25762.10229962677752430828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42561f5f473d925067ccf0b5901419b12c2fd2234134416ff073f18099dc0144
Date: Mon, 30 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774872893
