Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4A86FB8
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 21:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715550743; cv=none; b=npSQODA1r852qvuJ7FdxLto2Uckcg/Wlp8YtRVGoCGsw9bAyxYEW81wgrXlNayPGoBsGdVN12Wv+yMIFxyUWz4wy9nKuvjyOOOdExO8HnagM6WzMd7r5Q5kx1T/a55NSS18BmVcraOajyJIYPdsA/E3bzt7rjlNKCQpQf5cMs/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715550743; c=relaxed/simple;
	bh=bJqw5p4L4bEZKrqkMYeAa++WhJh8RmYkW2WkPgJIM+c=;
	h=To:Subject:From:Message-Id:Date; b=h7aHC3vatk3ZC86B3d26FkAlSGTv6+s1KNjfufI1aX86O1TzLJOZc6myEYImohBhW1Tr8cBS4Ljq4NDWXvuph+GQqwSHe/hjq3ytyhC2ypDrmtNrmlF8A8TW7P23MF/myPTgHY6eFXOtGae5K+POoO3CaMZLXfK13uNcs91iXMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IttP442s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IttP442s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 016A3C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 21:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715550743;
	bh=bJqw5p4L4bEZKrqkMYeAa++WhJh8RmYkW2WkPgJIM+c=;
	h=To:Subject:From:Date:From;
	b=IttP442sUuSqli2d3rrb7iXGQMFMsg5VDeL4jSlML5wcqmsD4YkCF5U6D04o/kW1B
	 B6EKO3wIiqPtT5/vMmSdOiM1jAf8ngkq8Qaw9+vrIzbeIh2lLoONoa2DJppchLy3C4
	 VOgzPn2fUxJCigAF61tWF1HpwNc6vPHR2fwikcZzVCvEOSu0lWTQ/0KDU2flhxAlF5
	 I2J37r8vmJCsmZEbcQoiIb41G9WoGat6KLtvFnTQfgy5MFnc4c2EzuAUiE+vq6E1ub
	 Hjmr2InpDVkG5/danrmbrmIopgKGFfpoxuI9GYBezIONk03mdtD5XdSficHcfaOvGu
	 qDc04lpd3j0kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D46CEC25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 21:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171555074284.4907.7120393920246877763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67f9ef14b2a41e251023e176722d7fd8236b47d604bf23d67747b95a8e05e550
Date: Sun, 12 May 2024 21:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715550742
