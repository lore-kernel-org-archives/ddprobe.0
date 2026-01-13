Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233EE38B7C7
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768296234; cv=none; b=vAn/nS2fP4CDchIc2qLDtepQUfACCWvX1k/8Xz33oe0C+/C3RcapmsFu5gVIecfQVYKF6XS52fhon31QKumOV4dM0sxJdqBOhst54s3o9tX7tcj4/F5qgUG+qp+5bBB/StwsG/UOJodJYNzEct2osHeeNaMnYAtEDhk6HWAQKdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768296234; c=relaxed/simple;
	bh=QfeUmDEluQ3pH+1dLtcZTDHJ+BU2jQqq55ek2hl+Bds=;
	h=To:Subject:From:Message-Id:Date; b=FxPyp2WfV+PvTR4Ch3htlJE5rBqTpg0MkhVJuarIj/WDIGFX3alQxMiCGiCpnR1wctWohEZYnOif6OA3fZc2l8XlfoDCIqtBBM1uERqXa5G2Edd8k+rQFTZocD9csTP/CpHfjABSmLC47UnaiFpR4cNoCadVFcHc04Rvq0cmlVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQxUUn5t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQxUUn5t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CD8C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768296233;
	bh=QfeUmDEluQ3pH+1dLtcZTDHJ+BU2jQqq55ek2hl+Bds=;
	h=To:Subject:From:Date:From;
	b=mQxUUn5td41iwKlMrkQEGvJBQLkbR0x3kpDjaOmxkv0mMiFsNh+DzhZn2zkKvVjcN
	 GUsjqe6Bc7057yF1IEpAnMXTondRQt47pshD9UL1NC9VjJWDYBuvGbiZxFh2f7S6FV
	 Qqvp6xqJoPSOt4/RimAPRI6OdQ3YqclmYCj7XEEnN9sUdUJ82M1Em3LjjZQ4WwIc/b
	 hrcBogOr3/f4HTTpZWNighJJOFu1LW+lc4wijRNPal6rXDxsVfvLsDkTvLUFTOxR96
	 hVvyj4iLAIgusHFPxQEkJd/nMHCLJ+DlTrT19kfun9jwvnn/S8hVIP57AxLaOb+mbX
	 Rkh1BmftmiQGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90067D29DEC
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176829623358.18183.11359656447216811772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b299f821a5444e3e3cb3699f73930aa95dd8dde4a535026e71cf30508a6af10
Date: Tue, 13 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768296233
