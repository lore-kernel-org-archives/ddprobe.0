Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395F83234
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 15:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739548134; cv=none; b=a1tFL7iuOIK8XIooXg9sVchS209PCcvEYkGc5i0CSEydWeYN5ua97AC0bTV9X3OvD1VQY7MdkJ8N/npJLwvcNZCxtRB0WDaCE5TtExB+e43D8IPFwp+PKEvkeMHjOSsSW90aVxf93yjDSusig1T6s/aRnnIBlAiVcD2wIWKfrf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739548134; c=relaxed/simple;
	bh=tW4Rn3i531C0+MiBtK1ExjxUT+gEja93ZGQ+sOjjDLc=;
	h=To:Subject:From:Message-Id:Date; b=JBAYveds9S9QhQQPinvELne2GYtTQSBVrTczviAzmiexDxT6VLPGP+rqYU4I8Y3oJP/IWB/OlSiXdXsfDBXvGSyiod3uXEHB8Qbxhr8i0ZRLww7cKOjBVaTujJUSVGKqcJG03FrtgeiqWCcjbPZgULuX13QPceuk2gVCwwqGci0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYZxqGn6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYZxqGn6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CD2C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 15:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739548133;
	bh=tW4Rn3i531C0+MiBtK1ExjxUT+gEja93ZGQ+sOjjDLc=;
	h=To:Subject:From:Date:From;
	b=gYZxqGn6dII4BLkIcpYum1W2qoJBwoGjh3Cc+NFGeu7GbsVq6faiBYCF5hU1udj8+
	 5L6ahjpHbKQdBvUC4o3ROSSBs9jCUTCo8A+qde1TZi/6dUIvan9YIp2Dal6HjwiRur
	 ipm8NuppVwZQrPXQzA0RwN5ppHTYqxh64WAlBVZMLvTQJMPLoZCPU1PzFpWBryaTal
	 BE7VVqmhxPNDXTBB8nWeYl9dpLqMbaje2qFF7T/3fbbzdUyuV2S231rm6dULgMJCEy
	 W8ZOHeSDfns0/dPmPojVxR2Rki5uGBXthm7sb4aPDJTlQV4n3qT/emfuL2z542oXSh
	 /i6WYwk0eTgVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5D45C021A4
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 15:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173954813366.24675.505057314333723001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3b93c981347d5865a15a8c0ac9579ff8ffe3685eb068a4821c1edc23d883d04
Date: Fri, 14 Feb 2025 15:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739548133
