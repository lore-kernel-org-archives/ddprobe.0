Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B377AD4B
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755985794; cv=none; b=dTIZWmjfnPX991t7BGzmO5PPm2tf7cewHX0GxuO0Sj81H9xltXAf8W90XnRaR3fA8YNujgvJsWlqKF5KPjdzrmFKlFwQnje8iKQ64lfgvMKkalUGiljw13eN7Y7o1iycEJDx7wUgNqaQRo5WcGyOL+TEYeVRWcx9Iirp7dnWLHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755985794; c=relaxed/simple;
	bh=kDU6X8RhsgQQIDLUAyq3N4HPLsyvv/utkB18V8foTCk=;
	h=To:Subject:From:Message-Id:Date; b=JqJB72mB+TwbILmD/GFDTqwMxUv3gzBUIGCBmWw5XOgONfKcPolRw0+OwCyS+Ho6+4CfNmBz2PBsflPaPVf03wD/rMzxBk/n6k+VsAjs/p0XK9oNVK+z2765B57VCpCykUbpgYGeumfM0LVANt5meQtSGBfd5c+G+qqhOzZxPdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P354bbiT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P354bbiT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30A1C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755985793;
	bh=kDU6X8RhsgQQIDLUAyq3N4HPLsyvv/utkB18V8foTCk=;
	h=To:Subject:From:Date:From;
	b=P354bbiTlqfYb7HHhTvsvZx/KBmxrDFVMm0AHpdP/vkv3px9Z/ioLJPB4kuKHpT/s
	 M63uZLlJIZktIvh68kgPicxyUDFlrY9X2C/OI7L1l9cn2X7HxXmO+NHDDHcgXvBEpZ
	 19HWdVNtFGZToIMWOoxMXWfpO16GKC2W/Zy/Bj8G3nszvHoD4OMIIJnhV7Zgfy/p2U
	 TGzb6pj9Ixiz07iMQdkotnaGZ1gGneUGP3/p7Yqi2s5ZCmwyLGDL6OAnZCA7oeKD6f
	 PG4Fsjy+QXpH2uI5TfhPdgvA7m9AHmzLEV+F4X/h9XWMXbGawPs1loS1AwupCoLK20
	 fWEgdkMYzrFMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F49FCA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175598579357.24543.9971237731115999048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c14883de78e4c3c28752d783d5d37207b1142d949e7a02790dde96d946986ab
Date: Sat, 23 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755985793
