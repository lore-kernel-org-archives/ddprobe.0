Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402931AF0C7
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736637354; cv=none; b=DzyOYIBfl68NLqBl3Hb8Q1EaqzWdU6PvNeM7oJB+hSKT6FD0oYTYHEQK2JBPWOwSSmITLMB99ydrQiRPuklq6qXSOvPtNuYYvtGt/lPazTG8XS7vmGeEA75cM/f13moRcqeVIftXoKABBEDNYmlxN+mEPt+hlu2XWgF3/xEFAcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736637354; c=relaxed/simple;
	bh=eK7+36sIRVJrpJYT5WzWZz6CACUaoPn1y7Dg6sBu/rA=;
	h=To:Subject:From:Message-Id:Date; b=d6N3xzquIDuY2XFWPlw9+lujyt/LZIw3LuEZR7O5Dx8/nNMXppi1mgUM3hGGFv1Q+MXPtKmO4eL4WBfjpog2rMPn29QM18pvJSvFHXtk3aLmurF+LDSr4EuOs1uUlbeirM3apFq3SuaZ73hB9DBqAIXrDg8daE3YCKiviIfCwH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hKFdsFXS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hKFdsFXS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E69C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736637353;
	bh=eK7+36sIRVJrpJYT5WzWZz6CACUaoPn1y7Dg6sBu/rA=;
	h=To:Subject:From:Date:From;
	b=hKFdsFXSqHXB5ZDWRkLD3XSrX1Q/6oBnj5WQwS3wzwZ8j5vf7ers72VHQ0qpOefXH
	 cuRG7mwVuqpToKD74DvJ6H18utxaz283D533vsfrC+gSRyauqjj58qDMGX0/QmG1cU
	 o/Okb7hn0E9K3yZii3OOV6xOOK0zThY9ayx0jPyvqhdZOn/vXAcr0wfu4uHud7w/Tx
	 XZNybohUw9oDHlyL4jQfqu6oWLNBiVh+NDBgBn6jrvlx4G4xNvk7cgfsTS7lrEQRYg
	 e9/eGL5rSTsaIG+LpKctJU55+35TmsHmLua5gUhKvPgMCAg+zFKpJtcUYpn5jLXbMb
	 jNfSX0F3Z+4Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD9FE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173663735359.4845.12195397621113169959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b66bb3cf49e3138da282abdfcf2d41368c29d71537b0b51f50efcf4ab8f2d759
Date: Sat, 11 Jan 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736637353
