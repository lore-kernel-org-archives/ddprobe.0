Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBDE35966
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753901995; cv=none; b=ILlNHzZlv4w9640TBd9Iwb2WTzztn5WyTlN8/FyaSgYtxCctDy4PB6Eu5t2unVArhz//z+Hr9uaJsdfLmTtQCjH4W26FTVQR1WMNYCxs+S+hEniHtM5Bkct2Rx0oWWC1UbRgO51ieV7Lsctx1qBxsPmFCm+6Ey/w2RdA155feRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753901995; c=relaxed/simple;
	bh=xujACoB/6tnpWL2OwWhBgUN40uedhki1p6SDzF9hcgs=;
	h=To:Subject:From:Message-Id:Date; b=PCkB/oMmon/JQHS7SUUecYB497ewFMvji1gpZmtbvPWr2CzfozVBbzzljEPL4RZwnioDmzpLSy6p1EEL9S41QyWAOEl8aLKhyFvQe1I3P+yU5wQ2eh14iJEqdwzwvmjv0DjtKEiFThgp6MQm9310SorzrBGejL0LBL+GyG9HtAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gRvQdg92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gRvQdg92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B98C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753901993;
	bh=xujACoB/6tnpWL2OwWhBgUN40uedhki1p6SDzF9hcgs=;
	h=To:Subject:From:Date:From;
	b=gRvQdg92y0qf4lPVxYk8ELe167tH1p0HP0MIp92fah82O9L9NdqehJ068rm71FFvr
	 bMsE+sO3YkMLo5Aa3eqPLsW0mUPlTVe4OBYKEPvGN7aaKmXBkeTSQFzJ0X9+mW9WoJ
	 9HHOGbckJg/7YEKU2AdGPL6OOmGBPBpF+h0xBq+SA5soYzNUeQj7iVKGTy00wmrPZE
	 m8PkbQQaoO90NZgFMtyoyPC0iA2c2pFqP+YBQTet8J1psD3+TKmkzdPDX9TNC7MYnw
	 Vf/tLNh/yLgVGoiDAf0FiwbfcU/OWOF6wAUfFVseVT7lQiqA1au8ztrspp2oL3tvKT
	 hdH5BqTe6uhpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9799DC83F26
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175390199359.9303.9022709518384901290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13051c9b92a018c37d333cd7c3b3a5adc112e0710e7daeaac4ed56870c42d551
Date: Wed, 30 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753901993
