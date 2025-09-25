Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228DA31FEE2
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758830394; cv=none; b=s7+gahE1RlOJz8SjRwVt9hPEpsvMgJW2MHwh6VC0GdtEdJggVEAyAwXwsKYnt3lCQHlBgJI73VUWjVkDeNM2M4S87ACTDsJDDI79hooaLQNdj2FeztZdY+I3mPi4mHCcaRMt5jWmx2v+F3x7UQH4US1gK/h18+QdU7jX0MGKQ6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758830394; c=relaxed/simple;
	bh=JX5qFevywI2EKEdTXnCPC3hRtTq6+DHQ4peMt/fW2BA=;
	h=To:Subject:From:Message-Id:Date; b=TNNF5CjKNTTZSRtSLCVfKLE+GajHfgdzV8wyEWfahBNYQUxwF5FlkwAmTSILFLeIeZazN0wgfJQe5PJz/Yb3PsK3u26c2o17RkfCQ+BPS8GDPq+go7GBIniOtGlUCyGnlMgnv9JiMkHIDLaPBX/rpLR624CPZi7+pQRg4TQCl+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0dF3PDU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0dF3PDU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4355C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758830393;
	bh=JX5qFevywI2EKEdTXnCPC3hRtTq6+DHQ4peMt/fW2BA=;
	h=To:Subject:From:Date:From;
	b=r0dF3PDUr2Z1TXtozbJl+eWplsdOEImx+Yu4+d3QNpFwKARokfxe/7CvhqF/VY0rn
	 C4SLJR4cw2FFrl9P7QW3guCFhRVc1LmrK999OVpC27ctS1DvA+ue057qy21oOlO50f
	 xlxhZoNfoORI2bUaNhU+gSv+auMMpTuS9pAKcXS7cODsyRyNWNiy2tI6wgsKiwKB6k
	 cbzX4Kf9O5IOKD1aeRUvBHss88Tv9yVrnkVqcB0H0mH4zI26MQtbgJanwbf+6H3qwx
	 iD8kTqC8R/2pWSecVlFmh5+x8vLl6wdLwzRrW+Rq4XPxG+6ZFcQhWfpAuWNJeZA6GS
	 ju6q8EfT2dA1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96832CAC5B9
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175883039358.19412.6198554963155646635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a86f1357bedd68aa348cbdfdbb9156a7be8b2fce9615b5476d3d33d2aba4f39
Date: Thu, 25 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758830393
