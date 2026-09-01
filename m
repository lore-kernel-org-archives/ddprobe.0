Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFDC31F99A
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 13:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788270634; cv=none; b=JlRlxk162Xfc+aNjUqpX0eaMiZHDfdFYDc9gTi/S7ZRtCB5Pe7nbuEhrHTUk7wkNOPmyIur46Kui3uPVAoOGdJryd+8w6ZckqSb3BKVO59qwZSUPqowKaBsDueaJp8xuCVYCAxiTNNDa/i9zrVp8NRj5w7WqiNLVm4w9tsIXqgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788270634; c=relaxed/simple;
	bh=yL44rfeDOPvNwnAv4FSedIUqQM/E48RRP1OaWWOTgvQ=;
	h=To:Subject:From:Message-Id:Date; b=LWNAWwCA3BUjDjbQ6vr2brLs8J/d3rza6N0Pui7ST5hCjmZdqiZU/buLjjTGpbOMHEUmcuK1qk67ZMxTnxBWbQo0mcVYx/kJvNjyVGgQsO2BkbcfB8RwI6tZkKLEtYT/t/BE8pyRRF7t5B4QCfYDCe9Yeg1NlxWSb+k/xT5fFgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtgNmHgu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtgNmHgu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A45C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788270633;
	bh=yL44rfeDOPvNwnAv4FSedIUqQM/E48RRP1OaWWOTgvQ=;
	h=To:Subject:From:Date:From;
	b=TtgNmHguv1HsUP8DpuE20tvHgdF1u1M6wmx8wKDLjgPllEyiHNPFnzY+QarTXHNBf
	 bY3+itIf7pBYr+/hJBgG9GIh5Mn5qSIxGXQwcyi5FPCn8FLe/07PT2Yv+4oGp3jp4E
	 W7Cp0nkuNz5mK9Ee0BvKv+L8zFitoGF4L12w0jv5NmOY7go6TLXWXOKgDktCn2EFyV
	 8boORVIM5XZCdt9j9s5xcqYI8d7x/7ceyaBc9Idt185T6Yrs+ME1OTTGQx37OBWL0c
	 RNAQWIqrxWJ2xMMaWgBeseF6mZq6YnHsdvG+DLkXSshAZTRjbg8HIsiemGOr6yimeb
	 ahBP+07yHOzeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97F5C624D4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178827063368.18893.5375145245947332969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afe6506c43931cf12b75a58df3248986c4c94bffd9a56d3b02dd636a4731ffdd
Date: Tue, 01 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788270633
