Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0718635CBBC
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763095794; cv=none; b=RVfslf8JmquYDgfrxrkT2uDBjnrtKqfcj59UIYI6hrUI1IvWOxhK3Bxsyg632Lk5q4DLa0wsU3ZlGJCsLVZt4gEMB1xldMkcOdmpKGcnf9fnHuPWvSkW/0XlQN5kxz2dV60SngB0T+rmc6uO6/CjIs+5yuU6l3vrfnpClq83Zxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763095794; c=relaxed/simple;
	bh=4izHjfYKbbOiu1gdqmsb9JFTohodR90mU/Y3DofZDMQ=;
	h=To:Subject:From:Message-Id:Date; b=J0NahZo/UwYmzPucLrUWsQsF7xgUAuAlrK4N4L6FLXBsYTAF+TowzgQ/qPwHsF//jmxpLraLMPM2LscC2Zhrur6/+ZPWqDwGT7cpitv+ay1pdH5G9nev2IZHdj4JqC5eECzJfSYwGfwH+oRHB5Ja8jx4Ru/D/AHFtrXzr8OunBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9UeMy3a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9UeMy3a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC5EC19422
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763095793;
	bh=4izHjfYKbbOiu1gdqmsb9JFTohodR90mU/Y3DofZDMQ=;
	h=To:Subject:From:Date:From;
	b=R9UeMy3akiZsyCx3IPH7k/RQ84/gcPYlzvacEJiSshZiPwZxGcQ0MbyyNAuQw3rlA
	 VDV+t3/A6KwUbWGTlBMfAyap7bTC35XHi6s4L08O0J3N5SPwZwkeJ28HD+mJWll3x1
	 T02cdazcFyiprm2uW30ibvHBTPibgeq+tRhAOBl9DekcSpEMvMfayBq+P8fME7pewV
	 Y9aR7NQXJfmQd3uF3Qy4vHyAfcNS5UAY7ZVUqAjIcgXZmCFZCwrmpoShhvKaydg7dw
	 kHsnQBGfKWm5Q8d20IyU0Q2XxIRZWQgcjtDpUCAzsfwgL8wojUhg0Y2es6KZDmDATh
	 mjO4CA6DiB5NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FFECDE001
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176309579358.25375.18022362822525160831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1159d1269a4e3f2b05ca1000d433263d0c22409e16a2b281d62c757c3690c95
Date: Fri, 14 Nov 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763095793
