Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA09327A919
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757254793; cv=none; b=VPfZ8glPU7rYVV3TSRuSktn3ErRbcfxITVyCBYVXEMpLsdXAStF5+dfO8vy5f6VztTxlQrAmiFBfvSUGVAletfD0ROXSWqHJsM1ZuB+DXDLEsDk9z4VbGeMLQvk6w1x10xMzGGRKAuXE9wI9VjUpeUBTY4rMDPDL38mACU9osCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757254793; c=relaxed/simple;
	bh=KbBdGhWBvXQfzp+Z/ypcRz/g8P5KSrVCO9HWcWcewhQ=;
	h=To:Subject:From:Message-Id:Date; b=VGT/594wusrFGo0AyLv2SRaR7cbTlpyHaqFz1KF9Sri0/D4lJT6J6cLJZM1DJbE+9laxDO1dhEXHv2JRD0w9TgtpaK7GYAGAr3vTZQqzarp0SXWGUFYPAPfSst++FtwLvRQPYzkxCv/D3hIPcXsX7SdAVvCkPJc2E2Rem0J8mog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmOR2mcV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmOR2mcV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D84C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757254793;
	bh=KbBdGhWBvXQfzp+Z/ypcRz/g8P5KSrVCO9HWcWcewhQ=;
	h=To:Subject:From:Date:From;
	b=ZmOR2mcVnto3ICBh2zAPDLhNzqNgUu7TjTm1XypsqWSLlEscWd095IRzhiJPEOLv1
	 AqfxeVSTIDbVJI3lmQ4FI06B13ZTg9rzUSxSsyFY2ZYnGxPl8+3Hq0TsWIJh6uo2sx
	 uIC/U3Lv92ogjuyrxA+NXvdLRLgCLGI77b4BVHJXcHIM/DOWKUdWCS+zGJHmtDPZGF
	 wYVjMX9VMDx6tCRqDS6UkEUpidSKmI/BGZAiAnTOClZIfyrfYwngZvAPyH/qA74STQ
	 g1V8EUHvgC/lzhcXatrwq/4uISialgaPcLalOabky5U+fyl/H5nPZvZxcuiYbCdEQM
	 9Dj+9ehiw5q8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9361BCA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175725479357.1376.16642673552694091308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab592417e5ae086acf0e82db3459c57b63eeafaecb934509e9452e9af3888cc7
Date: Sun, 07 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757254793
