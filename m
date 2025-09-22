Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3A42E2657
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 15:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758554995; cv=none; b=G+xqoMMvA256960RbeOJT585z3SBeaMuIAx2+ruwuOUf22RqGxaQ0qrCgwWX8K9bGEkbfEHWOmnCuyeQZaUngSOt5iZApDUQjdwv5NjL2QlqF/mL4Q/agi6rbtHsaynzh1YkbnJ3U1LolD57zLBEP2OluoxA+kKvxB7dkf8sa5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758554995; c=relaxed/simple;
	bh=+P1gBf0iLVRTxTbPNkghEl0OF3mX5my3zzdn5x5wZU0=;
	h=To:Subject:From:Message-Id:Date; b=VPmv0BjR+bXON/A4jO62/K8qqW0yKMXXutzohpwuzerUk6Y4Wnud/2T32WMr2UatJzJvTboGSnNMkjGk1mhaPd//wGLIhfOA+6v7G0uXMDOj6WMXzICstKwNX8IPN1fAaLwDfSR+P2DwRq8dn1UGV35vFNkV2PkCe5wh13sURu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxocZo9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxocZo9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A1DC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758554994;
	bh=+P1gBf0iLVRTxTbPNkghEl0OF3mX5my3zzdn5x5wZU0=;
	h=To:Subject:From:Date:From;
	b=kxocZo9bbeFOtm2gdQJA0oV8LBxPPokPqUPn2ENu4sWtHIlqQsr7zqynn3UhxfceJ
	 KPqiy6H98jIEEIQDtTMMiU2h8GypixEQSeRyP5ZcNuJZV6dV75MKfdLQXJswdlmREt
	 kX3c672N1xyI/N2jTiZi8oqtTV1MeUtQ5w1hRUfyrQEx294LSQoIdscWremOsMBV9t
	 cjVoOE8IaudYnQCM5nAz/F4sivG3YnZdjyQIro8yTtd7bLb3iYOlSs+duGIDtKXtiV
	 fwTM2RRbOHsnRkd603JF8D9fUdFTjXZwZVeolLmxoxvHOwFOtc6OQa0C5ykLlSPiWv
	 eopUIX+xO05SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F90FCAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175855499358.2328.12500971872502679675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82767741b83334311f0de481db34514006b725df8c96d13fbf77d97a935d8aa7
Date: Mon, 22 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758554993
