Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A19146A7B
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732869954; cv=none; b=rOVxkPHfR4Z5KouXeLxbRKdt1IVSJvGLSh/9haGUKoNTCwWahSg3zm/QRfXjt+LKXi/HRZktIylSJJqgAjoaDTpSXnoTNAg3qMcKWmRlmBCEpo+tLCFPhntZlRngqWqDeoV45geRRr7aVESewOb/LPmJ2Xf/OI1Xm4Sp49JM18c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732869954; c=relaxed/simple;
	bh=4BKHQXDJXojRrIbYgo4Glbzv23H/vqaGpsf/y39lIdA=;
	h=To:Subject:From:Message-Id:Date; b=n47BlYGA8c+i/08jnRjB5+ql3RJaI8S8WVEKORNtoZhKY0TV9oJ0DQ14siniHg7QTw35YeeaFBGripnacuCmsTVO7u3GgY7hx8AFIt+BNdl3l2U+RjXeTrMzRz43ctPYBD6m5rJ1qgGESiawlZ2YRxfXknorv+tAgKH0Qb9ARZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBZPvJVJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBZPvJVJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D40C4CED3
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732869953;
	bh=4BKHQXDJXojRrIbYgo4Glbzv23H/vqaGpsf/y39lIdA=;
	h=To:Subject:From:Date:From;
	b=dBZPvJVJAqDMHaWwdcu93fsuzWCmVaQIGdKR7QubvD4Cie55jldoZdmsa22Jzz3T6
	 Hcp6WWr5lbLZ72cbGtqIeB1jies/4kQH1/ZZtWOvLvPk8fBC6letIhhBQZy3QpKETW
	 NleFYqUf5ViYgQ0/iecOUH4ugQLsPUnW4wSjEzz4YpbO4d36s2zY1TeCNC24RXg1cS
	 gehqc6kd9W3HD9q5g2HCe8M5XU71ngB/fHljLIw2+P1j9aJ8bxMYEJBVCwHLQoV343
	 VKFNCaDK+pFnZfJZ5E88nL4RbJ89uZgRA2oryEZ27mlNoSPD7DLnRD0Tl22YXsOu+U
	 UOlahFr/cXcTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9083ED6EBEC
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173286995358.22698.9319472982983581915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aa14bf285c062a3c6361c223521a0b2434a2afffe4490d2f2e322c52343c2b0
Date: Fri, 29 Nov 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732869953
