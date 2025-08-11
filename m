Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3173882866
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754887194; cv=none; b=G/UwYNYnJgJCWpJQSEUwY5PQMQUgxomUNSh8OQN/SxuTB0skgDDIA+Z0325X491zmYYpqIYmw1s6foMV13pfchv5ljXat7L15GBJm9KkzZg3XVzxobEs6SrXrVxgDBvrukL48W1ztd8eU+WOXGWZnwiUoftDC/x0yASPAfThaKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754887194; c=relaxed/simple;
	bh=itT554S78tJIy7tKd7cpTfs6+3zef493TWAsKtGkpCU=;
	h=To:Subject:From:Message-Id:Date; b=DBhNYfA0N3JsUApD6Z+E3ASJhwejooJmXbGqVW284wffc/WIfw/qq4o8mydswFYedFEVgJBswgz7qBLJ8Rh9D/8Z2ct70E1ykez4p+mhb7P7f7/YDt7b8EsxEBF4eZQawxy86eKtHEwGLBmTCpwSUsEWbhzml+06s5QnQephRJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCx4hu6Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCx4hu6Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AF4C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754887193;
	bh=itT554S78tJIy7tKd7cpTfs6+3zef493TWAsKtGkpCU=;
	h=To:Subject:From:Date:From;
	b=XCx4hu6Y/sXF3eXTb2tmAYXTBlPH02dvt1q0y77QbHmtzvvQbOF/f9nhkfoVWUJqX
	 VxCmI+q8ZdYScS5eR2yobmOjGffMpv+5KlLydTtSGI1lmpDx+Qi/FOnXbxjLckkkro
	 6vXtkdF/FN0JIJj6XYfCl6eY9byg8+IdWO0DEyjs/sPBtCpiW35XZsYGDReUqh56kP
	 3sIjJhssp39VhVLp9pt8eCql8I1kvkPU7gHY/1RM8EuPcHwW0mKu8MWzXR9LWTVBWc
	 C2Pg0VThunCWacX9+zXo4xEPpdKGI0H5dql4A7wnsYy8tJ6gXvXdZzGvRgqLlbrv9N
	 ZwI2myqa7ePhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92299C87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175488719357.22734.2541417753430078335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e47db44a3e24684ee791db502dc87b1dcd491b759a2c4802a8a47d8b0b04095d
Date: Mon, 11 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754887193
