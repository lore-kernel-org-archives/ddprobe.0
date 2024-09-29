Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F78B644
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727573154; cv=none; b=Z+unbV/EQickCxGSUhVGoqFieuC+k9lrgERSf2KgNZD65mZ2aKuWmOHIvVOBJYJzcL0prJrf4QcWg9Tei6cust6DoLWzixm6YNwUpe4pzSgPVDUuDSKJg/Le2qXcycHatB8uNRhCJClO6EtikdHRYS2hgvpmZgpF+Vrj4ItEWRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727573154; c=relaxed/simple;
	bh=PbhbhjilWiNC0zmUCevCWie6/RqglNjdT+USQ20AdZQ=;
	h=To:Subject:From:Message-Id:Date; b=uS9VVoh9fD39aa5GhQTc4RoKkkbI9FjZx/++Qr9ItEw6N9AA0G202JDbuEl64UXYvIa/Ll9UOC69tdpJ3Yx2Dk29X1UBI5Tcb8d/lIxeq+RfsszEqfC6rZ8yyVgHMcjEjqsrgAPrm9swWZgW6s9IIilEAPMBUV1rJG/c7TgaJDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l5l+gAH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5l+gAH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F5BC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727573153;
	bh=PbhbhjilWiNC0zmUCevCWie6/RqglNjdT+USQ20AdZQ=;
	h=To:Subject:From:Date:From;
	b=l5l+gAH8Z/W9GtaUSImAD12CBkkOrMVg3Ml5F3jaUBIPtqgWUXSsaMd1EyUTVwUIz
	 /4f9Kz4HnC4YLQS5KpuPVFnDllFq9lIhWh1lqdt0da5RlNpdnaORhAUe9uG64qcpUC
	 i4AjWVSgJDootbNmv6yMjVc+ZHE6/6EqyOaQ5N2zeInQ0Wi0oBPgc2gKGMdw2EvFU1
	 fd1mFFHlzTdq+KA0fahXrYLsHwv3hS10l+afooElymktBP8ypsV7aP1xAFT/+/bioL
	 psTLrZ5JYdgdVraMCFzpP79NbyLfVMCbBQDiz6j2q8qtIHkkg9HZhPMfM5uNo43M24
	 eiv00Qaq/uDTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97351CF6491
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172757315358.12209.14156419875203548960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f00a48555fbe86e65c38a49da590be135459420f18ce4d02bcda8cfe47889d90
Date: Sun, 29 Sep 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727573153
