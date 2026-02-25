Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2CB199FD3
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772000094; cv=none; b=HLrwkjJZhpVCslrSFZsKsrUUTvoj2/QyPbcv1M+mJ1Qjqvw77JnfTcPcIK5miYLuJFj3gi43ykv4LhNSQBWUwp3RpLLWrLqxw/AgXRLpEmrqVnFTYR7lHnWDWS5PJjRwOKeV1TedgL7ntjFreumz5nMsq0kzoJNgcnzRC7PaZ80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772000094; c=relaxed/simple;
	bh=K9QbGl4vMfVwR9uEzlR4r1mvzZvWB7AZnGqb45S2w1c=;
	h=To:Subject:From:Message-Id:Date; b=GPLZ4+ukU41Lb+8Jo+VIIQ7FVaILEbQqXcFSWbErTcOve8aCrQxpvIsIIy7qSrpIyTSGbaRKnlMxRBhykTpTRH+E1/WNgoIv6HXz0K3ySu4lVD7vMAqAcBLTeH2Gn47+wQeqs4NTgUoTaiSs/f2oK5qtGTfTWiK1lcHBKDzXOeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8dSuM40; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8dSuM40"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1C6C19425
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772000093;
	bh=K9QbGl4vMfVwR9uEzlR4r1mvzZvWB7AZnGqb45S2w1c=;
	h=To:Subject:From:Date:From;
	b=h8dSuM40ha4Xz8rDOxbmybg3XWwHrcISBUo01/cTDN9C+d4fX3/oLOj01i+65ry4R
	 /hMjAh49BaEb4A4/Rsqwiw52phOjgqM7DC+mMFFqtYZjFJ7ofamQ2s2xXzWS8yIR/J
	 wurGwzVVKjshoOdtQHBztX4HZm703oIDoVFGiVgCfrv8hc43XUBaKthWqkc74Y3Z3X
	 RAK000rU6SudsvrU47X8iPQrf1HO10bt8N8cvUQaGsmU+z0lrJz4PcmGFIx9HehVpw
	 eYK4BqavdjJQGlCNwxGsXB3Efd6rMafwgFRVjWKgCuQoGytIvBX83vlJJ7/nIGrl/d
	 lyb61k/rlR1yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C84F5545F
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177200009358.18221.8117936458473350086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2feb42d8a45519f48470fcfca7ce015c38b1aa6f110f1abad915ef13e11694a3
Date: Wed, 25 Feb 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772000093
