Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DC0370
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723766154; cv=none; b=FPPS8akK0FOfYE9lenFirBG0pPqoiS4WZBXpB43KAG5pQFK/JvUUejsYpY5YBmS/Rj+VxuMOdEGu67ZBQ063MDujWwym9SS7VJ2s5ozYfYFYozHfnI3xqFEGpb1vLOrgLIs6niz+r3HPZzdXZunQMXf5S67npafh5iuGRP2vU+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723766154; c=relaxed/simple;
	bh=6cXjX8zBv0pkJPWmdttmY/YEYZFWklkrIAJr8LUc7v8=;
	h=To:Subject:From:Message-Id:Date; b=kPgklGYp14Wxz291YKtP3Peq/m0qNauqyRut9pSJc/QUtEY5KVUKQi4Vo5ou0ZmF6UT1o564btmNQnoNn4Y7fjqmi9dKXsH5kKnDbEWnT8jR0hzBo4iH+/9yVKkFVWreBLD1gX8/9sp6dFgS0F6QeJh+DUPWa3VwPzpbPcQv3r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9osl77c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9osl77c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F6EC32786
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723766153;
	bh=6cXjX8zBv0pkJPWmdttmY/YEYZFWklkrIAJr8LUc7v8=;
	h=To:Subject:From:Date:From;
	b=R9osl77cO0NE0HyFo9z1bAQKya/FPYq2FShKjh9fBb8rQz4SgMFEgqhtHrS5z15e8
	 cSreAnVnVwPgekcDNL2n0VuQzb5pLdf5tUzuaxuQcK01QRyo5VP57jG/VBy6KIhwhV
	 Uc/rtmjMfEwmlvQIAu93FxIgatcydgVnqF4UxB9NQS31+MzcZ7RIN3r2qdVaZ6aQJ2
	 rcGVdPl+VCUBEpjf7cxzWWQPeyfMuqzDt08ugpPZE2D01GhgqVIdBb+eP/zKGOHc5T
	 pG2tro75x5TYCrTjnZNUdzs5Um+SLQkoYVPFGJgj9JrXRGnsa3lrxBqfDtI2Mj6BsZ
	 3ogGhesqv+dYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B3AC52D7F
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172376615360.3953.14108159057385668545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07844898462ac12469e4533ac48e19155229651df442ace04305398960b5f933
Date: Thu, 15 Aug 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723766153
