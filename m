Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EE334403F
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772448294; cv=none; b=ilp2I42wdnyjTJ4W5ryVY/LvnNFD6SDjYHIUu1ga5UXYH9vp9pQnd44ESnbg0/n+G1sO1PgUBXeks8hs+llVX7PQ4BjkqRtB03DcEszXuESXs8gkqWjkEvgS/j4mfqEVfANJMeGfZVdotdE0HB/7593GSWHKqTileiReQ/R5Nz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772448294; c=relaxed/simple;
	bh=mKuxPHdP0MVOVMIAzK/gwAT4jvVoDHFUHE1BZacrS5o=;
	h=To:Subject:From:Message-Id:Date; b=a2IoOWIamrSOqT4mcWFAwrY8DntKvUNeVD5b1bhs91MloeI/Vy3qgSoS2qqEaeKexCgkeDt4fLJ+yas1+JgaDrXWZzMTqnsCBCGt6imJMAr7WXUhMDlBD5Wktc2HrMESAecgcLrQ9fQNtxb+4pnU+Eb2BWUyinDdNiPHLKg+Xvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBSAPZFK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBSAPZFK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12F8C19425
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772448293;
	bh=mKuxPHdP0MVOVMIAzK/gwAT4jvVoDHFUHE1BZacrS5o=;
	h=To:Subject:From:Date:From;
	b=dBSAPZFK1b8MbiLKiW4rGJtgWma8js+ifgux9mPZQ/etgNHQsepcwP+J6uegpsmMk
	 EVMqKv/ibx13//70kxaOBKAc8f16G5cTYtyUpa0O67XzzxZpZrU8+nTbC3pPl+36Bt
	 qjfS5LskbncuAd5bWGBN8gQg49LLHkLxhHWHnosJgwpT6HmG2giaUmrma9XwyVsfAh
	 989EXy16tgI8hfetEOjpu700wAiIhxQ53PtXYrXLXxJOaQdvV1oM/HV9wDMg0uz1Cn
	 bUfB5IX0nuTDfuS2B3gpMowPEkiz9Ud54S6plsocPI+FLU0TdtTEQnBNWdbd6Cfnaj
	 5VxmH2auEJr0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C667E9B360
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177244829362.9113.8635459592249124225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d3ca9d65dd4578b5f24ddf6c10ce319c284afc0b3e80771b4179aaab91718f
Date: Mon, 02 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772448293
