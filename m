Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0F526ED4C
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 06:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764570174; cv=none; b=XjMEdXgna+Q7xC9kZvtficADnDR6YQbzUdaCPESEpwojE62xG0eH8jND+VHpwF3zWV+bcvFXT6fBB6cqLJIF7t5bjlRMh9Sy23U4pkVki2XsSjOzw4cwzBCTi1nkeLwA77nGn6OO+qQpIA5+Cwslgt2fxvDWT5LniChM61r2EEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764570174; c=relaxed/simple;
	bh=0aUYSXTfGR7dmg5LOLxnoiC2hnGK+qnLbQIIkBfCreE=;
	h=To:Subject:From:Message-Id:Date; b=ZFBk4DQ84d53yozjwus33T/D3VDrshCHaRS5m+ml4Zg8QnXhuKC5PUuYMZBUAibXCVKyNnFovF8xOvbicii9zk622wGwVHKGN+9ExDJg3SL5XZdNKU/8D8E8I31GFILX8lYU42rOZDPTJI4dtYz2vcxMH+o/RI6hiZJyFPxaG/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVs4+yrc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVs4+yrc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69BFC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 06:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764570173;
	bh=0aUYSXTfGR7dmg5LOLxnoiC2hnGK+qnLbQIIkBfCreE=;
	h=To:Subject:From:Date:From;
	b=hVs4+yrc83g1CgGL7a24/l6PN6dKKT3IjlQnd2Dg+OrV4zUDYS7jz6kt4uPzVD7LZ
	 VWvSkPAP8qnu0NrbAt14gU7b5gOemr3khq1R9JUUFcdPNjr5c/ybfAWwK80fJMVBC5
	 UVrfIoqlj899HC+UeFcSVp75d0FZn94vhACcmFfaNcQL+X/kVJDKotemgp4cTz/Xoj
	 GALF4vI48ghD9vHUsVXl0OfNUVD/ieh3Z11Tms1CqBvusEGE7EDhBXRJ3UThjhCPmT
	 2HWzYVSqk7fVy0t9fYJR3XCIQoKa4T+bAQu0V1EMhO7ExaQall8wD3D1/CM+YZ9r1l
	 /swheSijOIR2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C09D111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 06:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176457017359.27048.6523883170876457589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 491df459b6d0a7d913cac2234e5aaa69a3ed49dc7243772e17d882f93a40f6af
Date: Mon, 01 Dec 2025 06:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764570173
