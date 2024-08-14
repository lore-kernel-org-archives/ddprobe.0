Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E34F1C2324
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723669554; cv=none; b=isbr1KBQu+lplcHWTMFkzNH9aO1GESCcRSr6POf+5naZChqjXdEK+VIBKXQraG2eXp5AvTXkSMgbx6gGzgsD2CjLssz0WpbwSDq9yzwjcUWiZOaubWD3c/YHhdr1vQbtrxf7JWC4+KFGN2998ThfYY+P9EByrYZ3pEtsxRVJOI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723669554; c=relaxed/simple;
	bh=D7O8Ig8/ddfmEEoVOLoFORhe/fmgf/ZAXdT2705ipfA=;
	h=To:Subject:From:Message-Id:Date; b=KIjasmzuIgcJBQFOQiQEciTNCvO2CI3cwqR011CSZHtK7G13KKerYUn966k8DHEuZUKABibSYgD+53ZtzhI8b4OkwrhoiCNIzCW7+DwzHyFPsCGOuPy8/HyABEdcqfWhVEyWYeHBMjVBSULrd875Uw9kg57Wd1bfTP+0JiOHkbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUlmX6GM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUlmX6GM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DF9C116B1
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723669553;
	bh=D7O8Ig8/ddfmEEoVOLoFORhe/fmgf/ZAXdT2705ipfA=;
	h=To:Subject:From:Date:From;
	b=bUlmX6GMYsmKKHq1yNUxEuDRuqroarrvU0uQ5iWgdsY5As7bntYb8Ql71qyTn2FRe
	 oZZASuHTRvxnvIKnh4QRCNLgcdTqs5g4oAoNyMYwbOVI8u64Ki6pvQBmicNwGIgNOB
	 QAxWKJzu7wHfYFFd5iyJ0xo/j0tlMjGApxky8d4zoBJyFF5jIVQfGI7SCbEzV3VHw5
	 HUKlN8eRBKMp5H8IqboLtIP43QXftqH90Al2CdlLPp0HUQ6ueiuXyQYPq70268+KdP
	 J0VPk6c/Q0ffBgzFeb6ttO5AzPIWpZ6Ub1H0gIAL3RZCUdpAZbO0WOuSHGoLnoVwer
	 r+hbb/KIiRmOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94953C3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172366955358.30201.7303081528226434724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91aba614e169f7e1bd0e22b4ba4453e5f746a8244979763edd3806ed67811718
Date: Wed, 14 Aug 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723669553
