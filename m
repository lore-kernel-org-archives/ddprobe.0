Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AB5299AAE
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755361194; cv=none; b=hvMenWCLrpAestVKVm+Y8ssCicX2nOetzGZymgykeDXZxjGPweQv7+W81RQs3El2YdsmID5+5hM3kbgEo6Kl2CptZCGuVbU0a6bccVVgv5jrTpZQ2aF084HE5rFsa6S5d7WcRKXMcC4rFjfLKxMWxBcJXDu46DXO0vrymK3Lvlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755361194; c=relaxed/simple;
	bh=7OzcMU023CgaeQUIV34skEOq44bEL+WLlDIZFq5hCjM=;
	h=To:Subject:From:Message-Id:Date; b=YMJNJL/SLI9fGxRF0Rhw2wEHXiZzz8eztuU03yBQqIgdEQsArB/Vi+XA272zGokgxhbFM8FB0Mwv7GPlC+hacflZCQxOQ9NYICyeI+b5P8Ry26BddMO/94cC2lI7IyxAZpSThVpKcV6oFTFMQdZsYGB5TI6O6NSSESqozJa3F0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzdnEv1d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzdnEv1d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0882C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755361193;
	bh=7OzcMU023CgaeQUIV34skEOq44bEL+WLlDIZFq5hCjM=;
	h=To:Subject:From:Date:From;
	b=TzdnEv1dBi/mKbqtrGCmdwzTLPS3s/p0gD9CwUmcVyXSULgcvL78N9cPW59mrxuGg
	 8Z0k3lveEe1rwyeb7Vj8GqkVbfjT7R/m9OMrZXwMzYUkjfZvkCIVdFleXGn7DSG1Fr
	 EzRbyPvTygsS7AcKrVELVqqprFZEH8AfAV0myF7Rw74SleDZkWjBRKQm1/+pGTsdvC
	 lctEPOOITC/19LD9z50KPFMUNUxcSybUWaxzGC//doPcLSYxwGAMDzIHNQYFza3J15
	 yDzPuG4LKCFawG13foQCdlMJyQQh62al1r/lwEn/PERmSGX38AHCh1AUHlbuxnYcJE
	 6XoIa2XU2lZbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A8CA0EE9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175536119357.15728.18176636752333136269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76dfaa4a26241bec776d64694876b03924c095aac31ffcb02d58f5211e39b95e
Date: Sat, 16 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755361193
