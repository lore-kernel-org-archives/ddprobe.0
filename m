Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D480032BF5D
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778277453; cv=none; b=CIyAvvsLy9MAuSLxBy5JFOId8343lo1G+8Td7qQBW5HFlnSLXSKIpfxqCPeZaBJebPhxdRldVitJ/2dtug3zM/7AIfa2Z7LWIfnoz23nIYeiZ4YQQr0THeBy67kmJyxZjGvBYTOwsankcj1RkCSCKvdes1xK48oO2UcbDPffY18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778277453; c=relaxed/simple;
	bh=0GcGsXSzammQUya2AvSJrOQ3kIKXr2u3Whdc7nKKpgw=;
	h=To:Subject:From:Message-Id:Date; b=Tacz/foJveAPSPmfi4GoHe0I/nyjXRwTcbVma3WUFQaeezqrsm5Eb6g+W0MgDG1LDdlv0TkpnkOsEif2KTZNi6n8VRQzBk890O/qZ4XLLfNzKUdn0Aj4IX6XdXd6H0IxvsXD0zr9xKgqmwL2q+WjufwsB/2PUSyrLA3leUEJoCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msQ6lnHC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msQ6lnHC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B91A3C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778277453;
	bh=0GcGsXSzammQUya2AvSJrOQ3kIKXr2u3Whdc7nKKpgw=;
	h=To:Subject:From:Date:From;
	b=msQ6lnHCSnPoPrT/sawtYAHPpEwitUiv8uldIAqG0vw26AG0Co1D/HWNOgXy+VVHW
	 cPK91kgMqTeICMU4uNncjtAPXHvydtg1j8wyefDb/Hg04RdF+q2bg2tYHjC2F1Icpm
	 QEWz2jVmO6nH2MhOiQR1LM6mYU4ZmELTrOE7PQz6YO6gGMSxyO6CMb93ABP939kX2x
	 G6cp1Ji57aAMP2LKOUrz9w98Z3pDWkA1immiTBCI0FiUM86dJKnVrfD9Lyg6hWRku1
	 2Fxtrq/v+/54y1Tbg+bVTY4V2CsDGEg6RdiVb0zabCFbTeV8FOTEGyE6tb3xazPOr0
	 RGL8EyhOmtbYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FD4CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177827745368.28719.2761296617207856444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd93223aadb935b5dfae8e3950cd61e7c454c71210aab4e639c3bd070bb263ac
Date: Fri, 08 May 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778277453
