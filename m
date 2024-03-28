Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E66AF2B9C6
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711646297; cv=none; b=aZWqo1dVC8+6KNCfLKBMo5lqkXLph1vbOYBGlYBrcdLmVMar6xMxFar0qYvcInnjAY421vOIY2linSpyShYc3eb7iP0ykRFEvlYK11plxAP5sB8bnYLNw+3vuOFOxrQkq5nfu7tFTBMFVD3d/wqxJ+gTECF0WjGDhPD+1urx0Ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711646297; c=relaxed/simple;
	bh=QDpuc59MyF6yFyEEwxzvBa0VyLuv3xecI1HXDOEElvA=;
	h=To:Subject:From:Message-Id:Date; b=emQ3fi9pf6YJr1xv/cKcpjNTYTrr4wl3nDfe2RhX/pOwKdJaaGd1ljrz0kZr03s9hnkYpVkoYI31tIxjoNKzhbQNQu/YaK2Cizw9EptR2EBCLYp5b7OuIn7oNpAZkG+uzq2t0VQsMivBb09JFY0ukG7EdP7FdPQC1XssZvDW+8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Akgb6g4o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Akgb6g4o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BD18C433F1
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711646296;
	bh=QDpuc59MyF6yFyEEwxzvBa0VyLuv3xecI1HXDOEElvA=;
	h=To:Subject:From:Date:From;
	b=Akgb6g4oxvC17KTwAsalV5Wfo3YWoLU4DLnuiSVQDORzRtnPVzqbItfPtWH6rNZx2
	 kJnFj9WLVcyWzyBd3Vz+7726DEwcv3pBlonuMgIBD8yOC3PyDdf33pXvl0Oiqsvk3n
	 xQsVWGhHkL3HBr6avaH4M1sqWjBKTgmCgk973c3w8uGCV6mtA/H06LqQZedQiv3TeH
	 sGI8dD2LPYxLZnugFWyEyH70ZA8HdBml5E+axTUWybstjAc88KT3tqTOzt8amEPHUD
	 Nr9IjpdLqfsm5SVjY7K81spkNQ8Aq0vPZivVxxRQDiMGyvPj2JXWtTPqyANfdDG+/p
	 HtMasxqZ8kW0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6511ECD11DD
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171164629639.1413.13472198474874456789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e936f710cdfc04437ec5986b5484f137dbb4b156a84272043e5f3a99201dd604
Date: Thu, 28 Mar 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711646296
