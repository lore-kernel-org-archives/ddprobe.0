Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAA6036E46A
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 08:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768291435; cv=none; b=C4z2A2oy5pDBzg6gVzfpaji+TzljslbvPQUUuSUQAWPoXvME1RaPdNe3OeG6LenIk9vfrxkUQgIE88VGskoWRbIBKb+TypAlkcREQbYzWm1S3xSZFMW23x+7CGEPzov8bUoEmnGrOrcX14rTkDiojF4maTUUg/yirNIp+BjPcb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768291435; c=relaxed/simple;
	bh=3Jhth2AeRDHNQq3w/Bxq9X+OaleFDLfBqnT16K1gr/8=;
	h=To:Subject:From:Message-Id:Date; b=au0/NO3V698dv+X54G/k/FfcFKP27WhwV7GQwXPr/7sODL3i1Czd97MAY7y30mBVSnrjXUDG5Zj8StgFgFjA+vdb730Unt/7YkByrghrq7YFy6RyKK5QUPcBK4t7iz+LdFgLnXDQZIfCWidq7zJIAyC+BfEbX6NWXFxEjVBUR4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCTm24CJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCTm24CJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33B7C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768291433;
	bh=3Jhth2AeRDHNQq3w/Bxq9X+OaleFDLfBqnT16K1gr/8=;
	h=To:Subject:From:Date:From;
	b=uCTm24CJAy/wInE2ODbSTd9o2yIlH/GWPgxu2BmwFNy1Cu0/2suOxw26s9HA6my3J
	 j0TsxrggFySxXy1oo6yO1oM4D2GK23WdimsgT5TgipgT7ac1iNGqdo0ukBeq7Dlp9j
	 45MCIV+AV81Uqnqzjs+aNqY5cnPPhhsqilXiwnoKt2rnmpowRnQmkaUFm9XtccJ3BO
	 k3KqtlEPMtisS9Qd2eUhHqsILprZSvr7abOmUei339TDqcNsJiNAYcgsUZBzWyWRoO
	 8HvRP2ptag1gfAxTt/SxbcaUHXF9eJWZR5NftW6N9iVfX+eZS0tKnuzLn4Cqs1qq4M
	 NPevk+pdbQ0KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DEFD29DE4
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176829143360.18575.2036439540259491841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa8a06f2b5d43bee4755b1a899c6fdd7f4ec82efe00d5ab88634b9b91f568978
Date: Tue, 13 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768291433
