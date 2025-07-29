Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104101DE3DF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753799995; cv=none; b=bP6c4nL7FPTsL8Dr0y5g/fs8zL/66Fi0aMrfzY+nAYu52kZUtbzzMGFtnDw6/8xkPuljmiV88a6p0sLzwa5811u6axOGRJ1ePCpaJelrdRMYrKnf1Dd2olcfiuabnHiJvdmrk3cx17G7kFyE2TOJCMQTcAEr0xHRWY4LoIoFNpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753799995; c=relaxed/simple;
	bh=UZS+ep9qKK5Aspd0Bm8GVpJzgD+nLpuwdwDuOZkPFMc=;
	h=To:Subject:From:Message-Id:Date; b=JopDWXQgQRQf/gQrWxRziqGbvJINqwr89FwgzGtS/k79AdBWLE5UvsMiO+qhO1cr4/20YHLPK/61wMjZCACzoV+ITMUTHgqH0ogYFej689Ls5GKVQxyG1LCsqjFSXSAMzosTVNGvkpRtbWRlQVmZ0czEA8y9QkmSlbTQai7Uea0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4OKuGtl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4OKuGtl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDC1C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753799993;
	bh=UZS+ep9qKK5Aspd0Bm8GVpJzgD+nLpuwdwDuOZkPFMc=;
	h=To:Subject:From:Date:From;
	b=Y4OKuGtluCrRsbBQYqXQ7XRWlRewuBzFmPAKS7xrfjngnW4XFZ8+R7GyK9mD2Vdik
	 pW2nbLAvGUkI3B5OJ6Tb/UBF/+UUoRRDstZ5YvlzkSLNMXiDowQM61+W9XHKOUuA4D
	 7HpXkmcEYwfDUZ5xYJQ7ErgJh9ZCyUALSipEZvzuvN3Eqq43mzOWOPc+X6a15riROi
	 zHDqjnVpg7lppxRX5Oq4sI1uIb9O3gZz1a1O9xzF2Ivi7ZaLONblvLdIqrXr4dv1u7
	 xjhhcSx6cSbBOh1oMT281+CP+VRfRjTdp604t+6wVqqOszFnsB86tQh84tvcEZ9u1A
	 RoBjNrKiRt+Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9E2C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175379999358.24641.12569638537619529826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a17dfde2daab123e41903fb45fb4f44a4228eec3045256536d201736025dd69a
Date: Tue, 29 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753799993
