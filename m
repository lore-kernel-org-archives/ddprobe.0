Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318363B280
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752123594; cv=none; b=nAg8ctAOidZGQAdtzCQYziZpTlomzVpzYq+z25MeuvGuJuKm6KCtKwakIbFBIIq8BmitJSnBjE4Ze2MXm2xEyvLov5af4HGxpaSIi9ARevBQI4eAS+DHje4XClPq/kTyzBP0GEJnA3sGo5Qm92R725kcBXJQiXsDLktU/2noSAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752123594; c=relaxed/simple;
	bh=DNeGOakkfli9Phw3qW0vDkAEQkF4GzUc0MF9Vm6LbAw=;
	h=To:Subject:From:Message-Id:Date; b=TLxSz6bIGLqXS4ZWmqoYvIdJWHLiuTlNoinApsSxKZHd5SV1vQ4fDpOB8RsZZu5CzGFuXJf0hg6fRPg3Lqm4D96Oo29s8dq4KCmzbL6sbqWquImXINEoGSDkLujjBn428OdpEqEo7fOxUIZnYSR8HzKyyjLPhzeMf8KR4i47iz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5BRI5Ic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5BRI5Ic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01D5C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752123593;
	bh=DNeGOakkfli9Phw3qW0vDkAEQkF4GzUc0MF9Vm6LbAw=;
	h=To:Subject:From:Date:From;
	b=b5BRI5Ic1ioBoXwQHfhYKx52p6ZB0MBgFmLAjsRuvaYQXUinEurJMSB0sdLG/LHoM
	 l5rC3OnmpVUTZRNFVMARSKHYWZ3y4FXISHb5LdmqYkTSTREy2c9BHWYjAwL1BCR7ev
	 vdfrJtsiW/AHixl981rIe8WIwc3grzmCrTIOV6CQOY6XzBz4icikvS+aV8JnQ0h3me
	 5y5xJfLOK2STvoSVz4A+9LpAIfswnJPemsjgv4bjjKVzJk61HcGoxqIWYRTsNaReL8
	 yfungaJRzXh5OwiXTNzp2dTXLx2Dt9lfLwMJGWFm9qzTyxeCwICs2BmKx/2Dz8zXrF
	 pDK/HKcgAiZdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1C6C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175212359357.20628.4762140529121614717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5c194ae6ed09607793104ffb86dba21f1818ffd8c5d002479a6b679df927162
Date: Thu, 10 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752123593
