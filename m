Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BB918A92F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778297254; cv=none; b=oCH998PkU69oxHwc/MIShMKlwyAJ3nruaSfP6hbYGJUI3TBRG4xt+bU0090Nl3aLJ27yokN+sNV1pOEiiJsVr90WiMRQ32FYFbYeHqUc+AL/ORMSoXkeckESLm+KQCeD48E/cg29QgWfeVTZU9mWq2LBNgBJbzGqRgPG/v5y19k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778297254; c=relaxed/simple;
	bh=kpelCaa36IxtXcdhBeUHIMSvMHf0x+EKRSMBQRz7pTg=;
	h=To:Subject:From:Message-Id:Date; b=Z7daYy5oBGD6NEBkyJE85QDSKKAFIXG6/BOjZ0EzVgNVTAn7y11tzgGONPZFG/XZmHqN50GdKZxxlJXNuzEmXXFRej5W1nsiJgsZIuDIX1y9n7stxj1q0DiiSMoeKeeQzZMwT8ygUV54qUdELJZrXGY2JnoDDaRzYPrR5FO1EPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7Z6KaW5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7Z6KaW5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C39DFC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778297253;
	bh=kpelCaa36IxtXcdhBeUHIMSvMHf0x+EKRSMBQRz7pTg=;
	h=To:Subject:From:Date:From;
	b=Z7Z6KaW58DLclMW46IbmEDT+Qywx8ffvHPpZujc+CvXyqWbKrtdFCnZLdCsB39RIL
	 a+V0TS87v+OtWdKg9SMCj0Y12XJX+A0SVRDqlMZgE8DRhHnFKvmShYlc7HpPB0Q2/v
	 209jfvBWU1+l6yfaAA1DCYrJU3aJ1MUal1NJOBRIPG8KkQ6mr4fSeSISPwgRKB+uq4
	 MngSw3zWg/pGXNsC94KVJTWfb7gwHhl09usDpOnBZvB6trE+6QZtEPTiPgYXkeyhuK
	 iTpVe0Gew/hBmW11LXARG6qK0QdpCkhzLQNr+67KQ0OahvjJk6nXPMCjHliE+72P6I
	 B0lg7bNQ4pk5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2035CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177829725369.32320.2030631931995692293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 154ac5e533c84925d0d6f81b1ea04ec26558f2e03eed8caf57e0f7e9e2b01828
Date: Sat, 09 May 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778297253
