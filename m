Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E902F29
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758424194; cv=none; b=b5pphlu4OU1vjMvrOfGKOGNcn/HMMU3h/1hTp3SBkzMg91tbyrX5BOA51Dpc7Xh4t9M4ttBrwNbqMNC6tWatRPZL8HB0+Fyl6ZOTtpFP2oTpiFNh1bj+6S0bW79eb4NwET+5oQTKpokTCXZC6E+DiwiDml6h0WUboyRGckqP22s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758424194; c=relaxed/simple;
	bh=KGl0qQf1U1iniDVz0dJruKA+NdnURuRxndQ9HR4ayaU=;
	h=To:Subject:From:Message-Id:Date; b=icoSdamjDfHceQFrPHt75hk/+v9FzdSo+nvsYdKyFY0bQBmIedd8YuAn5LlteonXCVDKk29qNVGmLIvT6Ed7juHqCQhe18DszguULR6of/RkFC8HTBDmWCY2aOHS5Itaww8FGYLdQ4xd5whyrmfwX7GB3okWEkPUiUNR6WZV3Ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qcJ1Encc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcJ1Encc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE603C113CF
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758424193;
	bh=KGl0qQf1U1iniDVz0dJruKA+NdnURuRxndQ9HR4ayaU=;
	h=To:Subject:From:Date:From;
	b=qcJ1Encc8FdMryUcarCaMUrGuzRuqijsDgGogi194buuWm8Y9/3i5CgGCF86wEJh8
	 su+xWVU/NfM8AjJFDUQnWZ6EPOdWHUiMrWcQbG53BfeanDOk6pZkb+4TXlCIj+ayb4
	 /KeGSeVbCy+DnBKvwYhAsnBb1/oW1awDP19/QUGii8sRXCzS2oblvvie2fKHJ1nIOs
	 9y47l8p/d6820EH7RzUg6ywGVyV5hpK0Km+gM6+L6LQAkwWAdso2hC92a2ZOfAc2kf
	 yeAbi2C5lYqTfclX1qPK0CB6qsfLuxH5/ZrvCOHwV/rnkZw9wbXtLwEgyxCom/rf/1
	 NBnMcDeFSsS6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E5ACAC5A5
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175842419360.14912.8823796229578118517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08a74e69e88873543177841fc5c9a80a083b575542e7f0d33e6b72c77793d387
Date: Sun, 21 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758424193
