Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E0F52517A0
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752499194; cv=none; b=OYIwjgjqvMZcyPZyML5g6UpE2uVVO2NzMfT6EMyMviURxWXALIqqklD3svoQ5pagjTGSIGK3rNvxRPlUd467u71qw2WH0ERvmFjLfDFxiVHZsUgOg05p8AYxJh8KS1VgJtRRQ2vzaV/CZBi7QRrGs2oaT6Rz1YH/BJ38yOgy5Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752499194; c=relaxed/simple;
	bh=wdEkLr4WSBmmBcDKIra3r+oLRT/utNPiPNcNI6x4gAI=;
	h=To:Subject:From:Message-Id:Date; b=LhlzBPEx3xRlIbSqr9LX++Ah3pz2JsQbX5r+VUEQ0n9w8ieV4MUn/XZko/NmHJWWJ5+wNdBNfEqDH7qil0555LSVBKPiAF7T/SlNI3cuB8h/42bCcojrHGWOSfU9ZCOEU0gzhsLKDB7RKRplVnZl3uzq8GDmiSKWYgFM4LyXwLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXMxs6UI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXMxs6UI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0478C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752499193;
	bh=wdEkLr4WSBmmBcDKIra3r+oLRT/utNPiPNcNI6x4gAI=;
	h=To:Subject:From:Date:From;
	b=SXMxs6UIWopIAQGkVbKmAmdLoQcnzOZfKszDcswDNQWXxVUJf59mutSlYz9dW6ctG
	 ArhwExEJpdM3Bql292W6kS3+PshwgcOzQp2SmTy9pdbsQuKOAOH6niBETs6JIrk6bd
	 Gxb76XVugj8ttam7JvoYDi1YrRsg7E784XJgNNbJCc73bA7lLelV9iNwD8LeWuuc06
	 4DCQaTRRe47k7tnrNijP7P3ThZvI/zZtZbuhh0xqAEi+RobfqewZ96puEZ4a1Z0kwt
	 4smQbRaLUq449dxClkhzCPTMODu79pjntNvF3PpZ5i5GD38B+2EFIEfxEz46tsYtGj
	 JGAUXqfm+rXWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F668C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175249919357.26899.10162299757633462196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b49d766a51c2839bf0ab09bafabb4f446b84cdd40e0d3f08554e1226d7f2ef8c
Date: Mon, 14 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752499193
