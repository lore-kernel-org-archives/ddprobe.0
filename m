Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3574F8634C
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 00:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782347254; cv=none; b=rxelHgL7MLk3hZpZdAGpcPwZNHnlPP7wIvKgluFqbEscnd/1eL5yZv7CzhJnQxFZGG5Lj+6rCAzyAyBeKrWc84Kg+Faw+KgjRuaKXEEun2mgaAK9904uupH3HlSfZaoqsRwb2+FugKKHSKCynMdbmW/lKnlaU9gpPCvbh4+Fgxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782347254; c=relaxed/simple;
	bh=LSfg1lawxI/w0aQmGsbj5dJnCh6IxiTg/T6yf2CD5bI=;
	h=To:Subject:From:Message-Id:Date; b=nxqgpKcvjPWG4O/d/EdIyN3uhXbxYfW/ecqCCeYUvx2WY62qQgWO78uFPOPMMxz1Ev7gJm9WrF5DBS9DqpVQ/pUVvCUlhBY5fIUI4kMHxVf6sRwN+jXP7c7M4anNtxF1+b8hRNApJbjI58mXVLAWgQGRbof5JUI5AAm8Htpo0xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1Wjzlcv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1Wjzlcv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C3DC19425
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782347253;
	bh=LSfg1lawxI/w0aQmGsbj5dJnCh6IxiTg/T6yf2CD5bI=;
	h=To:Subject:From:Date:From;
	b=q1WjzlcvJ8p6i+CgM+IRIYs8XqMfv9lDHs5S7GdhV2apbWLW+QMTV9fsoKTXKNqwN
	 oNAA11iBIYZrzJGD2FDrcDtFTFGmdZ5roUGOvXkT21fPaAIrjoOZ7fQtozp5enFono
	 UTO5NOWVl7IG9G8LbW9xgsAMDipAgY/gZlYeZ6W7cZckFhpz7xa6gVNIGScB8s7tr9
	 XRMSexozRlynkLkAtquMnd35TeTXnAvSS3/X3U6x8htdfg2jXTs1+Y3/fKxM8G0CwN
	 v1SJRizODp1vzmJVPuD+g0T/jyGTJNWPlFOJKXKyJA4bvZGeZSy13h4xxgBFcHwxS0
	 WvjfYBpSpdCrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B92D8CDB47C
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178234725373.7083.12032810461974603169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 489de018f3e12f937e7b487cdaa16381c7e979c1b6701a9bba8c79b0869b2762
Date: Thu, 25 Jun 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782347253
