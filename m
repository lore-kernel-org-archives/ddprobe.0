Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5C51A702
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723355754; cv=none; b=ORTofpi/nwwsteZ8w1zauE3xrrOBLoIP/z22qExDb0Fb5SFuSM2bjNly6k91RafJSdLKPXhUV8z4Rg8Te8xIBwJ9iDbxrrpCE5mPo3JffoKnCbbVJPCNC8PtG6H1qBr63acA2KQiXwcLdrmqCHgm4paBaeKuutq3aFljVRuE0mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723355754; c=relaxed/simple;
	bh=2ZMdWrHvym4s1SQyxO7HOBhAgWy8zZQomurZrLcCQMg=;
	h=To:Subject:From:Message-Id:Date; b=OpyfDHtGda5EznTjGNt/JpCYRv1AFszN4YjCe86n3V04gx1t8mEbWHUd3YuhGQOhP94eQ5xfJBe/23Qt85PjvAyNBorD+509brON2foXAK1aJErXRd1m6TQMcolttrnxqHjXuAaewQKoD5RpyQTnOOV2M9ZF9Z3yIQyLlwbPxOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xsp0gb4f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xsp0gb4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A602EC4AF0C
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723355753;
	bh=2ZMdWrHvym4s1SQyxO7HOBhAgWy8zZQomurZrLcCQMg=;
	h=To:Subject:From:Date:From;
	b=Xsp0gb4feEb0+EyPslphfQN915esmFp9Rv+Tb8KR0M2yDvgkMvETf+pMAJQ0d7cwU
	 Obso89i0V9/TcsnyclYidAVpzo8VHDiz88dYXkZc3kMMne//hlA1xL1c0BbR6ZVb2A
	 XdQ+Uo9IsXJOfKzgYbVrOVK/pkFjVPx7Wu8AhEooLxcRpHl2Pd5Lr+sj7UeiysaDy7
	 i+ICRP/vonby1zaoF5XXvdM34lBjmJ4vYpphHvjq0g3ggMCjPtZ5GG03byILSgMGtP
	 b+lvfz8y6tYOK8PX4XdjZoVwjjLyJnfQLzeFYUp+GqFS4jN55c5kW8ZuDOyPuEy6ic
	 JrIHwGQChlkAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9503CC3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172335575359.19366.17217584823547605248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf2e084169a2a273dcddfb558049d7a7cae0e4fe47d6eb31ac129d6b8e762906
Date: Sun, 11 Aug 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723355753
