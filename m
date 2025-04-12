Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A483158520
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744473594; cv=none; b=gn5d41I7GtoCo3woGHzCfcWraKFo+D/PKo1DNeT7+HhaVCoBp3Vm+UmRS2xUgQNjTMIrzxlE/wg2NRGoJh9jiDWHw0EpIyoKQhbZPrjuSBC6+qHd1JcYSkuZXXjW1S/YBSl21464K7Nj/+sDoo2KEOrdxjuvZKgRNssbnlsM9/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744473594; c=relaxed/simple;
	bh=ONuSwR3IC30e0cfk2btIUi7GC2xpeOqMIfplqjm2om0=;
	h=To:Subject:From:Message-Id:Date; b=rn8/d9VJzW04S4lrP/cPa11iHaaeDXdFzwjtBLvfhcLNkopjuzzXXBgI1t3lIXPBh3z3C5SfE20/pIR/MSaueh1MqEswJK0nAfEdELLInFCjMq73UiEvkQdSL1zoml0Pd8Ejqd7JU4W1O536Yq+y8dLjJIWA+IAG3tfQclrDy8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+SbXXbn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+SbXXbn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A28C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744473593;
	bh=ONuSwR3IC30e0cfk2btIUi7GC2xpeOqMIfplqjm2om0=;
	h=To:Subject:From:Date:From;
	b=q+SbXXbnQm1KDwj+mDzdYfBBUV4JIs/mF4ihFe0xnGOlFzqcaVs6JTgFAoxFDJeya
	 qGmuR8MHAwrPicAugONfb0Jzs/ujaZfDZ1JkWeY6RL3F3j0Fp8yjruN0v+fMxVa6o2
	 nkjVO64doNA2cfaz1y47eBcsIuP2Z2mloGj30K1McqdTwqio9PHSYkttlOI4LoB5GI
	 Wl/Hvp/DIc404WNkQBjdMNrkqnIQrGcR7UNBPFrf2mVyYq86AdciKBLQTvnh8TMFlI
	 mgDqhMKY81sl9m/16VlNTallpoPRRVKENElWws6L2zaxsXaoAHZo/vLNe+T8qC90gN
	 GSyX/r2LP99yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0106C369AE
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174447359360.22848.15871474875215576075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7da649852662a11cc32eb27fccf389ca8aa6cf2567bd233c2c430aff8c9edbc8
Date: Sat, 12 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744473593
