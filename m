Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1342B279DAD
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776190654; cv=none; b=GMM2oEK2TS4xVoUWFRd8H1EbWSgqceKFdt4kEyFHUAP8t/VtYJnQK86yjgchM8L1egY66yrnO7kg4YspLVuYdzgh1q/fNJvKE16+2hcFRUKylnJyjpMtgNQmbj7LuAIoaqem4TuDCJi1ENkJcyFjjoZBogALqMJA9UqPkiKOC+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776190654; c=relaxed/simple;
	bh=0gZiKXGxC3edyrKy3pLgmQyJdLPyGaeJa1mxlsRj/QQ=;
	h=To:Subject:From:Message-Id:Date; b=RdCR8wn/HM6fJJ7KAmJSrLrU9BXL2I2vXW/CoPjjcdv2l6Oy7WqOR5iaY59M8lUW0rDLWLkSeLmMUJb4/+yTouycNK2ctS8ker6ATT08bq5/vpjr9cozrYFanll7yQMJ2jRlm2K2UlLvTKD/te4Xw52E0zJ5cU8cSZk4A7OPlrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVLS8iqE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVLS8iqE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2E6C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776190653;
	bh=0gZiKXGxC3edyrKy3pLgmQyJdLPyGaeJa1mxlsRj/QQ=;
	h=To:Subject:From:Date:From;
	b=OVLS8iqEZKTGIAZXSlBy29pshmD3gdbprBxpm7KPsSNU2UYtUJjYYCmSO9JLwpGS3
	 tm7ptd1VAzNfgr8ocB7acW0oyi8l+x6gualdpVwjyCDrDGTn41dlbl7cjTXoABRO29
	 rjeS57Vjws6QD7iKs9aUpFl/0ZOhdgCjdQDk4oO0/ApIZ5iLQ4kO+dWKRfHCgmK/6a
	 0o8yncMgG8ACy00hT3MFXgHx7EHn3uaxCnma/aVq6sUI3mcRaVQQLY15hJam8dKnlK
	 pB8yjGpJF4aKjW+DXe62oK+KoVaikCOmU339StOQuGogkMAFug/ShsCP8JFAjkRWcn
	 omY3Er9mMnhRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB26F9D0EC
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177619065368.15029.6087142869510777177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0517af96e5986165c3bc14b984095080e065e4100bbef477ddf08db447568ac
Date: Tue, 14 Apr 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776190653
