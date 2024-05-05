Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629BE374CB
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 23:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714950743; cv=none; b=HLSWstBvNW4jNh+mtjP2cmCszIcQ+tomCX2jj3T/qqeBpu0N6bcE43t1dJQ9PtNLCWPl88eIiez1yiWPRmNbtvM4n16Y5Mq4rBxZfFbQEyazgtFtt+J1GQJAWWRTTMWxstKvC4y/xzSBV0QwM4t8K6K+m27ZAx+n0kaZ0obJc00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714950743; c=relaxed/simple;
	bh=3S5dZinae0JhKPrflhvSHYkGZ3jd0rzZ0YY5vvsCXW4=;
	h=To:Subject:From:Message-Id:Date; b=m0nXbrn0eCAdWlLiHf4gF0cnUHzP2KeRkoPy9JWTg3ITFq8BBFmV4yEy3AGQHdfTWB7TAce25SP0Bi+GqvONYy3nSsetRhj+lpZQ8JnFbkGhAvap5/LUN3IOOZSkgibYxl/qTbFSlbbJPY0xFX+dOnwMVeuuldMUu8ofOR5Fhn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fV/dltp1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fV/dltp1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0341C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 23:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714950742;
	bh=3S5dZinae0JhKPrflhvSHYkGZ3jd0rzZ0YY5vvsCXW4=;
	h=To:Subject:From:Date:From;
	b=fV/dltp15UVRpvyF6fuQ9Zej4ahp/E8K/dKo9DI+JSgkBXsxfz1ZQXpUXGrabSxcj
	 hgAjQK1pOA+dxZETalbef+gkCq6/xOfUJxOaenQ6O1XXSwffiaDOHHNTkFWQZwPe1+
	 jzHHXy1VChUJpggmj6qnrLORF9Pl0eTKzQQdFv7kaALZgz7UITX8rZ49JShg6Y7TEC
	 7m1Nbyjms0bqteT5A7+lXkRrDOLEXPoZdoaoMxJiHaXF3NMRLctcbkxj6tyU8Ps0vG
	 6HkknRsLLHhMYfG95VCqpT1xMqCF4YWpdmAMqIXRecYO150NiUzW7dAalccB7lGawu
	 YYo+uR115imbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB4E9C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 23:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171495074279.13225.4345962121607762708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99562f6c3ee6362f8f813c040c754fc00c67698ea3bbb541d0f707d9a05274ec
Date: Sun, 05 May 2024 23:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714950742
