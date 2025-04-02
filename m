Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479071C3C08
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743622194; cv=none; b=VIZh95BpDg2DHGSpPssjjWrU8L+xrJbJdqhATUXhrgTdngEjHPbFQj5fE4Q97gwE+weuOVjXbObqeXdFAViuixT+u/3qHtwhqFNJY+mhKzJ/In5vXW/Q9vwoWMx4fiZoalSGMhdgTlvJ1hEAUDPyBPqY37+e2D5TDmzn8Hj9vgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743622194; c=relaxed/simple;
	bh=K4EB8wmYVjCMjwh377oIKvyxBXr1RKRD0aectohIr2k=;
	h=To:Subject:From:Message-Id:Date; b=NbmbkkvEwbWCtrJg2e3Zdw9kamVFY5dV1S+S4UIAcgZ9o9u+Ah+YkYOwKJZ5tZzkke/4sEgIia9/ixUy0ZGFkDpKEVyz844bVwRDUWIHRSQHksbbIEDvHAei4U0jk1gaa+bQ7xNiHiZF8FKnyZfe/KWM4CqyeuiSKxgj7lqVMns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nz9ise0B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nz9ise0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9652C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743622193;
	bh=K4EB8wmYVjCMjwh377oIKvyxBXr1RKRD0aectohIr2k=;
	h=To:Subject:From:Date:From;
	b=nz9ise0BD0OhogUtFsBhx0HRyEfSlpVlX5w046aJwVFcPbArJyUVLp6WNKhz2j7ZZ
	 0LEIPqDgLVs7ntcZ5rd4L3CBb8BckGhK+O9/wABTwjB+wb+h0IieGu39IvkZLnZ51c
	 8yzd+3TpIoxoQxlacpwQnUZwxHV96Dunz0rtTkm0nBCl7nekoMJcZcglzi8GAWS1SQ
	 J28/yD9PC8kCHK/hL1t/KBPzO8uWYFsrpR8eRC3zib6Ob1yjBIVvRkz0sG0bx+eyuM
	 UflqqeIXvYDpVHfFN2FglRNiZ9TeWCZQJ2ZbugLIcvSuEak4xD8R9cBPiUgnNC6f9z
	 1VcSPSTMXmXBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FCE3C36018
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174362219360.15214.6803046590179223030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a212bd5f198edb9780e6352f1a5e78d3d3c7ccbe8d28408410f7c484dde2788
Date: Wed, 02 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743622193
