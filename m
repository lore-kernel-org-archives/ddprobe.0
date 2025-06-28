Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3001A1E1E1C
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751110795; cv=none; b=C7/uMnOcMD5BJnuHAp+DSIWwF1P+iLA232mLsWf+lOqnoS1I8EJ4NsWLE7dWHQu1F1NjrSHfw6fodZ7wu1y13XPKbwXJIXjAuIX0Jf+xiZO4t71oj0Pct/ediUVk+4Za/+F6tpyJBbwYRdxah18+TcldeK/0CmC1iWTnMPC9V9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751110795; c=relaxed/simple;
	bh=k6C4NIx6WKhEphU7W/ArsPsaeavthKCTldQBhLeTQdU=;
	h=To:Subject:From:Message-Id:Date; b=Lk47CsQrrMlqnM9FACw/EPeptEYMTcpExn9ea+9LC9moHyZs8Wpnb40eCZnIc3RNe1PtFv/DeWrKq4BYBlefgFWsW1RHwNnP7utpZ4+vvYdYR51a+qyvkpOrdAouErGYII47D70fdIzB/5/owIdsmhPQM/Mpejb7oIyQkb8w3r0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KG2MUVeg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KG2MUVeg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD02EC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751110793;
	bh=k6C4NIx6WKhEphU7W/ArsPsaeavthKCTldQBhLeTQdU=;
	h=To:Subject:From:Date:From;
	b=KG2MUVegsQbhz2cG2OA+zHDhpHJc7i2EAKkCOYA8XAmVIvTFOISp5NHeoRhWBNt5X
	 b+f/hYMRoCjrzN4feqvL6AvN4PADpPCQTCMIKiepxUaHbwk4tUe280qbF/pzGSzyNV
	 t67rY/vBppO99Do9jYJ/T20NE/tLAE6i3pJilqYRTdQ0eMQ7aAOoElWEBNSJuw3xcD
	 P/aab4lwpqM3xDS6wFAE2sNcMb3SBR4Zk4Wx/1onptV6My1DaSXQz5dg0xHxTxbsum
	 JTbk72hVGh8+sLOpOdGFW4RnGf/ZnD2d05hEa2DGn/RHczdmmL5/PoQCBxkj+sZeiZ
	 +4IfW9/SZTO8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B058C77B7F
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175111079361.557.12253485902166772638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0b40c3ab9f5dac023ca7a297252d688d18c467992ce3637772948859a3dcc0b
Date: Sat, 28 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751110793
