Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A9341C72
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766683434; cv=none; b=bNUQmT5PzAGyxr/mnJ9LeyrAyNLKs38MsSpNcG/JQodXgN826CStuP2ZOrGIZlnWj/euxd/uHHz2LsE+giRjHbZhldTbBqLZgiqEFwIgt/W8eqHcndUDbPKbDR7rQJWFcRD/U1AKuNUIvd+lTLfcltFjd1th0AyT3xiJzPG5i4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766683434; c=relaxed/simple;
	bh=CxTfRnklxPkzpVVx13D5TeCq//Z7yhHbhIIdNeEk4KM=;
	h=To:Subject:From:Message-Id:Date; b=jmk+a9QXvsvpo9TjSrdSOsVlWVqbR3+e0Yzfhvwdvdym5Wd84DZieoN/J8b612SpD6bM5zYBQlj6E64W45Z2y1wqvCBGpwRjJH4TmKrgbd4LMWk5klgvc4vHeeYuQKmpkEWe/nmftIeS485G+ID3ROOb3hvv2MaOPkIfIEU6OS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cnds4Wz+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cnds4Wz+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD5AC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766683433;
	bh=CxTfRnklxPkzpVVx13D5TeCq//Z7yhHbhIIdNeEk4KM=;
	h=To:Subject:From:Date:From;
	b=Cnds4Wz+uYT97Exgik+I5kYqeH2JgLnnYWP9FbE97F4yCPx1tfkO52S4l/GkelGSF
	 Ikcp/6QoADK9BL2oTwAUzavXMSnsYYFxR5Ok3/7oYPXHYG75LEdkhPkiBzwyj/6vxm
	 U8KDR9/1L61Sb4bU3rVdJiDrvY8u+zS2+LIbg1iyPlWrFmaGoLGnYtP0CWoXTmt34h
	 Df4VojM4yOwJGmuurw43Yqye0NlOfbIgm62QlrMJP7ElHWg1dP4U6vLFGcEGP3B2CX
	 gw8i49q+FP5RIi2kGVCInCjGB0tjnBkHLMymdqwlZov4kbMEXfeFOUCvZT8I06AdsA
	 K4rWuzALMhgsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BBEE7AD62
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176668343359.22831.11316594449976577543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 898560bd8494adf137eec5262ec5ca81ecb98a4c4f41049eea50282ac836ceaf
Date: Thu, 25 Dec 2025 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766683433
