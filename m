Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5FD0322C93
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755781793; cv=none; b=s86m7X9CDereGMQ3MZq7kn2jrbyEw2ZjC7AcN/tpXQaJGe5Q4fuq3yvEFwVC7phc32HLE+OZmzEJVaGeTJrRQWSz/oz4GQ4/z2sv9bIk1WIedXMexEbVxjB4YV39iy2u7ulGEHrJcYAypQsY4C/ii0ufVgKZ0MrywqDR4ptndIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755781793; c=relaxed/simple;
	bh=rTNHJbdmqh7MomcZCD/ufsyaRX8AM43TdGxm3r1rYos=;
	h=To:Subject:From:Message-Id:Date; b=dWYrSnOWenv1ivWRgajcHRu+8kIZIGWT5CLjXIiYsLHrDYghn2ckGzFY+im+MnedbhewoCiflznnXPqY0COmOhl3jVxpGalxjDMK7Hib401acF/k9dyWY00p5I0O3j81tU7LObHXKCVc6+9DI/V7l8yptThwoqeo6T6sadZdEvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oPHKIakr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPHKIakr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC26C113CF
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755781793;
	bh=rTNHJbdmqh7MomcZCD/ufsyaRX8AM43TdGxm3r1rYos=;
	h=To:Subject:From:Date:From;
	b=oPHKIakrVgdXJRKFHPytkx8a0BwaWRzFjDJUcE7uNhk6qFQyo4/YGREKFrUG1U4MZ
	 i+Dgso9ddy20R6+VbN5BHsABn0zqg0/k0THYrVLBVFhr3BB6KFohT4ZEAiIFYBVVT3
	 qfBfkskBo6yJaZXu06Kx2U8K5sSMlAvv71IY+7iipi2JnX+TLgScDHunnXvKhjZbrI
	 ePUKvzQXqcXbC7lmtyjFH9ipVqeZ3bfkqykNA+djRFiMP8/8UiJyYMMj5FgnZsrD39
	 9+iKTx9a+z2YmhZ6cIFjCAxPWXaNWCOaC6LbcP1g4P+z28HAZ09PddsHZ6/V0ftarx
	 XydTWLf6Ce6fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F91BCA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175578179357.18854.3649805010688268524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be24c7edf83b60e87254a4d34e0616482c115982d1b6bc07d1be0387f4275e73
Date: Thu, 21 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755781793
