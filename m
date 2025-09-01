Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3982D7261E
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756768194; cv=none; b=ZHu7xUE5Y9b9Nllye3FTmGUqp8xsuleB5ll4o+y1k4bfyOjjEVOJeSiq5ouTQoUXHQPaDUJfd4ydif0DU3ghKAj722a75fRpA9IuK45pnoKqpK7aUpWReIL8lgrW9WQ8zu3UPgXjvWyA1ujoQj9NtAWauuK9c5M7oo+YgTMI2Ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756768194; c=relaxed/simple;
	bh=L4v7+/vUTH1G1vGySO3cmbs3H8GegkeHqYO7LKIToZE=;
	h=To:Subject:From:Message-Id:Date; b=k50apU6nP/5WrIJa5efN2brF18Zpbydvokjz73OnlQBVUZf9IQQmsIFcgO66XLQRI/JXgjP1d8oifeRWlQY7mZvP6WJihY7a81Xpi6dLsImLJSIm5xd+07ERQwPIQYLUOqi/2bSYP25AK+ytt2Kg+u7PhSbgSEinedbg3XVqysA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qo9Enz9U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qo9Enz9U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A833DC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756768193;
	bh=L4v7+/vUTH1G1vGySO3cmbs3H8GegkeHqYO7LKIToZE=;
	h=To:Subject:From:Date:From;
	b=qo9Enz9UrT2UO1xfQ+90EtIvASL/Uvjo1HoapXY6aMDNumdKeNuWnT3xLQpgMF7AJ
	 OyJzlnreHKtLbcJDj4qxXu9p4v0rzpbcr6RThY300KFTdhIy/JuDXFtDgwX4cClf08
	 phLOfE/FypUF1wXzy33XADxFQRZDHaBVkyyyIfoNDIzzjGVcGmkpMShI3AwovK4PHJ
	 YSnthOYhuU0P9axADqwJ7hAfLTxfSwY1k98LGhFtWbTadmd2koPGwiK5l/hC3U/cPw
	 tFUpv1rDpGVo7NXU6pQiBV23OPJc8YynPwDFdjRDqETw1wvm16ixk58Om9mCfmATNh
	 WtvL0vU/IBHTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9425CCA1007
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175676819357.15851.7791910410789970639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d89b1bbc8a9f02cfd11ea050805de3b5047c57bd082d88c8aabe7287d05c7026
Date: Mon, 01 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756768193
