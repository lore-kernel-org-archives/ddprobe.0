Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2573433E348
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791050434; cv=none; b=Nd815CxUiimm7gfqu+NNGhDwxg4c6GoDyOtjPSY4GkcXwq574pn4ba9Pkrh00xpDbDofaFudhQmxGBCA4+rjIzoakRLqbGhjlzH9Avo3tolDKjk5NW8nBWrTpGrdQ1sMg2MzRiJdFbCxSCsirw0m1HrzOpOVJBAa7L2/bHmWbx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791050434; c=relaxed/simple;
	bh=5BA/JJLZMU//IRLVg1aSDS+huMroxJ8PbEtvoHXbnVU=;
	h=To:Subject:From:Message-Id:Date; b=lIfTcXzNahxe9Yv4qXXI1cza1zdItWa6cMxqcjWVNCwJx/oGIXDt1dGaWPrxY73DXC6Q6u5x8AqWUX2qfV0VbWK2tgD9kbGOohxLsr+88WH+UiXid/rY5YTvII+4uTv+7hs0I9EYYaaTwuyNi5/UAxLrtxQewpJHlnK5ZJOab9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnYYFuy0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnYYFuy0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29ECC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791050433;
	bh=5BA/JJLZMU//IRLVg1aSDS+huMroxJ8PbEtvoHXbnVU=;
	h=To:Subject:From:Date:From;
	b=CnYYFuy08UhzaN+K6aQw0ujhfFzhGAlV+WRc64TJXCCbsF+lEhjTmt1F58n3CFkiD
	 H6rdAJLusOiu/DqtG97gxuuMiQAKdp9CSTO+SKWqjrra08i2Fo5b7+YKKfJ3nB/TMh
	 S+R6xg3Ws21qasWDgXWjHa4d8jx5cOrTSaj2RFZIuVzhGPuKK5tc7cB7R9cxPqnvKs
	 jRmFuXcdugQ6BMnGVYZcYfahdXXTs+A9em0suwO1LOllu0GoGfJVOKo2kB6AWhIm2p
	 cX9a0cjtqCveqrDEDzci4YDbFO92Ma2JVPZBk0lmCUP0ALFk8O4x/FUV5ptSLKJkHn
	 4VqiHXsFpWW0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEABCA5FEC
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179105043369.20326.14516860248028749225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af1639ddb5bc9d6caed4d0b9770dea48af289b20a7d976a9c5169b1dd1bb7139
Date: Sat, 03 Oct 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791050433
