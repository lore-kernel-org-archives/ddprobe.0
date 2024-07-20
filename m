Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5704F1C27
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 18:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721499354; cv=none; b=Ka5gemd4KNbbjNQnGUPLUbwcf+OcUrFZx2kjkRiume5cTNwp2cLK4dXS6UughPZJgQSipRZlttq7MTJl/x6KwPO1VSFHfOUZX7FmbEfW5R3AY8fsohl/kOReJNB9g0Z7o4XRa0KtF/jqD1G0HNG3yNjYui/ASfSSzwKzYffrpDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721499354; c=relaxed/simple;
	bh=PKSA6r8LNQX1plyF3RKh2jNpyDZVHJdhN3ycHz+6xZk=;
	h=To:Subject:From:Message-Id:Date; b=ezpYLTBolLLAB1UEQp01ddjIelz7hsIv++UCQ8/XycwZ1HpU22xXsVNYu8h7acPKYkirwb4flcCHYhQd4N2cS6gU4Sf1zmVSb3ZuzxEtUwYADiWB1WbXw0fel4lGg1kB87NBrJ3FW+DOYR5pmnzziydBwyQmOD+4DFZSj8MjXQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MgNePFGd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MgNePFGd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F95C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721499353;
	bh=PKSA6r8LNQX1plyF3RKh2jNpyDZVHJdhN3ycHz+6xZk=;
	h=To:Subject:From:Date:From;
	b=MgNePFGdL9Wgmf+78tILLhAEyt8d7Ab1jNFj4deduDHADHjRwpCK17dK1PbvaGLMT
	 OGOhY5ydv+2lE08dgU1xRnPRuUhb7UOAldq2NMovw8CM1tgA59ykDulxgz+jW8k0BO
	 9Qd4YXyu+JiW2FpJSSvRCpQOWuzmpEiPovFhS5x/1iPLqFe6rtvgPaZirwMBxlHJTW
	 SkfcuKjD94XzQ02tpxAv8RIeG65izeIxFjnUTYrEZkT62fT1EpZyeNSoZu/5/1+Mwa
	 oTm5qMW6TiyTxc0SKxYo5zDI3kjT911qKFesv6SH7abnfgYDqJGXaihEgOFLHkjZth
	 c4VI+QyVKWgmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA95C3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172149935367.10516.2532875249395688798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e98292f3d32f1860f6af8ed240a96111f1fa1035ecc395ef19ee923901793af
Date: Sat, 20 Jul 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721499353
