Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE0552CCED
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791913834; cv=none; b=aVXisufD5e8fP+DRKoq2ILIpz41D8nQyRts+R8vxnqTJgejizY+NwDy+v+o1NMnZ5hA/1TYoYtAcH0Dc/aLkTeIyCiMciBn8rYhJk0P+jDfCxWFisxupSSB8llT+OfC6SQW6pVRsKejhEcSdeVf7vezmwZvIhI0TlSHTZSv7pUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791913834; c=relaxed/simple;
	bh=T6TRw1DxQ4MKQRM8y8VCNiyqIDrruGm+SfNHl2ctHco=;
	h=To:Subject:From:Message-Id:Date; b=Y/7pSs2dGzJTdwd1WeJibOCC+wmtrdEsrtPt7WbMDOIbqugyatHB39e36x2+ztJDoVnij+VCh8cBgbrfocz+QAl0TwCaRJNUMGP4bUSl4yK3t26tBoRHDjWkLn0I/1Q0oGYr0sp4k+8j0lqEzwYmjszxh/D7DB0AL8rPJuQeguY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxWrb9tl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxWrb9tl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1C5C2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791913833;
	bh=T6TRw1DxQ4MKQRM8y8VCNiyqIDrruGm+SfNHl2ctHco=;
	h=To:Subject:From:Date:From;
	b=HxWrb9tljUfrnE3CFod23zCgJSgJBujPLUKVb+4hdBn9Koxjm+0VOrb5IowPM+1nP
	 4oDrEUfBkBKOqMWG+KHd25U9eukIiQxnDZ+3yWuxFNrfv+ak+bk/bFqSkI/ZV6TqUq
	 xgUsRMiyvzmJ+wBNjTJx1pKlr7ZWSZOpKN9W8ci6Dp0yKTlElhM4nsKQkJYUvgoVdP
	 RQIumppMN/2/Hd5tgw1+n2LJ57siZ6dy29qlC20hT0rvRy56WNBobujq9YUN/phltT
	 1qdj5S4RnhCvFTQ9h23KFZshs9hfECB89r2n8ZbvJL7Xw0tGQuYGNM02spqZ1HRyqh
	 5/cnPVlWnX7ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07CDCC6B1A
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179191383371.30401.17092816616054680913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ea8f5ec7afa98ccee192bb3c9d1073327907bb13684a10da2e017a429887e8f
Date: Tue, 13 Oct 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791913833
