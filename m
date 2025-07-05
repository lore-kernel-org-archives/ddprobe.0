Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594281482E8
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751731194; cv=none; b=rJ35Og/RN962aMkSptCQyFrpe7GvROIb1YzAqD4UtyQrFwqHW0ILaqL/b7y19nk9d0/fvitBDuReao1gQ6CDClBNxkhYWelU+GmtAeg4o6Rt0evoPvrlN/3+AcRVTR2npjLnWNMlAc94MKYDhiUtUWRKww7xwU2GXnBvCtHaevU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751731194; c=relaxed/simple;
	bh=En7sl5hMRelGzmrLLM1yq8gIxiKRaEvgl9roSFOd/gU=;
	h=To:Subject:From:Message-Id:Date; b=cdqUdJSKp0RJ1jrASEg33pWltSiYqy3THUfuMe9DDYYVH0a4BoMieDyJP16fan3lf1oFvbXYhK4ggJzuPL3IOABTbfCKbVHoy8L0tHv5Pp7i2BIsUibxE15XNM3+HZRj9i4pxwYgILVvvsWZEp1teC+RKVh5xaL0aViGkNfktV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7iy6gn8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7iy6gn8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D14C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751731193;
	bh=En7sl5hMRelGzmrLLM1yq8gIxiKRaEvgl9roSFOd/gU=;
	h=To:Subject:From:Date:From;
	b=W7iy6gn8SbwrGq7Zv85LaTnM/qQYLgo1WO7C9SQObIA1EBV+RvOxsfly9PWWLyaTQ
	 g8wka6c2Asr3EEfEgbDEKI1Lwlvqi57K3sHGTlILqnBYF3Yp1pL1Ggzi5Ozi3KX2B/
	 F4O2C52+UEgHjpFlcgOP3icg/TvACAyojPlxGe+ll4V63Hm0yslf+kvrbdL4m2oCqi
	 EIIfCbcIqb5jc/tdt5MZQM7HDD+hdLPiRt4w2y2htwhzrP3iBgv4nduWKR9tIeXQhm
	 rNeVVZdUHm5XBO0zfYt0c5y+TjgXge2gQMHFbMOscWpP/UuR13khBbRY79IXMdRKkf
	 WeaW7aOAEa0JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E53C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175173119358.32407.11909258247197339343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da137bdac70c01688cc1ce2f2d8ceffddc79fb3fec2ecf60c434f337277a0cbb
Date: Sat, 05 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751731193
