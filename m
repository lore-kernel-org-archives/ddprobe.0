Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B7B199949
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773897894; cv=none; b=sA/xHATK1GBFHI85373RcttzaYtK9HV0uplzxiqvm1xnSfeDUJ6W0Rdp2oUkrOmWXG0rKXfswSB9oSytCjrjCJQUOjjSOEfcmIA2JqjwBz9XiEGuu59FSj7xuGpMp4i5QtKQXYL1obfGG8iNgBmGCVtXPLfzzPAUd+nRonc2CsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773897894; c=relaxed/simple;
	bh=KPSTNGV5oD0ZBB5pfi61+4r3Cn+62OLrlbg5FuZHuZI=;
	h=To:Subject:From:Message-Id:Date; b=k316TOgdG6A2tO9rTVzBkpAnHI98tdBHTtR1WEcyDGZpyubvyZ8PVydjqI2r5HkDX0JfDF+xfbpG9OEjahtV8XfGocg9Z3mkqdlT1RtuLW8Ll8PU6TaftXlclA/0gEzkbwi0wCfPGtK5Auyo9gCqco9W71kxqq1DStCZsnJ9aes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AwVriLWg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AwVriLWg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB39C19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773897893;
	bh=KPSTNGV5oD0ZBB5pfi61+4r3Cn+62OLrlbg5FuZHuZI=;
	h=To:Subject:From:Date:From;
	b=AwVriLWg7O1vRVfkYYi6GyVvAjIQxV3UaOvIO1pS+J1gjM4jM63HlphYXSuFxC0zl
	 A2epArJSGBp1XF8h7I0f+bp6hBbRqOCZkDVI0huDDEkTF8aDaqYvoF10MxN5JjVyQM
	 YEaRdolXKZXIVYEd57dYBKgaPKn3oYpR4Gj5PrrVuwBqqKyUtBD47M+aqqzWhiAaPd
	 vJsZJjqvt+7Uajo4J/QPDC1nUT/tqNdZu/pweErWAAM8UC0YTgYvoVZoFI0TBa9nNS
	 TDwx8lAJPIZRuLRMODWp4NiDNi8UaK6aA43CfLmHiA+8F4pFQIl/F5EVJiAMkxC/rq
	 hlyINw+ExzTgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4131088E7F
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177389789357.19009.9594121963573928980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a70c43179dddcfb0a175b2882202bca101e0cf0cabcacdc1393fd62ce9d5c171
Date: Thu, 19 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773897893
