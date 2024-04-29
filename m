Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6258B13CAA5
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 19:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714419143; cv=none; b=N+XjOtWcScvHzqFu2fHCkybSP/O7WE6o6w0R/Z3Bk6TuLwEJSDZbpgJImJOl+VhMDwTM7kL6l8DUXhxB02un4hki04KUQmia8Nk79w30dW/gUjmqUyLN6xX+2leaqakYRPwqtHTwEbxd3tM+0jOfo70vvOvPPGfLqrsAm9dI7vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714419143; c=relaxed/simple;
	bh=yh21HZX4XBUMQjAmkvRAtUh8kYhCcn1v5Egbsy3XY1k=;
	h=To:Subject:From:Message-Id:Date; b=rVINCyJAj4rInE3780UYBwQoqFPdr5Z/PGXDNnRzgez8GaxqPJELIme2t2ArFn5U47KB9Gtoy3eAnrw6mncSNPYdxLljPbByMB/TnGTkxRYYS01jIxD6+HoWqPKN+wuTe5EFLSi5gEYmP1SeF0NnhplmFzRXvZ4/BJbr5OcVgds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jruS7TAh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jruS7TAh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E66A7C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 19:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714419142;
	bh=yh21HZX4XBUMQjAmkvRAtUh8kYhCcn1v5Egbsy3XY1k=;
	h=To:Subject:From:Date:From;
	b=jruS7TAh4JqnSOFjCEDhgT+9JhKPbveIeFG4VDuZ2wFIy1afw3A3zBqYmx3uOPP7I
	 0ArTAvf512fuhxlNHWEBFq9iAbc53DZgsta2dS09MZjLm7pTmbZ5fu2She7vIQqDjT
	 H4NopJCHGdtBAcBhG6m8FzsQk+HM1YkcTTZUTqh5dy0bXIDiszuzBtLdoly0MUsp1D
	 mC6HGtA8ZLE0z26KHueR7waBBFqGilx943a3uFSnPcy63uHpt/lBzUQIQFBhGgq7Dj
	 2cSc/Aq8+tYQsgvydZgBtKotrnYEVSvqQZ4bfDpisJrDlPRxat68AG4bwhJqMDr7sq
	 1rjITox84KuEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D39D8C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 19:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171441914285.9508.4952260582577785692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53f70d82bcb6091ebfe3380703fd7565e77009c819b190634d181f78cd5528aa
Date: Mon, 29 Apr 2024 19:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714419142
