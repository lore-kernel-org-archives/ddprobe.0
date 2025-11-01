Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205833594F
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761960594; cv=none; b=Io3W0IQoLyp0HCn4PUOHmumzcTWN2/nFw6QAq/sHncvvQSIb+j5OQAMdcsMZg3eC1nYyoT6Jy5vx/cfSpyiAynxQEG4F+DijwJJK/AbhoD3+eHEmzDeachphXva/+R26WTW6r+RJe4b/sul79iYV4XyCMI3i0dxIalg/4wl3vwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761960594; c=relaxed/simple;
	bh=HQqs3jm1C6Tp9T3lVvN7TnSW++Ym3j6tr/sfY59zsQ4=;
	h=To:Subject:From:Message-Id:Date; b=hG4xpMDHbbkwq0kZeRHP6DObus4isZ3i5iICAxYf+p3ruiYc3T7JFyd54Im1d95J68xsGnInddJAhbM6tS+3rmsJFE+ErrlO0/irA6dWxyCZEQ98VAduPlORdZLopYobxT7LSIRZXrgi0/hHsmCUo4iKrJHel8O/tYNMO7TLgg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=auvgYsm2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="auvgYsm2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79D6C4CEFB
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761960593;
	bh=HQqs3jm1C6Tp9T3lVvN7TnSW++Ym3j6tr/sfY59zsQ4=;
	h=To:Subject:From:Date:From;
	b=auvgYsm2gNZN9sw31Qi6m9OZ4v/WBWQQ87LTFVo8Ar27rnIFfgUmbS8/L/QVXUmzG
	 rEa4zxTZ6smcv1jVekB2N1Ht4vwoM7P8tBFxOajVPUvrX3mJ+lQU6m30i//CXWpBz5
	 zAadko0pA6NgwjMO/EJ5kuB7DEdOOru9A88EdydYaKOd6XFX4Y4k/gAxKAWHKVtb99
	 rzlM8QvMq0lTkmUJvIDj/TrvXZ45TbQU++/qDmRndDfISr4Wf7yQx0tvFAM5jYikly
	 r34BxRlNSI0W7gLq7moGVJYEomYAhdm48Pl2CzLDwZo8yFIJ4/JBvajovtZUQr1h0I
	 z9P70pWh1feBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93203CCF9FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176196059358.14848.5910445499209100591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f89959d7ab698a935848e830f371fdeb065b7143ada6e39d48c9af1bc4ae7f4c
Date: Sat, 01 Nov 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761960593
