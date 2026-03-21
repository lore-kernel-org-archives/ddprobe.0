Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150892C15B2
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774069494; cv=none; b=qRpguVXaF1+MPQCTiSM/AQrsf7/9w9Pp9LLmnLt5fqhyAktjYtSggfv11ZEEtqwqAUWVAiWCgrmIcNvp2YuHSybetZlXaja+AKdIwsin99NmdziURJ2nf7sG9aKfNT2oNC3P4JK89rE3W4R3VbUjxis6C7DbaVvot4XCdqx3mOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774069494; c=relaxed/simple;
	bh=ip/uEMBM9U+g2CduTcuPeoxUog3VRDAZNoEuE3BmlMg=;
	h=To:Subject:From:Message-Id:Date; b=qi43eSPAWDCea2r71wTVCpz02Ylu+zyXMvD4yMWrx4gD9+/98PgkZXbD4kK6yM/GppIkhDOdyUPNFZvaEtQ1CpVANNtlh/SvOtE7peDFDy3kj4XoUWJYcxU7tfJyLhrSlCymiin0eocT+t4/e5s8ENcKgtoOA8zwtLtpFR3Glv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alGmif10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alGmif10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DA8C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774069493;
	bh=ip/uEMBM9U+g2CduTcuPeoxUog3VRDAZNoEuE3BmlMg=;
	h=To:Subject:From:Date:From;
	b=alGmif10m0oaRVeCAC1gu4lKBpR5nHK5t4fPT6BIF4fAFLZeyFwdHYC3IbUsAbJul
	 zkyrNnjPqBrpOJjCxCDyF7fHYMAezCJr/Yp/OvMVdkux2BKH5bpslQDX4iHq4C8O7k
	 V9N90cJnRD5gdb3xqXKd4R5qYLZKAPEHj70quZHf84XkS2Zw2PDYJKGc2ND+ZU1LGc
	 knu3eeBxTXaA0pwpvZJ87NudZJVl3QB7/ZJ9A56ggmbwD/QaKPf4cJ70twraj2b6rE
	 Gigo89k4jWmkNcYutaZjnvtOvmN9fuRP91abUvIkyg0gZXIkA2V6dDm9C7gQMhcps2
	 OrSPnsbqpjN6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921DE1093170
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177406949357.24751.15345493332168019083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02b9f1e6299c96c376a31f73a34a1991ed5cef49467e6f5d05cbac5ad77066d2
Date: Sat, 21 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774069493
