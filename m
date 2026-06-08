Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C51225775
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 00:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780878274; cv=none; b=Gfvsr9UYjwQLcTwTcaFXAc7b/wQpLNghV6plwhuiKvyJhfMAgkximaU/gXE3OaCfzKpbfRvkbjVIi4UZ9kG5Ho+lBpFya+z/GIGYFrqTzJoOwlkoT8hiw/xUdCQBFlUQiJ2xq7ElVKc2DZU2xT/8zZlvwZoUMjCGGVpfHyqm0rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780878274; c=relaxed/simple;
	bh=pNgtKijv47VM4noUi4feVu4LChGKDt5K2AW+tZucWjk=;
	h=To:Subject:From:Message-Id:Date; b=o6UhMv+kXteFwglKw/kUIvSRzDDfBQvo0d4H+CKeD4O0IoQqKThuLX+ylCFa247qZDId+LLMGewNudT9zrcaP96+7jWtQiKEsNeZpIkQjJnM81Cazjrk+UhNURfpg8VaWZsRQ03dUC0hGQ2jRx2ne8o4lpPGncXB7jhMCs0s8BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUa/vlo/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUa/vlo/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3AA5C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 00:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780878273;
	bh=pNgtKijv47VM4noUi4feVu4LChGKDt5K2AW+tZucWjk=;
	h=To:Subject:From:Date:From;
	b=uUa/vlo/Ajyj10JCiFCkSaF89zo6VdgXp3aLnXXwM0NPtfvcrVy1oF4Mu2ceBjLSI
	 VtV99s+sluXEVjoj7y4IyrNBzHhrhtCDgYDnEBrF+ZhmU8awQQqGkltVgpObt2/kU3
	 E+Yd5qqgP9G+AW0bcG6xWnrdowKq6xeE3wSQQLbmkM53h7s4QXx7/h7givbK0ur7cu
	 e0tC9YTnHN6z+P6p3in1qYEJUZHBamWCcvOOoVVpVqgjNtLubrK7iIhiFxbkLneUwK
	 +qJ6YRxoFBrLHcuNNylLRZD/QUNk/HMcBjirLKR8Cl/gjvaExAG9BaeI3nkHJP7hoR
	 RESYTDfdgzKiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1F8CD8C90
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 00:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178087827368.25283.10059579582442899198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fcec8995363eb61b662674d59a1e70de086859a40848b95f4c8a35df1dca0b1
Date: Mon, 08 Jun 2026 00:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780878273
