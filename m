Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3362A1D516C
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776136054; cv=none; b=kIpKFCoPkFAr253JfuXkmUc/cizv0t+C+NMOzbSLI/IWKsOmUr3Q6tH+cfp/LMnBzeVRQ4017a/G1eqwYPcrVHI+2gTM7f6wxUV7MO//Hm8pcwfY4XWHlFbY93KXELLog5PL+3dhLEZS+KiEsov7VphTuj+nLEDNS+EzTjn9CCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776136054; c=relaxed/simple;
	bh=mDnLkljzPPa2Mt0Uhkzwwb82ZXZaDC3DhkZ+mBm+Snw=;
	h=To:Subject:From:Message-Id:Date; b=N//dVENEHDxTz5sZNFJKgItR/xoI0TMrm3vaxP9RiTuwzhfVTfgdcGPsOVHRQpdS0dkRwg4FsSGy+b7dMJv7iHyajfGeF4xMJVJUj9XoBIatjAbVHXq+enW9ixQA232wzLYVmkMnONe8sRxfDD2pWtp7XWsDkTll6UeN/kUshrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFKciK+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFKciK+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BECC4C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776136053;
	bh=mDnLkljzPPa2Mt0Uhkzwwb82ZXZaDC3DhkZ+mBm+Snw=;
	h=To:Subject:From:Date:From;
	b=dFKciK+fNLtOOkyVPb8ntJMTs2hYpoPfF0zkag2al0VE9KE0MoPzj0WLtx7ICJe03
	 cAEX1MScPGMK7hvMACu4DG0343gpzHlAwBtvoUEwjWd+Vx6XOmG9lyBlfC+V+Iz7g+
	 k8WJ96uvllHEmo9x3yK3C+axwD56FVO6bLcI9i4E1fqPNGDH6KnDGaDjNNXCb5X9D7
	 m+6YXVhj7oK/pzb7HFr+ObYqYnxAzE9ZH81hzG/A6Gj6ZYMSuZZYGuTySBjewPZn0k
	 TU8C/yijYoO82DHxS7WOTYiujwtBTBpyC+GNoKhsx/bPbYQIsf8LyfpVt6wtuouUcW
	 y5ZA3rpyEbyvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA03F531E3
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177613605368.4929.10577371692847461721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d51464012c31fffbf19ccdad178b6fd5f1fee9676473d9613e5a7e3d4f25cd3
Date: Tue, 14 Apr 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776136053
