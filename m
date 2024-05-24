Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0763112D767
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 15:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716563603; cv=none; b=u3y6rbNl/vu2ooEAD5rxEbI3mOBK+MfSKeSviALv6GKWcaGA0QZ8n3mX53uLVYDA/kavjIzhHtiODAcQ0x12uXl0QGiTjHNjlbQLEmdA6umUgGCB8uE/BWkIh6tOhQYCqGID7JuRS5+mzCiPO6yytobJlkpZsJw8urAu1wkB5v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716563603; c=relaxed/simple;
	bh=+WQoNVb6FDyXX3a+ttzTFG9XYunVnE5uUrR/U9M8RMA=;
	h=To:Subject:From:Message-Id:Date; b=Nc3oCrRhJBmYeL/iYKIunxyeGDjztdDMJNUgknFHo1Sky6a6llLFgrdu/dmCJfT5WXVm2BXew66LWOouusOlk4EO/kt3fRyEwdoztuAJ2I/GmnqIOypnaNS9ql1h8Jq9vf5OvtSFZYAMK+RTJFKl+uHq3tWF4ec6ApyCShqlVYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwQy1b5q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwQy1b5q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE658C2BD11
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 15:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716563602;
	bh=+WQoNVb6FDyXX3a+ttzTFG9XYunVnE5uUrR/U9M8RMA=;
	h=To:Subject:From:Date:From;
	b=lwQy1b5qxFaFAI1/Ft5MFNQw5bwIW+V0OrDuw5LGwwGDJKwGYgrZFpXUwZ4EfEbGT
	 yE5EtvMeDYq/BTCLYNRMRWYTvJ0xT4iovEBVVZyTedYD4EB7pl0WEt5mKXoAPie+5L
	 Q/t4hlyYxYz8sRnEzGIHcqQR93jx15wuZ02Ry9dyWN7334B9URG2bbvypExM43uX5m
	 DC0GnGeUyoDJCbGukx55Ien5YvtZ6BTrGHFdZeJ8HVRHvswkLQ3d0gAAhn9e3BBqhN
	 mTzp8SBNAKTLGjFfEsjnvHyzoHW26N42qDlog9ENkYDyO6TIyYNWQyTy/bx0AUu1y+
	 CTZtXLZ0EHp1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF669C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 15:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171656360277.5149.2210111969247620645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: babffd2c45d253d03e2b77cb668c6fb4b4aac8ad233756de850ce837480c2cbc
Date: Fri, 24 May 2024 15:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716563602
