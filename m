Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F145E2F744C
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763122194; cv=none; b=f76n69wwYGuqVBTG8kCrl9e21Hv6wOQbYSzvjQvlh4GZKFc1KvV3/v9UfNNUZtmwO11FKdYkRq11CLfAduyRcVmDOkd+gWx6HCwEzlMPi91Tu6Lm4UUmXgT+bK5qaxBSUOy3rx/12MfTheY4FLdB8hLosWh0+Ezf4M0XgslZ5qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763122194; c=relaxed/simple;
	bh=wEcgdtg55peOykMrbj7jUNvdPwGwGutixqmvucP36BM=;
	h=To:Subject:From:Message-Id:Date; b=pn0eAFlB410XWCyhn2RfTv1xJbqOoGq29mBxXoTS/mhjhmuE0Ikyeg0f1EHdOhZT+Ktzkejvjo6ptSZy4MC2X97zS5/0/x5G3+TTHlIJ/pYd7TRb4UlWtAb7A6ZebV7+P44UvD20GPzLpo2iOXaJShMpDeZFnh7U7PbgxN8IQ+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MefPSHj5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MefPSHj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0F1C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763122193;
	bh=wEcgdtg55peOykMrbj7jUNvdPwGwGutixqmvucP36BM=;
	h=To:Subject:From:Date:From;
	b=MefPSHj5WUepzlAZKUd87sPLWYFL1vB1ejzqDq/xK3cXsZf0zlQ9WcWbiOeQREC5R
	 U6lo5VvHDGtDn0RI8hReTkZD1K6x5LO/TnxSXjSidZrohExXFdMjFFuFABqRab8Ray
	 cMQe1XG2rdQxIl4+rrid35HrW4eHIk+JYXMOTSR096dcg5fj0eieu1XC0vMJ+31MFp
	 9s59VpUMnjBUciUKPoIxNepVdJAXZohvElV1lJYZT6Jfcc1KoMEnMGHsrbB3Bwk67V
	 v23OBr6bmYcp3M75E2tQ4vXKL0PDP7UQ2yW2QpVAc7AenMAiVm3ONbPV+Gb28IY7wX
	 iUjLMylwV0efg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D97CDE00D
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176312219358.18744.15054589794194671854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35930bd6f796af9e092540c74ec0b18bb08ddbc9c0f85a891dabee8784e6f09d
Date: Fri, 14 Nov 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763122193
