Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B65F33F3
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737249354; cv=none; b=NBxzlGEx3PI91nlX8dM4wB2dNvZ0BLWVSHIKZPmuXb5mm9jb+FMS3Sr0+W4646WDuvEpcvBiACJ/tVytY2bGGKPHof8G6SMOPPdLB9rLfNi13ymTNWNqTAbKKJPUxYyLx0jTnE+qUScguQUC5NKTfQAc6kvsD18EObikY6/zJSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737249354; c=relaxed/simple;
	bh=eV6VYpoT1oJF8tY07BGEIuNpgiTRbu5TMWG+AJX6doI=;
	h=To:Subject:From:Message-Id:Date; b=udcbopq1O9u5J4SnqpGxjqsvthnrPqh0QfBxtrsGw0AJZq5ek22AnpqamBznHgZelt2XMuIyATBsMlIA+Swk2bZqMIxnjkGyjP+2bfO/X6ys6t02PG8AYMPA9SoMEPlU18ZoFt5H9ap4Vt0WHpuup6QgCDQXquUqYKZBKLS5NKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbWcVyYq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbWcVyYq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC961C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737249353;
	bh=eV6VYpoT1oJF8tY07BGEIuNpgiTRbu5TMWG+AJX6doI=;
	h=To:Subject:From:Date:From;
	b=EbWcVyYqS+CpmfoCy/YVWnYrWW6ucTUIhCCZd5gA3rRz0zf04eCsl6pre+x5jl/g5
	 qEzV3lZpsSe4WJ1Ok6TMMC5w6UFtwcmMmh1XXIWC5XH+gNhSk3Horn3cAiuuMagefA
	 6Mcb2lP0cg+5S4XQFqpAPQbq8JMvYO08yX+dSO6NB9FmeteZF0P5qG0uHEcRw8z1wV
	 AmUaf7NnIB+XkTsfjsUXG6LXy5sxWT2YH/w1WwQy+pkUziQAC3rbv29uszsGgZ1MMn
	 TVjTS7MClpsisnEmjO5V1hEqn+1cOjpb3vE++YdCGVj9LfpK9ZeJxERJ72WXaEp52/
	 taq17f7gkdQow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939A7C02185
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173724935359.12188.17495932901198440625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bc012317f951aaabd67c1320d8c256a25115b0b945a60efb0258529bdffbefb
Date: Sun, 19 Jan 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737249353
