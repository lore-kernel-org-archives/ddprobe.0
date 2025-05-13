Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB0619D8B2
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747101594; cv=none; b=eeA7A+MWQDjB4eQi2mCediVWUkKLo9TtPvek+LaBTEG8snIuOX+yASSeyeBxf0g0GqrGvEdPLAnMSweCPjfUVkAjvrvMp7urAK4LAvRN5TJCGucRG9tTSd5xChToPxX8pyr7dVxJcWqP0AdTYkWr7hZsXmdgw7YI/GphGoAdQDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747101594; c=relaxed/simple;
	bh=Vn2cF+gBB4u5VW0fElS6BG8VJ1N9OCAaxKuFRAWzOpM=;
	h=To:Subject:From:Message-Id:Date; b=k3Xh4MtkJFXliWjBCQpHWfmEl7GZBvE1dG5F/6gb4myVJzR8fwtHbj4z9B3cMfmVSsLiGRSpHvVQF+LDARe8IB3tDOIVxV5mCjScYB2jgB0f67FDS0NxOsHiUiWXephrJPNVXSQKSAeomyBneNBrpq2Ye50D2KQ/AuVoyxW8Csw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Guh1WJNG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Guh1WJNG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7ABC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747101593;
	bh=Vn2cF+gBB4u5VW0fElS6BG8VJ1N9OCAaxKuFRAWzOpM=;
	h=To:Subject:From:Date:From;
	b=Guh1WJNGu/ymukP6EY0UAT/RvUoxRgd2WbxUBvgV4ZZBWttpVRDlp8Fhcf/NzIvbd
	 L9tg1bgo+HvnBlIvoQ0n56HSSzzvHJaq5/+M5xlfj5zbE3oqebZT6mTn8lb11EHXIH
	 4imh1KAHSFW+fuB+x86nRi1g4bV/gjg/iqJWWcpjUV7Bw01vkP0iO9l0yU5erwAZLf
	 UsgUm1Mwi8zHJv1hwU5oQ1olNcod+eP+WiZBB26e0BFer+Y3pFq8qrdVnAzp5HZWtJ
	 MToLsGux+2H3NqhXwjzwhp3fi8os538UarDbrpboc7fGHizRFn44iIXpR93TX+aBFm
	 3yP01IXjaHqCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E875C3ABCB
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174710159357.10135.6449866636462941795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa703e1cf68dc13d3464c2ed57ceb075a72f3abd4e9d8f0fd2e5c8783479203d
Date: Tue, 13 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747101593
