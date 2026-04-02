Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCCC3E1CEA
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 13:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775138134; cv=none; b=FMvThrtgpVim4eg7juiGKoT5lPJeF3HWrSpNiV//JW5Is7hhJjdKQJVvwpwb/0uOYwEnOnA9SkVPpBf0JW+dhqSjDUGDpBjZ1B6Jng60PVSJlhXQe8vor6QdSgU2/TJIt66+5TErpzkAnRhz62eNXjTYTHkbRuxPLWqa9fPU+PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775138134; c=relaxed/simple;
	bh=K7k4l2PL9KfPtO5QQ0jKbyd8WADh4I05urg7hepvzYE=;
	h=To:Subject:From:Message-Id:Date; b=Jly+ya7Ya4p517TveAU4LXaul+LP92KIZFvSaPia9WLJM7OwEQIi5+1qWeOjswglimesWufhpZhXKtWj6yftQm22BarZp/kZHKdNynPJrvPj/TGRq0FlXeFeDUi33H9y33GIgQYXaPdohh1R5pevQDJeCr83jBoCLO/urFLbT6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNUcw3Pa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNUcw3Pa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7D2C2BC9E
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 13:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775138133;
	bh=K7k4l2PL9KfPtO5QQ0jKbyd8WADh4I05urg7hepvzYE=;
	h=To:Subject:From:Date:From;
	b=eNUcw3Pa/OfmB1rqbt4U0c9ZqNB7v8+b3HGV04F8SEa95iC+0g9nq14SzBkSmqru4
	 8iMw+/IUfQFbPTkHWmy9ggo6JJAYPJreajwiGyLt1AA77x/ITCsO8Qs22t1/dT0M4/
	 QxfUPZcxW7jIc9FCptFd3gBK/BCtdwcl13PaV7gOX7eBCec9yfCEWD6PEW2Q7np9o/
	 E0eAO5KoIBhhjhZRrQLuhg5F/OvPkjGfylaOjw+6CKbu/5PcH9uY8CzRk4IDYb7xaO
	 aGxJPhxzyz+o9/+R7+oF+OJiMmtgL4nQAenCD4yQAgaXwtS51KRuaEEcddWodDyygI
	 CXqTR1dLVswbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF3ED3942B
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 13:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177513813369.29375.17303746129850490878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ab7c08954cd62543fe41a987f6140503f58bd3946f0e577cc500c659e2732ca
Date: Thu, 02 Apr 2026 13:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775138133
