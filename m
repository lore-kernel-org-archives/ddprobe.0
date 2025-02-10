Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64FBF24FBFF
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739205954; cv=none; b=AvPH2k9extVaGOM3Fwf/290AQIjDl2mvVD/TJIk2WZVTr7ZaDx3QhbKHh7jXmKZwVYkM6IYY3HYSiYncExiRGR96VfM1hqGRiE7zHfZY496ETvkS6jkvxliM1BVOc6aE8b0G1KNcQZcMayDbvY6MWsLlmh6IxHf35250ysKVNEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739205954; c=relaxed/simple;
	bh=VUd9gpzm0vrpcIULPoUgrMi5I26j4eXLNVZjkIYpEKc=;
	h=To:Subject:From:Message-Id:Date; b=NQQW71F8ZEW9buh570fePKa1sPu6HHVOrtmlLeQ1FqTyUKwcIQfgKUBnJ50O7c82myYg+2KtENFPQw2khDwtZaN36TUZSY9G9f8pnVx7IvEW56ue0NDbpSLwNQiRIde2+1tFXT+WHRZUaNn9nRp+NjyspVD33ZeepSzKVuCmnzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bju5/CTR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bju5/CTR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4556C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739205953;
	bh=VUd9gpzm0vrpcIULPoUgrMi5I26j4eXLNVZjkIYpEKc=;
	h=To:Subject:From:Date:From;
	b=bju5/CTRxKsZt2pBO5F6Qoo+zhrRuN1oy0duo2i1YL/EQ2r8P0jNFUoyd0j/dnjHC
	 ZFeIYsf+sh3Ciua5/gFr9YliUAc2M1ABV+DAgShRZ/af6gvrvgF6IDrVSnBQm8Q50e
	 5IM73kSoLmvv/dXQjjk7cBmfvOqZzAGX44svcUWuxFZimNo68CI44xKIkM8wkgEbll
	 hDBvl7wVg4EhINQU8IQdO/ntDBhJCgvgrEt3F6bHor4Pi/1dOsp/jbzwL3y5UXJnaL
	 BnfO4f9F7uSZvu+2a9ICtnzsjSTt9NLYm9EGa06H8aue6xrMgY1OgX0yNQfWC6bNKR
	 PQps3UL+OelPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA4BC0219B
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173920595368.23333.4267246600658597415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d13331bfa6c38c33fd678b59784094117b5554a91958f59be54e4302b0455403
Date: Mon, 10 Feb 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739205953
