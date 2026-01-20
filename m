Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE3B3D301F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768921434; cv=none; b=WCUDXvVFLbSLe7DpPlICRn0WVN8zgXPqDN6ndvriu9SgjiQ4M1kzwTBnSGaR1E1AZkU8/6Zz5TkpJapcdPgfKW19yzQ0lMexuyapSX/RF5G1d/byc/zjfAISHAxJ6HHuPAQuGNB6OmKGmnPc0rDBmRSU2tMUs1R5ZrxWNa/2R7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768921434; c=relaxed/simple;
	bh=5z46rfTJN1MYOH1qysNgMoPgpxuiykRxbxdZwF/8Q7E=;
	h=To:Subject:From:Message-Id:Date; b=kYiFaRwCmD5+cuSDIkP/rswbFn/yJcjlN/SWi0NLgTc/5rJ3mRF8fkoo3LoITiEBDdl1BiFvwP5m/OqtFc+JbCb2JvhkCPa0vSMOW7CHYLK/QDA5vcQ2kc4jBYTp6GQJIPlMaL3gsCCZz7oOBjgsMzAlZF9W/fAeKxNtfmFaDw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6VHui9/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6VHui9/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CF3C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768921433;
	bh=5z46rfTJN1MYOH1qysNgMoPgpxuiykRxbxdZwF/8Q7E=;
	h=To:Subject:From:Date:From;
	b=g6VHui9/ev0JPFJ+B4r3wr2OozzvKa1WBU7GtBGFKP54Sjtg7nNq/Z9Rvk/3j8XCA
	 58/4j1O0wOtAZCXM7mdEQprrRih22Yp7DcDTDCh3dAtv+LdQIa6olcXS7NkC3JUGHs
	 QDe3qfMUm3tZUvSXBvB6x3QkIXegLRxcOLyDzKEPwA/MnjFOMQVqsvtkdUfixBPUYG
	 LvdsY0jc0ntkb1aSJNRIFqip7B0Da8Tfjb5QxcmfGqQwRcrhqnsKhuSfSXnbzzQ84n
	 IOS6BNqgoSPm4YmM+2CpBGGBxJSmsNIMXa+nUPVPTBx6RzkUrAlA+zkpsJlEMhQZ2n
	 YLAq8GbweJdFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ABDD2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176892143358.31337.5930948642751967065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05156c71572aff3eec263a5d2773226d71cccd4c7a500768516db7657ab964ca
Date: Tue, 20 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768921433
