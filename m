Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189527FE
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705900697; cv=none; b=lIB1lCTbC3emqVAsZuMoAVS/3ibCAgeYEjU7NgRCkEAvh8hyYeIRcuXy0Dwmpy71cnP6GBkR/CchKSSY12IDSi/ruWrZNh6JGAA4kjUlq15jLuIx7MF24nfGkALWxvWAYg2F+EKYtY/w01f/FTAmSbcBSZYFEXnToUGl4p+SRu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705900697; c=relaxed/simple;
	bh=5qN1+zG1aIZ2ibTIFaFf3sGsABeSdRUampdgMuQKWds=;
	h=To:Subject:From:Message-Id:Date; b=i00MgR5bM8kv3IxIwFmlQn0lGBNmvZVsBC09207K7CK7bl/XuUYd44d010GKJgyzry4lKJ+vAy9XKR1xkxlcwC4D7msg35O+N2YLRjtOkSL2uv/KtW6HLcA44BGCXWGVPypSQZFr+gEz8C/K/O51Mno6uJRfZ+Zv0/5SwdwJxmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJatR/2O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJatR/2O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D4B0C433C7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705900696;
	bh=5qN1+zG1aIZ2ibTIFaFf3sGsABeSdRUampdgMuQKWds=;
	h=To:Subject:From:Date:From;
	b=fJatR/2OLW4xqdMck5cu2n3RxE/gOkbpTbyiFkMt4F9f7/chnei34glKFpLlGFX4d
	 NTUA1i8tbPgflAldQw90fDHsKD0Y38iNLRpptzPikYWcvbyH2z/Lrj8LAFuTdSrvy0
	 NBE12h6bHywaT4/j7+94hsFjXxCCsEEM8qyH3BleQG+60ytvheqRKTZwG7SWHc9ifa
	 S+1DqGmfpWJcA99YrLGnHbU8ddBumEFWkj/ZVw+6CIEhCnXKLXYF9oByquAkyB2zlg
	 DJAviV0vsoBfrST3rwbZWfbawADEMu7cwPRMhyE2BspC7tbSZ/62WtwDb6/LSyUEcG
	 Xz7+tfAxwFoFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60212C4725D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170590069637.15909.10897723890114348231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b4a828d76895290cd533e094061674c437288036115cebba0b4a12ead1ee2c8
Date: Mon, 22 Jan 2024 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705900696
