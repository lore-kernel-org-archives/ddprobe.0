Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D69E36D4FD
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771344294; cv=none; b=NOFpFQHbCKfLiTmqeJC1//Fj2ts0ey4vYzeqz3zYr6Ph73IpVv6Sj1CvwSUKLJG9oaSkP5cGx5+1/3s2EH4kvSmMwq56UYJVGL7CmmEUKPLnNwYVWiD1KOhRzQMLv9RTL0hwYWbvqHg/8JwYAcNdn+NKSWdRkC9nzmpDyQPl1/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771344294; c=relaxed/simple;
	bh=+PtIB3OJ/gysCeXN/FSRRaB7XVx0R0BsuFCGuLNFtEc=;
	h=To:Subject:From:Message-Id:Date; b=byE2kxANDWDswe4DILwvEGSaYbmHQUZiHDH5ZPcY3IACrKmPIhyBr6YRVO2lZfqB29G5FuJJMcSgFid3UgrAPxa5wjcBBx+KJl+YuReYtUgiS0Uid1Dk0yUs8YcowjGTAXYBZbTSzxZlk8WfEmMMQ1bnVx3h9kEMUVVcN6WwKmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1pRAdz4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1pRAdz4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE247C19421
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771344293;
	bh=+PtIB3OJ/gysCeXN/FSRRaB7XVx0R0BsuFCGuLNFtEc=;
	h=To:Subject:From:Date:From;
	b=u1pRAdz44YVUuuXbo8oBEeTs9KmPYcI2YgoBirOSXI9jNlxtkYC7iJryIYqd7hjJw
	 x7LQnIph7Xwmz/B3ZennPnybuXyJ5Vnm0jgyjggShmuJrjrD5CIhU/fc/hqWu5UcYQ
	 F+9a12W2sCq91cXtD+FMeif6hGlqvDsLt43qRmuh1sHtqATYWkEKsuKpsKrUvHDW6s
	 LIlCBdmvliDDLEztTYnyvXG6w8Zug/8sgzcm0VHD1N6Y+PfjcC2i8/aWws9W4WUxxP
	 fONZrnsWLc80tj6/IlHFHuS/dHCBpO7GZljn28+M0cE0+7StYPPNTKJI9UrRHdA3av
	 eP20BBPoQJg9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A27C4E909C5
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177134429363.29832.14978396667323499423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7b354ed50a5dacfeb0272e2808d599a8be2e66052d9a09beedf7132ac3bf48e
Date: Tue, 17 Feb 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771344293
