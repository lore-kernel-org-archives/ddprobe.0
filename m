Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2183C1E3762
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 20:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766349235; cv=none; b=QNwH2u4r4fZ4YqSLWp+qwzk4OtFPE4/yXPb6n6p1CWhwKHrwJzjqcL3HH0UAhhlt9Yitatht4ilhFseqc/Ru34VbrkhMjndqlCqa9hOzld9sVw/8EN3FIWBBGFYfGnJR6xf1AuHCFa06S+idTIgnxcKbfn7qcBlLoHO6FY9eo/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766349235; c=relaxed/simple;
	bh=T52NQS8V3gNv+vuXsOZI8H2KvUTzfLWYEHQ82xSLYMo=;
	h=To:Subject:From:Message-Id:Date; b=STVsLKQeQeA9IPqf6+u/TKEETnxPaM/myGbu4IzeogH0KfDvJF95U0WF3+MgHEJ/+tdYbI1klvT8HLKjVkRKZZ4J+fbCm5gFQysUnxvzjIBOqd77lwTE60P61s5jtBFFBYrKSe8SyXdnqMZLLFd3GdTUINXXMJeNhV8Kq87s5qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXRqOrzP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXRqOrzP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71CBC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766349234;
	bh=T52NQS8V3gNv+vuXsOZI8H2KvUTzfLWYEHQ82xSLYMo=;
	h=To:Subject:From:Date:From;
	b=mXRqOrzPWItFnWtZGannvVM+EqP18EflH+ydqTV9B09dXZLHKd5QZ+OTLX5pohHrb
	 uy7z9UkExJ3wzrj6N5x1G/AU3yJSx/Xh5Cc9/oI1Jzhu4t3jvgxtT5ZaDi7p+7sO0/
	 JFG+94oJKchJryyazMp7p2RuTmdOiiVDtg8Yp3sj5E2lhy4SC3bolKa0DNeAUtyp6D
	 J5UoHw3eGBvzemp46NFudSlTcbiJo4FO1PYFwopTOrJN/YAlO9fCV+dqDVVo/wXKuj
	 bf+0u0NKjm0kpv6wBaJ9AS8VMM1ON7/RbM3wMmp6pmUluareCQGoe6J8NOEnfhp3QG
	 Zx2x+bbbwF+eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F7FE66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176634923358.8906.17659481513753040895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b82e2654268ce8e5b968c8ef5da5a4a1bf73c0b3e597b9df3b118f69777dee34
Date: Sun, 21 Dec 2025 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766349233
