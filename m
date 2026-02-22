Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24979CA5A
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771720494; cv=none; b=Obe43djtMQbSNXAz+2j6Qk7ZZnsm7bzXq8n3z3dhVmk0VXkVXS3W9bYUNbna5jqacPtdJGyerF8eLY4qAt1AhABTRuD94jsLvzEg3PmP5A8seLaLDbbhdKtVFCPaVD4Y4vLm5/KUNm22yECcKPPqwRYFLmIQ1rt45kqaGpf5D1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771720494; c=relaxed/simple;
	bh=zuWNyhUtvPRaVwa7Mqbsy7tynOr+wgIJU3YK20YznMQ=;
	h=To:Subject:From:Message-Id:Date; b=fWeNsmeV0hchmjyhuTuO2TzEL+qngUz2PzHKikFKlfWLkQtqmwXHn/36ms+mU0ERHGO1qyURHuEoYwL6qSPjKx1mDZ5Y+qw5c2nUC0rNN4YLusFoQp/jjIeyOKtYDYwrUZozSYAyf0hXiTJaowXyk5DT89hgAPZ0y1si33JF/Pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvihKb9/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvihKb9/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF6DDC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771720493;
	bh=zuWNyhUtvPRaVwa7Mqbsy7tynOr+wgIJU3YK20YznMQ=;
	h=To:Subject:From:Date:From;
	b=pvihKb9/1E+ZzBfv9sS2eHFcW3s2hdFiWu2LLmhWHcgATEGJGOnbzOj7P/x5q79LS
	 9EdJac5aNw/LemIuH3NCWPjwe5M1hz26BLdEL5/ANP8z6byQFXs29uKurwkumVwgsU
	 n1Q8JSE2TCpI/TaRFWjZAD4s2kT3CNfR1ZiY/GRJKdxVHdTJQ0GN+jnl6msKs4pcwk
	 9/UyJNgZrR76Y0vHD3ymfqN2juFfoV4GI8PrGfljA7x7gxE5WxysnEEaIOmQyc3bVF
	 o7VU6fRpgt7uZEsvh9kJZqK2mwgTla0d9is2PLEVEa8CNooz1GGCnbeG9pIgE2kai+
	 ek2866nbbeMQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8214C624A0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177172049361.4303.3950277711670948890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c46a8958946b0351b39cd5304ced8ac20aa58d07dddd502abc4a3668d7b1239
Date: Sun, 22 Feb 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771720493
