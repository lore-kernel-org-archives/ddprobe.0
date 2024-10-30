Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1EC1BD9DD
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730310954; cv=none; b=b8dOlZwAsiskxH6ip7D3e6hI8AkE2smdkUur1IYsZ8qdidEYLLQwi6pNFlE4fAGGMnPkZ6vETYkuXitVFs4fuG6pzspEeKUjDnjs93tTkAsLrzThT8/ZukbcyZBkE8WPgKTN3qxeFSmpGurMx5swmXZc2NHzkehMfzK0Et/yxg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730310954; c=relaxed/simple;
	bh=xPjcaCez7Ki5jRJOmC/N5xJS3C03+F1c//uBWaceB7M=;
	h=To:Subject:From:Message-Id:Date; b=h3VhHI/nMMriCb9Opv0ZXLDs9XocwSMbrapS7/kA7RFPFZqqeUeKb81RiRPtVMwuVLw6dubUgMFKerLJ/IIY+d8pDL3ZD4I0RendqymeKFz09NsK/QsW1wFAt7kU8stdRvojbvOSaI4lLgbYvUdOYGf5JW+xrmy5NBeaFczWdAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fggWyddb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fggWyddb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55CDC4CECE
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730310953;
	bh=xPjcaCez7Ki5jRJOmC/N5xJS3C03+F1c//uBWaceB7M=;
	h=To:Subject:From:Date:From;
	b=fggWyddbiJZ/yJ+SlWLXKnPRR4+Orj16xRkvf0rs6A2T46Qr4/L/MvXXgSQLnb3vl
	 z1/tZyFD+zz91eUEWQHuwKYiisPaPVjW+g3H3jUZ8+p8heh6sd9Gx1SJG2gCIWg6jQ
	 mf8Cb1cuq+wwSowAzh8Pj2zLo/3wL0uk97pS5dn95sCEMDBQuSDDa1b2c9YRBD7/Dt
	 jf/S8QHwBRCDhCAyVNgmXgf1yEX9rdtK/DjLzfl5SBnt+vtQo4Dw3YvWSrGO2u5pS/
	 fDCRNSp5QcCYYaSYrfjRTvLjFigpxnOuCmXC8pOtuiU+F6+kpAs+rW39R2ksIN2Lkg
	 Rb70hYmZc4Uww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96667D6B6B3
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173031095360.8966.15990613331161906973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d2a3c11d6a31bdd12ae5a3a39f29bb5479e90d3e68213d86a4ef13e04b9e037
Date: Wed, 30 Oct 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730310953
