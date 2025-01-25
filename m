Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C7D1372
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737821754; cv=none; b=KuCY2FsmQuiEqMcN5JcqXAlTqCVbD85HvOqNEj/aLluXZUCDL2C/p2qOZQEdUABMiehs+Zla7TolyKj8CvdzJx76VS60o/AjBwyIuDRUn8tb50/zrcc7MIYEm1b5hKDsfCGy2s8fyDbgY0sxIQ+IuUVNkDVjDZQaQhoU+/5Xfbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737821754; c=relaxed/simple;
	bh=g4N+lJaBK2Fsd79sjdRu4wEwvqTFRuJXUFEnXHa0gC0=;
	h=To:Subject:From:Message-Id:Date; b=KyEW9xABXp554z2MI4Uqp77IuvsikVX3LAZbl4DLRIztBYbTNayVzQtyam6zBgmOBLSzQ5oHKz4pAG3eckBHQr0jxWCPcOlVTfOo9dIyh0JgzFb5Pq6vLHKPhsvFhU3iR7GUIPgWOD7CA5UMsy+nEfrwBcqj/aaN/JaBiUIzCkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VK4wp6pp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VK4wp6pp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8808C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737821753;
	bh=g4N+lJaBK2Fsd79sjdRu4wEwvqTFRuJXUFEnXHa0gC0=;
	h=To:Subject:From:Date:From;
	b=VK4wp6ppjR02Pg8kH8MsSkEc6j554Tq/TgtoZO/7NwXrVqIrVa2Yyns+1d4/s8pGJ
	 b7bpkwOmSaev5tiouu/pcX3ANUQ4ni0RBx8r1J+xzX4m9EwChN10VyI3+VGudAhYBI
	 VnunXwYZyhhMgDE2npRhDup3wJyZkFtVN/e7dhlbCrBub1f87kyB18dL1reHCpGLze
	 wp9wu2KUUIzq3m58b+7CIRK2sdY/r4+UspTPyA8ee0BunZkfaYO5wh1XGWRqKOrvyg
	 wfni1ahycALtAz6ZXFo4ksd8clm3rf11C6bGQ9byW0rt1EYAUlU4NssTCRUnEeJ7Z3
	 b0KHUGTVhmJkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA89C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173782175362.21368.11491495905269134949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb88ba57490e1dcc1d4da4499f66ee9a7291d4dc9a451f751bd66c6215332153
Date: Sat, 25 Jan 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737821753
