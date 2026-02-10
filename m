Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AFD2D8364
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770714234; cv=none; b=E6dXIKr67OYBPpJRprBcNhzXi+9qOI0qxhPPinxkiZ7CVt47nVjjsvFih8KpTIw3NN+SVSJbFCom2N3F48T42b0OQJCljXPsK+qZ5/+FNfTqSlvahuFceVa4vCeTGm2VY9kyEcSptX2Y21hBgJpf2ph6K7gjIaljdleB/drZbKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770714234; c=relaxed/simple;
	bh=KnCunO/BeJhvUlj3nFkAAYkDdGKIEgfoxhkh2h+CR6o=;
	h=To:Subject:From:Message-Id:Date; b=uO7lXNdrBPB6BArbyYI7TZXXJD6+PQOp1QsLKru2xyJzMe1hb8WvZ5OmWdzuicMhCdzj+WbazoL1by/TMlpinswK3Ky5m3P3I+vUZLJoSzZomDb+py82AfD8feCIfiiTEDLn/FBi833wwHDplxrd2IrH2c90uD3XmsRIbRb/aNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHJ5K1VD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHJ5K1VD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A9BC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770714233;
	bh=KnCunO/BeJhvUlj3nFkAAYkDdGKIEgfoxhkh2h+CR6o=;
	h=To:Subject:From:Date:From;
	b=qHJ5K1VDZFIEOaMjhxRemmJm13EKKYp1v7P1frQ+E7rW6idCnU4B4ESKMYKaQ18nY
	 90rZQBSxX3NW7KOotIdL5h3LHOlUK6qOkeRifDaSxEWGznAmK571GtgLFC+FWIlAv3
	 yrqZCKQOEH+rdHDTCueVUfdrpRiN8mc6edM4h6bDjbw7JkOkr7xF83EZ4nwCVYYhNJ
	 ZKy6/aVtBejyOOYDcO5aKPvz2oF8jO7/AWA4pkCOrw6Fkr2zsHvWws713PK9r37/wu
	 l5I3nY2hKLjsaI1f4AQQsNtZwia5uvmvG1bpVugC/M6C9D0i6p3J2whewqvDSev/T2
	 Y7Nnug222nzSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A01ADEA3F2A
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177071423364.10950.4409352932868473823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b20a704aa3d5642be1d21009e59a1520832af162efe9ecf8ba9f0292e8208929
Date: Tue, 10 Feb 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770714233
