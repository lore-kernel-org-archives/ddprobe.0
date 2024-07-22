Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A78716DC06
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721672754; cv=none; b=NxmexHpx2RDYqqRxXE8LMcTNGibUf0n44MgbAC87HW0n2txQZb4z433XeVFly3NDBXzLkJmh7Sv92Bic/qWjaC3pSEZjbf6RTaFi7pv+tOoWlPshlYIaM7LXhX4dyajnnwicBv1lKRzOpXyyiyJ3PLKmBgh0gd07skKzIITCpEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721672754; c=relaxed/simple;
	bh=FkJ4dULD97ZR2X6U3yv7uecTGsbevKLd79UTdk+qRgs=;
	h=To:Subject:From:Message-Id:Date; b=DtXxrAaP5FhGH19d4LxdnDE+9ca4vXoX4AWT7iDLBND5h6R+CBmD7uSotnB38WVqGryUHT677/vbHhvNpT7vWF9hapUOeCDG8Xo05FA+MCl4SRld8KKDZ7qhXE2K3Q4UtVCOeMcVs4AO6KxcPfGwACIQH/JdJjsBFnldkFSWflU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrzxfGtE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrzxfGtE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C66A8C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721672753;
	bh=FkJ4dULD97ZR2X6U3yv7uecTGsbevKLd79UTdk+qRgs=;
	h=To:Subject:From:Date:From;
	b=LrzxfGtEM7KZBzR1QRs9e9ZTFOFzGtwKGp5I4fG44Rhu+O8xGOahrS7xPDpHbLdX2
	 rOGbE7bePwWFc0nI04E3fV8NzqdqDbS+PgIm/8WOpUgZ+tFl93IHZa0SE0hy4Ob5zM
	 7C8YYKevApJFlEJjRprrpq4ByNCmaKOku3mIj3gEHGX/ajHjQ+Je5SdqaB/r2pS+4J
	 CLZUHqGA5FfY578N+Oni4OWsREkIDbQpgaOmrFe6AZkMHyyROYdi6HufWvvGUOpq6p
	 9xvRLSBQn9YEg3m4sM2fcGVI1uWAinNK7Aq1T8OgmcpkeQqOzsxRL+enRADdhUEbih
	 bPz1JN+JPFgRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF45CC3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172167275367.25228.3383137243748032616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dfaf358ae61772a70df8d7a1c94e8c3c8c38c1ba703a3b49225d4e7eb1521d4
Date: Mon, 22 Jul 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721672753
