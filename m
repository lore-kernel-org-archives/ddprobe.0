Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA8D35293E
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768821234; cv=none; b=durKX6bDSlDqyg6lihkeNWAnSL7bRjrGmHsUuMblausMXUg3iy3Ci5NvM7jUxlRurPwq0rAxLqqpa+IuYqzq7mx4edBFich90dgTWAWSYwy/w5z3omXmXgfz5MHiY4ukvAEni9ONuXd6RMPF8fsYjpEK1BED+slWxjMFpyiZboc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768821234; c=relaxed/simple;
	bh=+hGpqdIzuQqRhrq7p33h1KS7KXyQr1E8TrKqlWsZ4v0=;
	h=To:Subject:From:Message-Id:Date; b=SDGWDSLZh/RXCBthnFErJhNXRdX94JVY9FkRSuWNDnpRrTNUjFI629vVLkO5VcOza3FmLF55uoJC9eXi2XFw4UOX8yX3pDfUxxY4iK7wwb2GTmMPxVV/PPlEjZxibBmwYopVrgIk36Qt0ZnNxxdCo7ITAlf79GpO20NVrV2osV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lbNs4VlL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lbNs4VlL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C950C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768821233;
	bh=+hGpqdIzuQqRhrq7p33h1KS7KXyQr1E8TrKqlWsZ4v0=;
	h=To:Subject:From:Date:From;
	b=lbNs4VlLF/hrXrqjgm3D6XYGXFUQgk6/3/gq7R6aTLgir38hXgW4AKtABlwFGF69Z
	 QsARGZpZNUJtAn3+uY/dw68dEcUv32srp/nF5DKStjxcNeT4ZPWx5r6wv9l1Y2weqd
	 kZCOQMkUIj1hYYwvxDaOpK9Gq0g78Wjlohk6ApHkJN7RAY6Ig9ZwweJrPzaBm+kMRv
	 T75WUsivv8ytnvAj8I/VYhQUwACvBj96VI2yEApi62PepHjDolhxmWoZpNXzFbqxE0
	 YVHkh4SBsQmnXqOC0V9JNIHeKj/GPoN1SQHSvZpJ1ZsQ24vh+Rt7qlD0PWFwB3bxCm
	 0dXCdb5KLMgDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F38FCA5FF6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176882123357.7608.7173018650697532462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 657278826dc4eeeacdff0ffdbe2c6f764fccedeee3199624375a4d9c4bd92e2a
Date: Mon, 19 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768821233
