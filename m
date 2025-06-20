Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F6B1D54F7
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750415995; cv=none; b=LCZKpjHFGaqsZNlezmKvzH9xnJnePtI2ax1k/AyRTCx3CC1aExsWiwOhqyRIoVBRpXOUjkU75Vggs9uacpvBgJGu0B1Smb5iUT8j/X+ico9z8uJ7lpm5X5pUIFrUWU5QwmAPRRlbG0TS26NnvRK3nCUzIiZ7I8Jjk4WOjT8IaQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750415995; c=relaxed/simple;
	bh=ME5bGQec/F5KenGTu10hote8qFeTELBOSVArqrsu0X4=;
	h=To:Subject:From:Message-Id:Date; b=oUTUbvB8BDGkyD+S5sFFU5HrlchE4q8m3L7UAfc1zbRcOcaa3C6VlgTYTL9dl96wkz10hu7WrbFd0hxGlxnHIWN47ABkQimfU8ZFMKztO5G5hNmOIZ9MYS4L7rsRVoTs/7SgCHZnT4CermN+9lZX02+6ihjDmItZkvsX2Bps3Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UjpdccjA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UjpdccjA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F726C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750415993;
	bh=ME5bGQec/F5KenGTu10hote8qFeTELBOSVArqrsu0X4=;
	h=To:Subject:From:Date:From;
	b=UjpdccjAjaPHS2UF7EzpDBagUv0uoAKivjH7rZNBq0iojRGy7dxGN4JWa11/1XG1C
	 5JwFMxjL99rn0zaRt1GkSU9e0bPDnpL8qiGlwvmTgQCkJ0KFv9scZMxQHeU+HJv4d9
	 Rk840FQPz8diwFcjbp5/u7poexXUiJk9mD3jlAR1KnCX7xj49TtG1tPGhjbC7mtdbM
	 L+Li2h7D6QmKh+gury/CdtEvW0Fq2PtPdogja6rDmwQynibHf3A9aHNVrjaJbckVO1
	 9yn1IJ/yLYaSplLyGK/jHAwanmK4uFpcLWwvLqXqbEydu0vBBu9Jcpciu7ZLpqdtio
	 vn0WAWy2Icy8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D92FC7115D
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175041599357.17372.7612733563249687050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c835be8071fac8ad36c454a7e342e6a95d29f6316ad610d5204b60c0bf92eb1f
Date: Fri, 20 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750415993
