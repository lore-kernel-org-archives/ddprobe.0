Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C42F5A984D
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788895234; cv=none; b=ZAot98fjJfLmm/cIaC8KCjgr04SxeqCIhLiD6vgwQLhbSIVBnG2coMgKjmD4pnG1f8um2NLp3K0jVz7aO9XQlfBCUwyuON1bcdYh3Fba6WsoY5T9Fsnd5gUECnQ4mby4V/dbyZm6lg5noVIAOWlSNmsovPGdRlnj3+GETz9uCxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788895234; c=relaxed/simple;
	bh=mGN3TN/adGfnOTuJZA/HAI5V2ye97/PSNRfUdYjtKSE=;
	h=To:Subject:From:Message-Id:Date; b=Zv6eryBEwq6Y/wRvDGj3iwj1/6tODXQsb+zdSVaLEca5SHdx8uSOWYmnOmbLbNjsYY8xzGr+Z5FFiUZjvZsef4xhuUSom9Kw+LSInquPr2HOqnfP6k5mC0XfEfsuVKEYAluIMlf8xKUUFeBn+JCuPKd2DPTlEeMGx6jGSeX/MLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBHunFg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBHunFg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D380FC2BCFA
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788895233;
	bh=mGN3TN/adGfnOTuJZA/HAI5V2ye97/PSNRfUdYjtKSE=;
	h=To:Subject:From:Date:From;
	b=RBHunFg74xd9BjfLfENXeeZk/LRYUpPq/B9wkuunG00MZxgEj3jn6swh9mhCzq5Az
	 IETP8JMPICyXq2MEL087t0LKZIXRmCvK61rNt0Fd8Ih/PuVhf4IxSY5xSBY4Ia/FyX
	 JPCFWm/nIw25Xji7wtaBSTO+didkeqqgQZ/niJXH+uoj5q37wxmX39V4kjH+azYAWb
	 hoQBOiV2Qvu6lPd4HtRfN2kf7yfc5dQhtVbdDGVupujjwnb2u8iWqfc+YSYtboPfzy
	 QPG2f+/DTe7y+2itZx5Q46Tkh4jT+mKpE4LuTXYO8ZxjDn/JGAcVnYpwC2M+1m0iOS
	 IYVnGJuve/Hkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D25C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178889523371.14180.8924251995915618869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89ec58310bac29516996e9d704cc4918aa1bbc80c9d7678c7091c26cdcf28fbf
Date: Tue, 08 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788895233
