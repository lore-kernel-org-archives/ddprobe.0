Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245F51A76A2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722359754; cv=none; b=tXx1gASVO5yrjC+SIOmRbolpFsgtIDRoKe/2JOXw9LqUy3+6QYWJp4mwr4LvAZNbbyTwaUO1rhkEWKXrXjO6GsS2gizwCqTSgpMTxEK/mSVJsx+DtNJQkoXyWY3X9RJO12/6x7TF+Bi0wSLFS+fc1NivfmOrEJ0gS5Wn/mL4yOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722359754; c=relaxed/simple;
	bh=I4NPZ98DISbQUM3XroR2i325Fdco8RyYrUxZB5buqdY=;
	h=To:Subject:From:Message-Id:Date; b=FkLfEs4qwcyf/fgVjYSmxvimTWxfMfSMXtJgOwmF+Y+xs+nzElveYmtsVjVL2rbxwWjsMLZJpk4OX61DqfoNFiB75HCwa/Nf0BCJ8o8Yyq2SJL5whijWhRLWQmA7Q5qmm3UIolVd9oTj5b7kpK9gF17MvmzoIrqkWlLOsnkcCHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAWINFI+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAWINFI+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E3AC4AF0E
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722359753;
	bh=I4NPZ98DISbQUM3XroR2i325Fdco8RyYrUxZB5buqdY=;
	h=To:Subject:From:Date:From;
	b=jAWINFI+sC7xXD754FTf9DZxnPEI0hoJ6rLWraaDztEom8Fe3Y1vk7tJGZu6XLlZS
	 yzqAln29P7et5kWIWr360Unwy9NbGB0ywG1PKuIX3qcD1qo4V25cOWha6pouAn1yt4
	 wNtrQuRUCbjbOQd/bVLv2gD3p0kAIg1UzOVkPwL5vEC0a+XUWisOMG+8d9/0/6Tfx8
	 zrNlNQ/CKLuTAizVdPjVC1JB99O16oaXCt4v4SlsI7/EX6neTe4iVEDRNVrbTG9q/G
	 bRtuvGQKr1L/ebLMJtjZWM01D6YE9AMbQtFuVavIgVKg7k9RjnphjnIh+QDVPxx3cD
	 2Q4PDjJN9z20w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F764C3DA70
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172235975360.22805.10729642374260267243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acbe86200ec0e440082d37d12ef72c33e5b9fcafc5773e3ce87eb559c4e656b7
Date: Tue, 30 Jul 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722359753
