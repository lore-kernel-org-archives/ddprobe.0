Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD16263C64
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 11:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739533134; cv=none; b=mdM4ZdBrDbqHwvSc0JzBAUEWvAJMF6gCtYyBcRhINUw6W2A4T3U6YQQWNhQ5yC0k6zjJKhhWGQahK4BRW7wLM+En5+WSiOWJfTUjliIULMFH3fXm/hkZAyuxinafy/bhdrafRqnPbI8gUIvY6JOj5dckA1HMySZQmXm2eV1TRAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739533134; c=relaxed/simple;
	bh=F3Qy7sKLmjeQXCJHstoWqW+LICjej+jKJ+Z5NZTZzQE=;
	h=To:Subject:From:Message-Id:Date; b=nAn+XKGPP+bdr2V7RpgrkkMvvsjexUl8dcHosPqbp76TruIQfCZdubuYXEcTAJPrBi16UCFgqdboYuMhogf/QjaR8WhBIWoXbrgCO+x1V3SqqvJHDJNkjLPvSXZ30aTUF5ft77g5QHG8Q7WuChxUd9FwF3/wab+Ih3r/rBbjRa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLnWkZ97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLnWkZ97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CA1C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 11:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739533133;
	bh=F3Qy7sKLmjeQXCJHstoWqW+LICjej+jKJ+Z5NZTZzQE=;
	h=To:Subject:From:Date:From;
	b=gLnWkZ978gReH+0MGv16y7RT08KJWg4sF2FSO2QklOXHfTDIllt+n7D1iEQklK2mA
	 BZ1n2fn9ktzg8nwjYmdbjgZd2eCYh20vDrbuzBsNNnvw6JErxEFQFQzmqzNqfadvR5
	 2M/AAYqjSB8NWiLjOLYTSJKYctAOBcfv5/KyLe90vsf7taLJpZezCVD6YEUkN+OmBi
	 4ErQzTv4aWD1B208Fucm+r6MYV3XNaEAqRr+Qb3TySJ+hh7A3KO41tY/c6bADoryQV
	 7SBkq8BUWAD0Fi4yG9kK0EBGfqjbyV5q31bFQFc1peqRTQLBo0X5mPqg2jeVsnpZcG
	 szsL/6SAZNqFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906D9C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 11:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173953313357.18887.2559528048035726129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b8e71ee68869ac73ad40b5d6ae7f04c42ff16adea7b710a4e61928b6f357b37
Date: Fri, 14 Feb 2025 11:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739533133
