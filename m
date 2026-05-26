Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C15B3CC7CD
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 13:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779801154; cv=none; b=fZe8zFudzykuM4gYMns+G+TGSx8aw09ipKF21E+TdUw9wYlCeRQCNG7A74LsfzeHOzWK/FxB7P3QSnAUesOGM4W41biLorolfuusGaUv7kYvqkRImuDBbokO192USSYXA5XrfAQgs3RsrGHfsZNmEn23yZ6DeoHy+UVCJaa6sNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779801154; c=relaxed/simple;
	bh=oZk6G8tzGODVJ88K+6voHHAg6V2hQ0PqspZH/Xe+f98=;
	h=To:Subject:From:Message-Id:Date; b=h19g5zk9r/iS+J1XQzAuxWve43DWoqMtSK0v9phSl6TY8OOth5DehbsdGGZGXJzZgnZ5WvY2k27IgTI4L7cjczKo9XD1owJZ1TZ3usOAupcV+uZLDnG0zen2YVOLo1V04S+nYroICnSoHgYvQ0E2Fp3YeMUySdd1mJNibJaNUks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggGlPnd5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggGlPnd5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD44EC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 13:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779801153;
	bh=oZk6G8tzGODVJ88K+6voHHAg6V2hQ0PqspZH/Xe+f98=;
	h=To:Subject:From:Date:From;
	b=ggGlPnd5OdRpr+THpXqUhQfeyS+AEfo0BE+RhC5KYjqKfwP6DN9er85Oc6Tlmfwt9
	 pXcAdwocm/KpLiUJaEhCJ1nWOJZuEOUhN+QvcN+0sBX9l5RMaN92GdKnYk8843j0CU
	 rSWVFVoWsqlDvMZjcjk0k5azpYo3Be83684XhQ6ZR8LitiiK1SOCHv7S5mMtlw0Aj3
	 DsAOu7hbipRcketNDhX3xq27pOYQlgpK9RcDWUOfcZjsoPlg8eHHURDM5Z1l4U1zAS
	 1DHOrgORbHW8CDW9nMWeoBYbBATW7nYz30p+5T7RcbfITEP+ydl5ODhvNT7lat3kiH
	 RXGiOsvm6kTuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD77BCD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 13:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177980115376.2368.15222322387823469990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f18eebea438efcf6c5016880626a901d642826afbe3a8c6318832a9cd543ff3
Date: Tue, 26 May 2026 13:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779801153
