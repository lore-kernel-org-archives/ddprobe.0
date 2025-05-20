Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354831A2C11
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747708194; cv=none; b=DfzeR4TW0UZlok+8ecCMBxnAzWmezkFVTYfIs1jgT5GIWb47r7N+30IcDQXo1xpwWWFIzGiOAk8fMY3Ma1fXJGpeDhkFODRfuQmluEozSxWkYvMAdo4xBnrDtgoeDzhdMkFb8wuzJn3tMOtLOAbBq8zrBabk3a0D+LSOiHzMekM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747708194; c=relaxed/simple;
	bh=SrUHkgkfhuHbeGxHCyJnz7uckBZqYvGhFKND127LW1Y=;
	h=To:Subject:From:Message-Id:Date; b=ZpUFb89r4/HUiljZibxkMAEVbEK4VJGLVXI1Z8fGJmLXpCBOqA5cVMsX397D2jPvLI7n6duGsikQjAEJuu7C/QQ5260IMLdVSuJeOb65rWXI7wDEDSg3DWaqoWbWR/9GyD/MAbhS04xfPH2j5Q49qUMp4aXth39elgHhtw6nAGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptIZ5CKh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptIZ5CKh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0CEC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747708193;
	bh=SrUHkgkfhuHbeGxHCyJnz7uckBZqYvGhFKND127LW1Y=;
	h=To:Subject:From:Date:From;
	b=ptIZ5CKhc5w2BTPvLQ5DwIJOrgk3PFFksIhkR9sOAMwgGlcCWYLtt3ZmgSsjfK8YT
	 xGRh0s5rFxwHFql9LmYF7E6z69ycZycX4lqST0tNtU5cyYL05DMgkWGcjxv8H/p9ty
	 BjCNyWb7CQAyJVl+01ygg3hr2BpjX4+wnLDlPtUPL7hNOwdrmLjxq404NQhkBA/zYj
	 LOYQipF5qt0KnQm+3Aqr3J7q9JigG9tiBKUV3IfLjMKN03ojhz+/6IMMzPmVFOdp7o
	 FK/X/xAYbZSJNnTO2MIIE315lbxeEJIDC0gFvhaE5uD3QK4yW/GuFYWfPdou8WyfCT
	 MSeXHSgH2jfjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DBB8C2D0CD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174770819357.30582.3422530692248744996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e796f93c2096263a0366cd5ee546560f0b290b964df792c080fdb0104603d693
Date: Tue, 20 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747708193
