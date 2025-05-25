Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B27189F56
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748174994; cv=none; b=bDni3ZFUbMetfMCCPkKP2Ycya+Gb8dyzv4cfA1Wl+MnlMjxuUs9ZvZfTzwy/3x8XZV7HUIGxb5MnVH9Dopl2PYQXrVcirQ3YtmSlvI3QGmSbjPsYDMCA9RvksA7zNETloUrViniRJraE9A7bO6HIYsKI/q4Q3B6OCwB3w0GXLOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748174994; c=relaxed/simple;
	bh=0cseKCOlbGwdPFxKFi56n+V3hSp5vggYFvXjbqGTXp0=;
	h=To:Subject:From:Message-Id:Date; b=qtgeoSNEVIeDqH6683X60NyExABq3RizqOcIAo+c5S+OykrZ0z1YHzoIg5KqWlZl6P4t8YFQbtRWIs/xbTw42eth0A2C9fCSSoXtusVo/pcXvpPEId56f2geM3roxE15GzfaYz30/lKjuLEaADTFWrXPvXraRxwQoUug333Ar20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ha5xjzq3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ha5xjzq3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5C2C4CEEE
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748174993;
	bh=0cseKCOlbGwdPFxKFi56n+V3hSp5vggYFvXjbqGTXp0=;
	h=To:Subject:From:Date:From;
	b=ha5xjzq36uylBibXRgB6SeYug+nd8K5dH0dO/8XrqsANPURznHJInkZnXsej+xyel
	 q/VwRrpS7D2Ske2dKEpxjGnfYWoeBta3ag3L3C5b0U56a3zCECxdraR6G/28A+1fgb
	 PfGev+ovfh/FJHQTimKW+80hYXyMKGrvQZ8QG7A7CqgN7cKXe884ZNh93zpaFj9tc+
	 l+226UIRFUv+xvn11VEP0qq4q/2kbiZrCxQnNle7+zFPmDkQ4Idoj8eubXxlPRECbL
	 EJvdap5Ohn0VB3AJkBsRGaNALObpIFNaTBZXZAuiKCFXpJeaGzTZzg5a9+2a5HihvA
	 WfO1LIjBbuyuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0C4C54FB3
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174817499357.21596.5402340314542268073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ac2ed6a91389d8b402fe48437ae91e1440f628ab0af56246a8fec8d61c2d8b4
Date: Sun, 25 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748174993
