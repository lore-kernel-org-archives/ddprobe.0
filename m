Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501FE19F40B
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791601234; cv=none; b=OLO25XIA1WTYQbv5/UtCU2gusq5Zr28r7piPCCGENX9syZOBAf93YA/G6D30o+oxJAmq/XqoitaBE8wcAe3iPU8HLbabNQvoldSBrh8vbd90UtveIH4q0uIOPv5EoK7J1Q99OVjCwSkEL2xZb5LrNEXLBUeTST7KTielNgZHeC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791601234; c=relaxed/simple;
	bh=6RZhNcqqXUqDVESlR9vQ9Vbhu8/X3ZBARXw6Tm7BCKM=;
	h=To:Subject:From:Message-Id:Date; b=BkWgihyaZSCtjm7HyQZ6xCNx5iHUZqioNlMykSHlKyozM2ZnsvXnZ2H4gRTcvCWdh9sSicu/aBb1OoPVPc+0fsiMCaJJbWIaNb095fc7UFV5SNnkfLM8d5dR77kvzX3rghWuJ5nERW0+hOeaJy2epTv6ei3cN7noJoxnawxDveY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNxSYhgL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNxSYhgL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB952C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791601233;
	bh=6RZhNcqqXUqDVESlR9vQ9Vbhu8/X3ZBARXw6Tm7BCKM=;
	h=To:Subject:From:Date:From;
	b=hNxSYhgLraSbb+ya4cAvaCOyZ9UQTLgzhRAF+qKJlh5eR031dNjxo+IFzUs31ioQX
	 WjXDPbNYA68Oq572Pc6evQ+2GmvKOeELcTedoQEWv68Jbe9ukBN/Sv8REmRqLMOT1q
	 Np36eg3PT1CXeG5ed1Na4hoMiwlEVa2ZA5QXPZi3IbDhuDffjnuCYvJEYEH3vHNOD0
	 TW4duZOyZ5qxnNF59aJpqt6UjIAPetk2Di+nmtMH5xhY9bsx8WRsczulUXnkQMUD7h
	 xnpRL5DCxTsp0YwZcyWqr4zLTj7nEZxhS8fjIBQElloVsGOShcqYrxT1MCiZ2XbpAt
	 un9GcArTV0BPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FD2CA9EBB
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179160123368.29526.8101632059603074717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c4b4a77545cff913a150e94e84bc1cb986d221ecdeeb669a91bb053e83ccea7
Date: Sat, 10 Oct 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791601233
