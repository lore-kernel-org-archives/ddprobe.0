Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6FD263F34
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 02:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786155034; cv=none; b=uu5zTuOzrI5Ian64wXNp4CAY6xPNHxRVc2uFErrtnh1EkTdE05Eb64B5GehGVU4GJX0SoAdk2nBGu3XnVwYJavxYWqPLNsfUUECCpUki8WJ8Zr4W8rs2s51tx6LPfaGcr2Syrav2ZifOPkhBhU/YgyfiQp0wEte6ykgMW7Kd2Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786155034; c=relaxed/simple;
	bh=A7CPKkXuzWC6Fts4/tpK777GeHls6fV0+YSaohkQfjI=;
	h=To:Subject:From:Message-Id:Date; b=DgLuJdkg4J3EGu2nYpOUMrsnEaiFGriW8C1K7MQELRi4/qiwSOX1950NEMfwxfvb4hFbXtIceSFs5HOTJzpTxpZ9oVFMYI1BBQIu10Yk5Xg2bGCGTcZhhFBfQREjSsoAPfAk2ZrS8Vp1qmhaeVrc121npek9lUnqkfRw8KdAdyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWpeW11Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWpeW11Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C043EC19425
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786155033;
	bh=A7CPKkXuzWC6Fts4/tpK777GeHls6fV0+YSaohkQfjI=;
	h=To:Subject:From:Date:From;
	b=FWpeW11YiKbj2YbkADDsrU6riymx0C4OxdCMwrffsdQb333W1tL4Zwgj5Uq0E+DTj
	 JXyQt2Zc2iTEjl/45b2AjxMG/CVskL4XqpTbsrvisds6G0l5JRAfwkTtfggu5cpRjH
	 4ngZPFuu5Ipn5kHjQsomNO9GNetuDSGsf/6paTN2WrjBKrOOdTP4dIIu4oMAIG3i5l
	 xe8dY5UB6B5O+fcheY9OQXKLtXNrVMPMR6XkaqCweR4aEHTJWl3A6ZWuXO8xBjvrEJ
	 6/w/KlPBU2IqE3VPPFG14IoY5DwoOxoQ6K4l8VaIEnwh01UKIssFru6DuL88wIWqBG
	 yBNFwIbah2RxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB310C5AD2B
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178615503369.13534.11609987011216628837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e19fa2133975cea1dc4d7bcd636408764c69dcadf64afba23e30066bcd57c5a
Date: Sat, 08 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786155033
