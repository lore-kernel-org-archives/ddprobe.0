Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F642D94B0
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762083594; cv=none; b=RT8B6jXzC2cEOmdxtCe28Af+fYil4Bk8G4YXnlmBekyY7mRZ7qJHwxNx2clzVl9uMtaIilVlDZxK8FVU5wUDmkcF7lXHy5N+CGFmjV5u07Qe8DsQds/7sf++Eabr564RlIVayKNaDVWdbr0IyV2CMPZJLG5YMRi301guRokyw/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762083594; c=relaxed/simple;
	bh=Rm2sDKgc1RzSnDELtGOZAWEPKw8l6IFLFk0iG2Z81rA=;
	h=To:Subject:From:Message-Id:Date; b=A4Q4qE+efgAo2/DLlygWgCk0f8yM8R5nZSLKq9RXjmIKWfuOBdd+I3Sv4UdyFdRRZSOnSdCfRcc7PIqLDAhWVho/nC/9ttzbG+ONwC2ek0bgeh7j6q+5ySN0/wBQGvgM9Jetfd78C+15DqAUBUzzXSaphIrI+EZoTS3M3lHBDXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCytKEvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCytKEvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EE6C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762083593;
	bh=Rm2sDKgc1RzSnDELtGOZAWEPKw8l6IFLFk0iG2Z81rA=;
	h=To:Subject:From:Date:From;
	b=jCytKEvR1rNnkWC3P9g/aU8mbtFHN5m/Ss2o1/Xjxa0BMMB0lxaZSPycUhayKoLMd
	 om8bXfSZukkPMOSPzbP6bWhAA1ZmmIsvCXBLEBvSlediTuIgxvCqfGY0ewTvgc0b6X
	 SKiCVahFQKJwXvprtx6BHXnyu1EZQdvitPJKgZHFV3QtfDZz1NWZr5HKxw9O3YoWqv
	 kjjl2qlv09ydT+Uq66JJze3DWeCOaJfB7dVJt1nAm7+/QbcE137hgoctlJL+qMtPWr
	 snyFznQEYCIlkF/fvXMzT3VDPud9RholW0Hr1/5/pqG1hbSOFx7feGQ5yxm1yL/dAI
	 AI25zsEWWhTJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93338CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176208359359.21006.3125750455041470020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed3977d26bfd24bf038c0be20465200f1b948144e1a7d3e3b85c81ee7e88800b
Date: Sun, 02 Nov 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762083593
