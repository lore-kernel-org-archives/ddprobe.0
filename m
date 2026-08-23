Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F55B277CA5
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787514634; cv=none; b=EKsXn/ngjZF2/fR03zFkOKJrIjoNCFp2XEy+JCJa8yhBOtu5BWWK8skzzYRne6Ghr9RrR8nF6cpn8d0rgNt3TUhC/kI6FyluuxER0Hsk6Xnn5L2ErfSmmmuet66zjatv3qhUkhRgX33mkqSXdv6MekEs5+QP5XU9yw2/pGWhu1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787514634; c=relaxed/simple;
	bh=zDNTH0TuiEKOFYJ4RRdslVhSXnJo054PzIHQOaxzjLM=;
	h=To:Subject:From:Message-Id:Date; b=NSrkj+NGGhf7uKLBBm/n/cN5cAs4B0lR7XquXOkQovKldrtTNis1srv+Vz39POS8YAXV8JYhIx4mWbQ7UEnCPv+HhIfmyk1yYRL3r/vPM7txN+Fu/MjT8cV2q8ZvJw/3tGNr4whX4mHxgRS09rQiMnuGHSkKOATAMFU862gDwok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WugtIyr7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WugtIyr7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD764C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787514633;
	bh=zDNTH0TuiEKOFYJ4RRdslVhSXnJo054PzIHQOaxzjLM=;
	h=To:Subject:From:Date:From;
	b=WugtIyr7veOkzr4mETywbfZo11a83qDKOmzIbw+cVT8mS9g0nYnM9JDGAhgT5iLdq
	 nsiTmT1HWZAQjcVf6yU2a/BH26LoWFCBU7reBzN/KZUpEerJ02HEpDnIXopZ5gFizp
	 ZJr49HD0jvyZeFiSeapLGAOkN8MYrcWgHKiw0eNXh+borDI2UZ7Jc1+IBQV/D/2M9Z
	 bRv9OaOa8Ty9NGIxFgInoSSmfqydvY1hcs8DsYH3M4iHUNH6jv3rYhau7SNNnvnErc
	 nkTHW2BBLfgGcTy/IYQ4bLbwMnPQZz0L00FDumSCiipT9cO1dTuXPShMg9/AX8TK3C
	 loFvQSOAPx23A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F8EC5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178751463368.29797.4476590676240720823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66c40cff16ac828bc4e056e5a705fc2d02c453edf86a31fa115daf2d9e68bf7e
Date: Sun, 23 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787514633
