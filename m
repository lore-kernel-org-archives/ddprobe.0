Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5C333DEDD
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773824694; cv=none; b=qyLBst6wBB23pNkMixxLEUQQYbUowL8kgQtaqBCukNXE8SyVsiPWrUcmvKQBC7gUIrFOp/9dbBc96DeTwOnEW4agCzwDfvqIVZz5vixC032cxeDPRi7HAC6Yzk6zxfnb9fdfM2QmlNeZfUgHp204VyRwOaI5h/CojY2DFwXEmi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773824694; c=relaxed/simple;
	bh=vIuOEMGdNZ0wj2PQMJtmRRBUjyyHffiamheFi8WhtRQ=;
	h=To:Subject:From:Message-Id:Date; b=lCRqyaUCyzlkcHshfbONZLTglC/NXyUEp3TzKyXAag3L1So2fcAH/0UE/IcfuZM1gJOH9dJ2KVSrBF+IBrY9IchqaUW70bBPwST6HFWFY9RrVf4S4/LEkXC8ZF+M+OUgfM0VUeyyerdODqxmRVYjHbR5k5PvntsZ72g/RLlxA98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UySSxw5U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UySSxw5U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FD7C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773824693;
	bh=vIuOEMGdNZ0wj2PQMJtmRRBUjyyHffiamheFi8WhtRQ=;
	h=To:Subject:From:Date:From;
	b=UySSxw5UsEU+or0CZGKGuR6N7lIMU2mKwAxp4yTUh8VdECZhuL0+zILU8SgUl4Qzd
	 rIgWySIhV1srlMfHR9mCQ/4QpHAFn50qs0w5dxg3Yo8Bfe8GcgJ5GZmlQPYd07oYTa
	 zjdf5Y3tERuwbSfNIVsCOOOe6NPOdK4iCcol6yWz/7beDLHICnWQ4wmW5JWO4Oqu0y
	 BYb9gU+QxBJDY8jEwiDfITULzFI5OMM5dU+9U/REwOneLQ8GhTDmAy5UPt9Ra0Xmof
	 AWRfXi+JuLeu4HSCvgMRERUkuvaYVctjNLRBFKi5XUjN/xzMi+Vo5+omUiSpRtVyx1
	 +k0iHX6ZUtrew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959D6FF6E8C
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177382469360.12270.11830939868645926710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a63b57aed8c2a35c0206a9c89f81c3ee14b8d6006668c952d52c29245117996
Date: Wed, 18 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773824693
