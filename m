Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B683376A1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767954234; cv=none; b=DKqLURyY1Y4lepB8pjC5Ng1ZfyA6S9W54h7PTgJxjWZt+pIHgzkkg6wqcVCY78MDMW9mHzGYXrWcLqADT2c3ftdJoRUCioTXPw/8U5nOR8mBFLLbp35MwB2pmL3GOzTb9CqbyYdIBIpndqQ0GGadM8/fWL5025ufYR//OBkONac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767954234; c=relaxed/simple;
	bh=Wnaw4KKgfotfPrao1qMEmscyV+bCBJudJBTZF4mHV3o=;
	h=To:Subject:From:Message-Id:Date; b=MIfo9PLCq6v9HbEC7yLiBgirmZzeqRMqj0/tX7CQRwTxz60XCOhqXXWqqMQbiDlXk90UTepmYs/PJREqRfdWfvIQ21CviwpTXxWSkkNzoCMQbdVFitbt3TmTbgTzC7z0L+DTMV21lu0C/cd3M/prP40PnL8bl99221mbhfYrA1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGmi2ejp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGmi2ejp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20A1C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767954233;
	bh=Wnaw4KKgfotfPrao1qMEmscyV+bCBJudJBTZF4mHV3o=;
	h=To:Subject:From:Date:From;
	b=eGmi2ejpeV7ygID7axRhP0s7YXjsDaQOL//psHHpKkbhHDjGHNrHa6VdIp0Zow8Vf
	 dDJmELrkxUKeYTUstHVMMc8KzO/+j1aesnPaSeci4tLRvlhMKQx4eHhU/Sv1wnC/av
	 C/cpjlCUKFPKnX/w41sn/4p852va3vWutiUi9pU8jZosmJlgYIMssAS1ciZp/KE50m
	 UmV9gkWim3tFPjPWRMhzOE0dHQ4wtUCYU3xVwtyqzcTOtQn1YM6zZL40R6gon+uAgA
	 /pQJpXbKi7rp657LuHhs60KUC9i0/6yk1a2KWOUkJ07tQGRCY2Zzbf1S8QVaB9PFjT
	 L5m01PqPRGXYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CACD167FC
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176795423359.23363.8234526946498842425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48488af21fb6642d8b2ba408a3058b49a47ea43584a267e976a34389b1c1e363
Date: Fri, 09 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767954233
