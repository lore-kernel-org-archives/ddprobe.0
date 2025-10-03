Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CEA2AE8E
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759451394; cv=none; b=WTQfM3KiLoVjnw2r0cb2WLIiVo+EW8FsSJHHPPsdUT7/6rq9A20jtQWPUNtWFLpUFtcfrkR8LJcI27fraNbMLwji8sfqu0fNdaNjDS9Yv5KZrgq3yhsFRIOdY2FXNFdoDzAcm86I1DJ6kimWmUd0QRgc7+E7sZZwnno8xuA2gDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759451394; c=relaxed/simple;
	bh=iRLaz6Dc+ytV2MF7VqXfhDHXt7Xiy6lTDoMGrIF+2J8=;
	h=To:Subject:From:Message-Id:Date; b=LTqkhPHSf5mPqK8kSb/IJvdx3dqpFLHayf7lcq0dGgUXtQvUYIqzpTXGKxjQh3dEgoCj+Exz+8zp9edjvxiVtlp5bHnCbZY/vCVCElpXcXk9aAjw0aCrCRgVFE1DiKKLxYuKQy7cuMT0qNTNyLsuDCRTf9mb9ThI0ENr3m6pJQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cq0NFSQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cq0NFSQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F60C4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759451393;
	bh=iRLaz6Dc+ytV2MF7VqXfhDHXt7Xiy6lTDoMGrIF+2J8=;
	h=To:Subject:From:Date:From;
	b=cq0NFSQCGe+sHm4gW5+aeVKGEaxm6QNYJpzMMVk5TRbPOcGz2QiZay2dWG7WrUHGI
	 jcsuElW+UnV3Z5ZyqWm1VcpkyyiVLbsCGDIIVuXCLWaABkk5ncArRAdu5s0QJju6ZZ
	 PJVlWEVeOteSY7nt7FNZs/EYRucxNhlx51x4SErlEDPTYDTCjFdDVI4WUZ3el8CaoK
	 kAGj/Jx4GEjb/n/7RW2dsrIiwi/2OcUi3+67VOoVJC3U4wc9lM6BzOlJaHyp9ALa4g
	 LnqYll4nZxRlRlS7inv0lFzu4L4lUI74a6tb2vV+42BUvYpgUmIdiVvtdMvKKPLjBM
	 SZYoPjfIUKyPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D60CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175945139358.13194.7946975451037535423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce6aff44ba8d58257e2c54d27fa031ab4d5f8f645474a3e370a35888f1ca9bd6
Date: Fri, 03 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759451393
