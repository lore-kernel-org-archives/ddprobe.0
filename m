Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CA9D534
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 04:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715921543; cv=none; b=FELDfiGQzHcFQ0+w0bqcDaQEr0chjqAHQ+Rxb3aUxLO3UYs13biPg9FXVrD8sh0tQ+3KvFwwA0vgd2ffJZHcGRT4BKIsMCRYUbz+v3I1DygJ99uYEN3buyu2jWWsbvDIAwxgyxCohQaXMiDwL1+hcJLRk/rsjH7YfI30NvNnWRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715921543; c=relaxed/simple;
	bh=4BnO76aYcS7egTodl5q2uc6d/K9ztvnomrFxZh7l5rc=;
	h=To:Subject:From:Message-Id:Date; b=YkpC0zbfNHKBOd/rzAmQO1K4Px95PCQPoB+4cEpB1Xs4M0IK96jkbc752CtPCbxsdQdgn9v0iYbJC3DEqurLScKx14gEHR5ku4BfAyToDLiAA2qKy0g8imCdy/6Yfb8c3cR/77gzqs5U+pc+Q7apYuRkrCff3E+UU1ae3G4urYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYQKCPia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYQKCPia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6817C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 04:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715921542;
	bh=4BnO76aYcS7egTodl5q2uc6d/K9ztvnomrFxZh7l5rc=;
	h=To:Subject:From:Date:From;
	b=tYQKCPiaTDGOzgrLvI69pwFZ9oGhJLNkpL/m6DRsxuVAEfwjaKkcv2S/60gpROWYr
	 zfCXDDBCeADxJ/5AwRzpkOMd8jY4LpvRPpUptVaL5Qn5eKSWv95VMLOgF2QVtc3md1
	 QlsZjI5sS5fGiNGEOL2+mRzmaviEizyfy4QlkHl0gToxPIYaUQrfzeIgPhPvJTiv/z
	 5iwu+/UG9ah7wgmQZ3lGyGyE4K73MTjfdxElUsOlY9Ge0Hioqnvnv204tXfM588aKc
	 tyYcZd54uvb7RL2OlsWHFxXfcH6gM/q0pYZZJTMJyy1BoCjTA8evw0w3/XNvnp9v9s
	 xON4imaPzNIlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C06B2C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 04:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171592154278.22374.4548412612163873894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fbbe202ad1358fb128ffd6fdd2b6df68dc43fd993e1a22e7e93612354d6ba23
Date: Fri, 17 May 2024 04:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715921542
